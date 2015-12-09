function loopFolders()
clear all; clc; 

% Get list of folders beginning with T

d = dir('T*');
isub = [d(:).isdir]; %# returns logical vector
nameFolds = {d(isub).name}';

for file = nameFolds'
    file
    plotUpconverstion(file);
    fprintf('Next File \n\n');
end

fprintf('Finito!\n\n');

end