function plotUpconverstion(directory)

clf;

%% Load data in CD
% Get data files in directory
% directory = 'T28';
directory = directory{1};

dataFiles = dir(fullfile('.\', directory,'*.MAT'));
% [FileName,PathName,FilterIndex] = uigetfile('*.MAT')

fprintf('Loading Data...\n\n');

colorVec = hsv(length(dataFiles));  % Colours for line plots

i = 0;
for file = dataFiles'
    i = i+1;

    f = fullfile(directory, file.name);
%     fprintf('%s \n', f);

    load(f);

    laserCurrent(i) = info.laserCurrent;

    %convert to ms
    t_curvefit_start = 1;
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

%    decay(i,:) = ydata - min(ydata);

%     decay(i,:) = ydata;
    t = xdata * 1e3;
    decay = ydata - min(ydata);
    % semilogy(t, decay', '.', 'color',colorVec(i,:));
    plot(t, decay', '.', 'color',colorVec(i,:));
    hold on;
end

%% Plot data

% semilogy(t, decay', '.');
xlabel('Time (ms)'); 
ylabel('PL Intensity (A.U.)');
xlim([0,50]); 
%ylim([0.1, 1E4]);

str = sprintf('Steady state decay (100ms pumped) for varying pump powers (mA).Chip %s.', directory);
title(str);

% Legend
h = legend(int2str(laserCurrent'));
% v = get(h,'title');
% set(v,'string','Pump power (mA)');

print( directory, '-dpng', '-r600');

% disp('Press a key !')
% pause;

fprintf('Done!\n\n');

close

end
    