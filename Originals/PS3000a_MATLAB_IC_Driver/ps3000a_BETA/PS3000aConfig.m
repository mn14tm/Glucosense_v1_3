%% PS3000ACONFIG
% Contains configuration data for setting parameters for a PicoScope 3000
%   Oscilloscope device.
%
%   Run this script in the MATLAB environment prior to connecting to the 
%   device.
%
%   This file can be edited to suit the application requirements.

%% SETUP PATH
% Set paths according to the operating system and architecture.
% For Windows and Mac-based versions of MATLAB, it is recommended to copy 
% the driver files into the the sub-folder corresponding to the 
% architecture e.g. win32 for 32-bit versions of MATLAB.
% For Linux versions of MATLAB, please follow the instructions to install
% the libps3000a and libpswrappers packages from http://www.picotech.com/linux.html

% Identify architecture

archStr = computer('arch');

try

    addpath(strcat('./', archStr, '/'));
    
catch err
    
    error('Operating system not supported please contact support@picotech.com');
    
end


% Set path to the Functions folder, PicoStatus.m and PicoConstants.m files
% Path to drivers on Linux operating systems will also be set.

% Ensure path to drivers and supporting files are set correctly
if(isunix)
    
    addpath('../Functions');	% Common functions
	    
    if(~ismac) % Linux
        
        addpath('/opt/picoscope/lib/'); %Edit to specify location of .so files or place .so files in same directory
        
    end
    
else
    
    % Microsoft Windows operating system
    addpath(''); % Edit to specify location of dll files or place dlls in the same directory
    addpath('..\Functions');
    
end

addpath('..\Functions');    % Common functions

addpath('..');              % PicoStatus.m & PicoConstants.m

%% LOAD ENUMS AND STRUCTURES

% Load in enumerations and structure information - DO NOT EDIT THIS SECTION
[ps3000aMethodinfo, ps3000aStructs, ps3000aEnuminfo, ps3000aThunkLibName] = ps3000aMFile; 

[ps3000aWrapMethodinfo, ps3000aWrapStructs, ps3000aWrapEnuminfo, ps3000aWrapThunkLibName] = ps3000aWrapMFile;

%% PICOSCOPE SETTINGS
% Define Settings for PicoScope 3000 series.




%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Filename:    PS3000aConfig.m
%
% Copyright:   Pico Technology Limited 2013 - 2015
%
% Author:      HSM
%
% Description:
%   
%   Contains configuration data for setting parameters for a PicoScope 3000
%   Oscilloscope device.
%
%   Run this script in the MATLAB environment prior to connecting to the 
%   device.
%
%   This file can be edited to suit the application requirements.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%