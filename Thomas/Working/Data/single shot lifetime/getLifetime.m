function getLifetime()

% Get data files in directory
dataFiles = dir('*.MAT');
% [FileName,PathName,FilterIndex] = uigetfile('*.MAT')

fprintf('Loading Data...\n\n');
fprintf('Chip\tLifetime\n');
i = 0;
for file = dataFiles'
    i = i+1; 
    
    load(file.name);

    % laserCurrent(i) = str2num(info.laserCurrent(1:end-2));
    chip = info.sample;
    lifetime = result.decay_ms;
    
    fprintf('%s\t%f\n', chip, lifetime);

end

fprintf('\n\nDone!\n\n');
end
    