PicoScope 3000 Series MATLAB Generic Instrument Driver Release Notes
====================================================================

Driver Version 1.2.1, 15th April 2015
Beta Driver Version 

Installation
------------

Please refer to the MATLAB Instrument Driver for PicoScope 3000A/B Series guide for installation instructions and how to run the examples.

Note that there is now a PS3000aConfig file used to setup paths and load in the contents of the ps3000aMFile and ps3000aWrapMFile (including enumerations and structures defined in the ps3000aApi.h file in the PS3000a SDK (download from https://www.picotech.com/downloads).

A new Beta package is also included to provide support for PicoScope 3000 Series D and D MSO models.

Fixes
-----

- ps3000aSetBandwidth function fixed.

Known Issues
------------

The streaming example may have an issue with incorrect data being returned - please use the Beta Instrument Driver package for this.

The PS3000A_IC_Generic_Driver_Streaming_MSO example requires Channels C and D to be enabled in order for data to be collected on the digital channels - 2 channel MSO devices are not affected.

32-bit Windows drivers
----------------------

If using the ps3000a_BETA package copy the ps3000a.dll, ps3000aWrap.dll and PicoIpp.dll files from the SDK to the ps3000a_BETA/win32 folder. These can be found in the root directory of the SDK and the SDK Wrapper/Release folders.

Please ensure that the Microsoft Visual C++ 2010 Redistributable (x86) has been installed on the PC. This can be downloaded from https://www.microsoft.com/en-gb/download/details.aspx?id=8328

64-bit Windows drivers
----------------------

64-bit drivers are available in the SDK - please copy the ps3000a.dll (rename to PS3000a.dll if using the PS3000a_IC_drv.mdd file) and PicoIpp.dll from the SDK x64 directory. The 64-bit ps3000aWrap.dll is available from the SDK Wrapper/Release/x64 directory.

Copy the following files from the ps3000a/x64 directory to the ps3000a directory if using the above package:

- PS3000aMFile
- PS3000a_thunk_pcwin64.dll
- ps3000aWrapMFile
- ps3000aWrap_thunk_pcwin64.dll

If using the ps3000a_BETA package copy the ps3000a.dll, ps3000aWrap.dll and PicoIpp.dll files from the SDK to the ps3000a_BETA/win64 folder.

Microsoft Windows SDK 7.1 will need to be installed on your PC. Please see the following web page for further information:

http://www.mathworks.com/matlabcentral/answers/101105

Please ensure that the Microsoft Visual C++ 2010 Redistributable (x64) has been installed on the PC. This can be downloaded from http://www.microsoft.com/en-gb/download/details.aspx?id=13523

64-bit Linux drivers
--------------------

Support for Linux 64-bit versions of MATLAB is also provided (version R2014b is recommended):

Copy the following files from the ps3000a/glnxa64 directory to the ps3000a directory:

- PS3000aMFile
- ps3000aWrapMFile

Download the libps3000a and libpswrappers packages using the instructions found at:

http://www.picotech.com/linux.html

Please e-mail support@picotech.com in order to obtain the following thunk files:

- PS3000a_thunk_glnxa64.so
- ps3000aWrap_thunk_glnxa64.so

These will need to be copied into the ps3000a directory.

Additional Information
----------------------

In the ps3000a_BETA package, there is an html folder containing published examples showing data collection.

Contact
-------

Please send any questions, comments and feedback to support@picotech.com


Change Revision
---------------

1. Version 1.0 Release, 7th November 2012
2. Update to readme for Programmer's Guide and 64-bit drivers.
3. Updated examples and driver file, 6th June 2012
4. Fixed ps3000aSetBandwidthFilter and added 64-bit Linux support
5. Added Beta version to support new PicoScope 3000 D and D MSO devices.
