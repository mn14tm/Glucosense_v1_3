function temp = getsingltemp();
%function temp = getsingltemp();

% Setup paths
addpath('win64')
addpath('C:\Program Files\Pico Technology\SDK\lib')

%% Load enumeration and structure info

[usbtc08Methodinfo, usbtc08Structs, usbtc08Enuminfo, usbtc08ThunkLibName] = usbtc08MFile; 

%% Load library

loadlibrary('usbtc08.dll', @usbtc08MFile);

if ~libisloaded('usbtc08')
    error('library usbtc08.dll or usbtc08.h not found') %check if the library is loaded
end

%% Define Buffers

pBuffer = libpointer('singlePtr',zeros(9,1));
pOverflow = libpointer('int16Ptr',zeros(1,1));

%% Open unit and display info

usbtc08_obj = calllib('usbtc08', 'usb_tc08_open_unit');

%% Configure device

% Enable Cold Junction and Channel 1
status = calllib('usbtc08', 'usb_tc08_set_channel', usbtc08_obj, 0, int8('K'));     %cold junct
status = calllib('usbtc08', 'usb_tc08_set_channel', usbtc08_obj, 1, int8('K'));     %ch1

% Set mains filter to 50Hz
status = calllib('usbtc08', 'usb_tc08_set_mains', usbtc08_obj, 0);

%% Capture data

% Get single temperature
[status, pBuffer, pOverflow] = calllib('usbtc08','usb_tc08_get_single', usbtc08_obj, pBuffer, pOverflow, 0);
temp = pBuffer(2);

%% Close connection to unit and unload library

exit = calllib('usbtc08', 'usb_tc08_close_unit', usbtc08_obj);

unloadlibrary('usbtc08');

%% Remove paths
rmpath('win64')
rmpath('C:\Program Files\Pico Technology\SDK\lib')

end