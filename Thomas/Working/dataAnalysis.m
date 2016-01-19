t_curvefit_start = 2;
t_curvefit_stop = 2;

t_curvefit_stop = info.laserPulsePeriod - info.laserPulseWidth - t_curvefit_stop;
t_curvefit_stop = (t_curvefit_stop) * 1e-3;

%convert to ms
t_curvefit_start = t_curvefit_start * 1e-3;
%truncate data
t_samp = (double(timeIntNs1))*1e-9;
t_trun_start = ceil(t_curvefit_start/t_samp) + 1;
t_trun_stop = floor(t_curvefit_stop/t_samp);
ydata = buffer_a_mv_mean(t_trun_start:t_trun_stop);
xdata = 0:t_samp:((length(ydata)-1)*t_samp);
xdata = xdata';
plot(xdata,ydata)
ydata_mean = ydata;
ydata = buffer_a_mv(t_trun_start:t_trun_stop,:);
for i = 1:100
    [decay_ms(i), standd(i)] = curve_fit2(xdata,ydata(:,i));
end
[decay_ms_mean, standd_mean] = curve_fit2(xdata,ydata_mean);