function [xdata,ydata] = truncateData(filename)

%filename
load(filename);
%load 20150721-0001.mat;

plot_on = 0;

t = [Tstart : Tinterval : Tstart + (Length-1) * Tinterval]';
Treject = 400e-6;                                     % Throw away samples in first Treject after falling edge of laser pulse
%Treject = 1e-3;
index = find(t>=Treject,1);                           % Find location of first time point which >= Treject       
data = average_A_(index:Length);                      % Truncate data
t_plot = t(index:Length);                             % Truncate time - used for plot only
t_trun = [0:Tinterval:(length(data)-1)*Tinterval]';   % Truncate time - starting at 0

xdata = t_trun;
%xdata = t_plot;
ydata = data;
