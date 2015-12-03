%% P34000A_IC_BLOCK_TEST
% Example script showing how to capture block data with PicoScope 3000
% Series

PS3000aConfig

ps3000aDeviceObj = icdevice('picotech_ps3000a_generic.mdd', '');
connect(ps3000aDeviceObj)

for i = 0:3
   status = invoke(ps3000aDeviceObj,'ps3000aSetChannel', i, 0, 0, 0, 0);
end


timebase = 1;
set(ps3000aDeviceObj, 'timebase', timebase);
[status, timeIntervalNanoSeconds, maxSamples] = invoke(ps3000aDeviceObj, 'ps3000aGetTimebase2', timebase, 0);

digitalObj = get(ps3000aDeviceObj,'Digital')
status = invoke(digitalObj, 'ps3000aSetDigitalPort', evalin('base', 'ps3000aEnuminfo.enPS3000ADigitalPort.PS3000A_DIGITAL_PORT0'), 1, 2.5)
status = invoke(digitalObj, 'ps3000aSetDigitalPort', evalin('base', 'ps3000aEnuminfo.enPS3000ADigitalPort.PS3000A_DIGITAL_PORT1'), 0, 0)
blockObj = get(ps3000aDeviceObj, 'Block');
blockObj = blockObj(1);
[status] = invoke(blockObj, 'runBlock', 0);

[numSamples, overflow, portD0, portD1] = invoke(digitalObj, 'getDigitalBlockData', 0, 0, 1, 0);

[status] = invoke(ps3000aDeviceObj, 'ps3000aStop');

D0 = zeros(numSamples, 8);

disp('Converting decimal data into binary array')
for sample = 1:numSamples

    D0(sample,:)= bitget(portD0(sample), 8:-1:1, 'int16');
end

%% Plot data

scrsz = get(0,'ScreenSize');
figure1 = figure('Name','PicoScope 3000 Demonstration - Digital Block Mode Capture', ...
    'NumberTitle','off');

axes1 = axes('Parent', figure1);
title(axes1, 'PicoScope 3000 Digital Demonstration', 'FontWeight', 'Bold');

% Calculate time (nanoseconds) and convert to milliseconds
% Use timeIntervalNanoSeconds output from ps5000aGetTimebase or
% ps5000aGetTimebase2 or calculate from Programmer's Guide.

timeNs = double(timeIntervalNanoSeconds) * double([0:numSamples - 1]);
timeMs = timeNs / 1e6;


for i = 0:7
subplot(4,2,i+1); 
plot(timeMs, D0(:,(8 - i)));
title(strcat('Digital Channel D', num2str(i)), 'FontWeight', 'bold');
xlabel('Time (ms)');
ylabel('Logic Level');
axis([-inf, inf, -0.5,1.5])
end



%% Disconnect
disconnect(ps3000aDeviceObj);
