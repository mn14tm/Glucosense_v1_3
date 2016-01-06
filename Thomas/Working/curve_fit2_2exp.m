function [decay_ms, decay_ms2 standd] = curve_fit2_2exp(xdata,ydata)

% xdata is the time variable: timedata
% ydata is the response: buffer_a_mv_mean

if (min(ydata) < 0)
    ydata = ydata - min(ydata);
end

clf;
subplot(2,1,1); plot(xdata,ydata,'b')

expfun = @(p,xdata) p(1).*exp(-xdata./p(2)) + p(3).*exp(-xdata./p(4)); % Objective Funciton

SSECF  = @(p) sum((ydata - expfun(p,xdata)).^2); % Sum-Squared-Error Cost Function

%initial guess for parameters
p1_guess = max(ydata)-min(ydata);
p2_guess = 0.01;
p3_guess =  max(ydata)-min(ydata);
p4_guess = 0.01;
p5_guess = min(ydata);

pguess = [p1_guess; p2_guess; p3_guess; p4_guess];

options = optimset( 'Display','notify', ...
                    'MaxFunEvals',1000, ...
                    'MaxIter',1000, ...
                    'TolFun',1e-8, ...
                    'TolX',1e-8, ...
                    'FunValCheck','off', ...
                    'OutputFcn',[], ...
                    'PlotFcns',[] );

[p,fminres,exitflag,output] = fminsearch(SSECF ,pguess,options);
p

yfitted = expfun(p,xdata);

hold on
plot(xdata,yfitted,'r')

fminres2=sum((ydata-yfitted).^2);

res = ydata-yfitted;

standd = std(res);

fprintf('Std = %.3f\n',standd);

subplot(2,1,2); plot(xdata,res); %axis([0 0.05 -0.2 0.2]);

%chi-squared value - Todo: need to finish
%sum(((abs(ydata-yfitted)).^2)./yfitted)/(length(xdata)-3)

decay_ms = p(2)*1000;
decay_ms2 = p(4)*1000;

fprintf('Decay ms 1 = %.3f\n',decay_ms);
fprintf('Decay ms 2 = %.3f\n',decay_ms2);

end

