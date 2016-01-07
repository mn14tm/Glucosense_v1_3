function [laserCurrent, decay_ms] = plotData()


% Get data files in directory
dataFiles = dir('*.MAT');
% [FileName,PathName,FilterIndex] = uigetfile('*.MAT')

fprintf('Loading Data...\n\n');
i = 0;
for file = dataFiles'
    i = i+1; 
    % csv = load(file.name);
    
    fprintf('%s \n', file.name);
    
    load(file.name);

    laserCurrent(i) = str2num(info.laserCurrent(1:end-2));
    decay_ms(i) = result.decay_ms;

end

clf;
plot(laserCurrent, decay_ms, '.'),
xlabel('Current (mA)'), ylabel('Lifetime (ms)')
title('Lifetime vs Pumping intensity')
%

fprintf('Done!\n\n');
end
    