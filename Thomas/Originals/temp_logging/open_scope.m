%open_scope.m

global ps3000a_obj;

% Set path to dlls and functions
addpath('..\');
addpath('..\Functions');
addpath('win64');

% Create device
ps3000a_obj = icdevice('PS3000a_IC_drv', ''); % Specify serial number as 2nd argument if required.

% Connect device
connect(ps3000a_obj);

