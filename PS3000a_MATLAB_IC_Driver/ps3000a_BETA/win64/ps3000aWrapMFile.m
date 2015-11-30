function [methodinfo,structs,enuminfo,ThunkLibName]=ps3000aWrapMFile
%PS3000AWRAPMFILE Create structures to define interfaces found in 'ps3000aWrap'.

%This function was generated by loadlibrary.m parser version  on Thu Apr  2 14:06:28 2015
%perl options:'ps3000aWrap.i -outfile=ps3000aWrapMFile.m -thunkfile=ps3000aWrap_thunk_pcwin64.c -header=ps3000aWrap.h'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival,'thunkname', ival);
MfilePath=fileparts(mfilename('fullpath'));
ThunkLibName=fullfile(MfilePath,'ps3000aWrap_thunk_pcwin64');
% extern int16_t __stdcall AutoStopped ( uint16_t deviceIndex ); 
fcns.thunkname{fcnNum}='int16uint16Thunk';fcns.name{fcnNum}='AutoStopped'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'uint16'};fcnNum=fcnNum+1;
% extern uint32_t __stdcall AvailableData ( uint16_t deviceIndex , uint32_t * startIndex ); 
fcns.thunkname{fcnNum}='uint32uint16voidPtrThunk';fcns.name{fcnNum}='AvailableData'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'uint32Ptr'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall ClearTriggerReady ( uint16_t deviceIndex ); 
fcns.thunkname{fcnNum}='uint32uint16Thunk';fcns.name{fcnNum}='ClearTriggerReady'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall decrementDeviceCount ( uint16_t deviceIndex ); 
fcns.thunkname{fcnNum}='uint32uint16Thunk';fcns.name{fcnNum}='decrementDeviceCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16'};fcnNum=fcnNum+1;
% extern uint16_t __stdcall getDeviceCount ( void ); 
fcns.thunkname{fcnNum}='uint16voidThunk';fcns.name{fcnNum}='getDeviceCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint16'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall GetStreamingLatestValues ( uint16_t deviceIndex ); 
fcns.thunkname{fcnNum}='uint32uint16Thunk';fcns.name{fcnNum}='GetStreamingLatestValues'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall initWrapUnitInfo ( int16_t handle , uint16_t * deviceIndex ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrThunk';fcns.name{fcnNum}='initWrapUnitInfo'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint16Ptr'};fcnNum=fcnNum+1;
% extern int16_t __stdcall IsReady ( uint16_t deviceIndex ); 
fcns.thunkname{fcnNum}='int16uint16Thunk';fcns.name{fcnNum}='IsReady'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'uint16'};fcnNum=fcnNum+1;
% extern int16_t __stdcall IsTriggerReady ( uint16_t deviceIndex , uint32_t * triggeredAt ); 
fcns.thunkname{fcnNum}='int16uint16voidPtrThunk';fcns.name{fcnNum}='IsTriggerReady'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='int16'; fcns.RHS{fcnNum}={'uint16', 'uint32Ptr'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall RunBlock ( uint16_t deviceIndex , int32_t preTriggerSamples , int32_t postTriggerSamples , uint32_t timebase , uint32_t segmentIndex ); 
fcns.thunkname{fcnNum}='uint32uint16int32int32uint32uint32Thunk';fcns.name{fcnNum}='RunBlock'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int32', 'int32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setAppAndDriverBuffers ( uint16_t deviceIndex , int16_t channel , int16_t * appBuffer , int16_t * driverBuffer , int32_t bufferLength ); 
fcns.thunkname{fcnNum}='uint32uint16int16voidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='setAppAndDriverBuffers'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16', 'int16Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setMaxMinAppAndDriverBuffers ( uint16_t deviceIndex , int16_t channel , int16_t * appMaxBuffer , int16_t * appMinBuffer , int16_t * driverMaxBuffer , int16_t * driverMinBuffer , int32_t bufferLength ); 
fcns.thunkname{fcnNum}='uint32uint16int16voidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='setMaxMinAppAndDriverBuffers'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16', 'int16Ptr', 'int16Ptr', 'int16Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setAppAndDriverDigiBuffers ( uint16_t deviceIndex , int16_t digiPort , int16_t * appDigiBuffer , int16_t * driverDigiBuffer , int32_t bufferLength ); 
fcns.thunkname{fcnNum}='uint32uint16int16voidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='setAppAndDriverDigiBuffers'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16', 'int16Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setMaxMinAppAndDriverDigiBuffers ( uint16_t deviceIndex , int16_t digiPort , int16_t * appMaxDigiBuffer , int16_t * appMinDigiBuffer , int16_t * driverMaxDigiBuffer , int16_t * driverMinDigiBuffer , int32_t bufferLength ); 
fcns.thunkname{fcnNum}='uint32uint16int16voidPtrvoidPtrvoidPtrvoidPtrint32Thunk';fcns.name{fcnNum}='setMaxMinAppAndDriverDigiBuffers'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16', 'int16Ptr', 'int16Ptr', 'int16Ptr', 'int16Ptr', 'int32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setChannelCount ( uint16_t deviceIndex , int16_t channelCount ); 
fcns.thunkname{fcnNum}='uint32uint16int16Thunk';fcns.name{fcnNum}='setChannelCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setEnabledChannels ( uint16_t deviceIndex , int16_t * enabledChannels ); 
fcns.thunkname{fcnNum}='uint32uint16voidPtrThunk';fcns.name{fcnNum}='setEnabledChannels'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16Ptr'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setDigitalPortCount ( uint16_t deviceIndex , int16_t digitalPortCount ); 
fcns.thunkname{fcnNum}='uint32uint16int16Thunk';fcns.name{fcnNum}='setDigitalPortCount'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall setEnabledDigitalPorts ( uint16_t deviceIndex , int16_t * enabledDigitalPorts ); 
fcns.thunkname{fcnNum}='uint32uint16voidPtrThunk';fcns.name{fcnNum}='setEnabledDigitalPorts'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'uint16', 'int16Ptr'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall SetPulseWidthQualifier ( int16_t handle , uint32_t * pwqConditionsArray , int16_t nConditions , uint32_t direction , uint32_t lower , uint32_t upper , uint32_t type ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrint16uint32uint32uint32uint32Thunk';fcns.name{fcnNum}='SetPulseWidthQualifier'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint32Ptr', 'int16', 'uint32', 'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall SetPulseWidthQualifierV2 ( int16_t handle , uint32_t * pwqConditionsArrayV2 , int16_t nConditions , uint32_t direction , uint32_t lower , uint32_t upper , uint32_t type ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrint16uint32uint32uint32uint32Thunk';fcns.name{fcnNum}='SetPulseWidthQualifierV2'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint32Ptr', 'int16', 'uint32', 'uint32', 'uint32', 'uint32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall SetTriggerConditions ( int16_t handle , uint32_t * conditionsArray , int16_t nConditions ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrint16Thunk';fcns.name{fcnNum}='SetTriggerConditions'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint32Ptr', 'int16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall SetTriggerConditionsV2 ( int16_t handle , uint32_t * conditionsArray , int16_t nConditions ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrint16Thunk';fcns.name{fcnNum}='SetTriggerConditionsV2'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint32Ptr', 'int16'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall SetTriggerProperties ( int16_t handle , uint32_t * propertiesArray , int16_t nProperties , int32_t autoTrig ); 
fcns.thunkname{fcnNum}='uint32int16voidPtrint16int32Thunk';fcns.name{fcnNum}='SetTriggerProperties'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}={'int16', 'uint32Ptr', 'int16', 'int32'};fcnNum=fcnNum+1;
% extern PICO_STATUS __stdcall resetNextDeviceIndex ( void ); 
fcns.thunkname{fcnNum}='uint32voidThunk';fcns.name{fcnNum}='resetNextDeviceIndex'; fcns.calltype{fcnNum}='Thunk'; fcns.LHS{fcnNum}='uint32'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
structs.tWrapUnitInfo.members=struct('handle', 'int16', 'channelCount', 'int16', 'enabledChannels', 'int16#4', 'digitalPortCount', 'int16', 'enabledDigitalPorts', 'int16#4', 'ready', 'int16', 'numSamples', 'int32', 'startIndex', 'uint32', 'overflow', 'int16', 'triggeredAt', 'uint32', 'triggered', 'int16', 'autoStop', 'int16', 'driverBuffers', 'int16PtrPtr', 'appBuffers', 'int16PtrPtr', 'bufferLengths', 'int32#4', 'driverDigiBuffers', 'int16PtrPtr', 'appDigiBuffers', 'int16PtrPtr', 'digiBufferLengths', 'int32#4');
enuminfo.enPS3000AWrapDigitalPortIndex=struct('PS3000A_WRAP_DIGITAL_PORT0',0,'PS3000A_WRAP_DIGITAL_PORT1',1);
methodinfo=fcns;