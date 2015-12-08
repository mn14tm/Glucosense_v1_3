function plotData()

clear all; clc; 

clf;

%% Load data in CD
% Get data files in directory
dataFiles = dir('*.MAT');
% [FileName,PathName,FilterIndex] = uigetfile('*.MAT')

fprintf('Loading Data...\n\n');
i = 0;
for file = dataFiles'
    i = i+1; 
    
    fprintf('%s \n', file.name);
    
    load(file.name);

    laserCurrent(i) = info.laserCurrent;

    %convert to ms
    t_curvefit_start = 0.25;
    t_curvefit_stop = 2;
    t_curvefit_stop = info.laserPulsePeriod - info.laserPulseWidth - t_curvefit_stop;
    
    t_curvefit_start = (t_curvefit_start) * 1e-3;
    t_curvefit_stop = (t_curvefit_stop) * 1e-3;
    
    %truncate data
    t_samp = (double(timeIntNs1))*1e-9;
    t_trun_start = ceil(t_curvefit_start/t_samp) + 1;
    t_trun_stop = floor(t_curvefit_stop/t_samp);
    
    ydata = buffer_a_mv_mean(t_trun_start:t_trun_stop);
    xdata = 0:t_samp:((length(ydata)-1)*t_samp);
    
   decay(i,:) = ydata - min(ydata);
%     decay(i,:) = ydata;
    t = xdata * 1e3;
end

%% Plot data
semilogy(t, decay', '.');
xlabel('Time (ms)'); ylabel('PL Intensity (A.U.)');
title('Steady state decay (100ms pumped) for varying pump powers (mA).');
legend(int2str(laserCurrent'));

fprintf('Done!\n\n');
end
    