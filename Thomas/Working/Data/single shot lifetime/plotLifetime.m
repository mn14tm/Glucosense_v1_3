function plotLifetime()

clf;
% Get data files in directory
dataFiles = dir('*.MAT');
% [FileName,PathName,FilterIndex] = uigetfile('*.MAT')

colorVec = hsv(length(dataFiles));  % Colours for line plots

fprintf('Loading Data...\n\n');
i = 0;
for file = dataFiles'
    i = i+1; 
    
    fprintf('%s \n', file.name);
    
    load(file.name);

    laserCurrent(i) = str2num(info.laserCurrent(1:end-2));
    decay_ms(i) = result.decay_ms;
    
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

    t = xdata * 1e3;
    decay = ydata - min(ydata);
    % semilogy(t, decay', '.', 'color',colorVec(i,:));
    plot(t, decay', '.', 'color',colorVec(i,:));
    hold on;

end

title('Lifetime with 500us pump')

xlabel('Time (ms)'); 
ylabel('PL Intensity (A.U.)');
xlim([0,50]); 

fprintf('Done!\n\n');
end
    