function [decay_ms, standd] = curve_fit2(xdata,ydata)

if (min(ydata) < 0)
    ydata = ydata - min(ydata);
end

clf;
subplot(2,1,1); plot(xdata,ydata,'b')

f = @(p) sum((ydata - (p(1) + (p(2)*exp(-xdata/p(3))))).^2);

%initial guess for parameters
p1_guess = min(ydata);
p2_guess = max(ydata)-min(ydata);
p3_guess = 0.01;

pguess = [p1_guess; p2_guess; p3_guess];

options = optimset( 'Display','notify', ...
                    'MaxFunEvals',1000, ...
                    'MaxIter',1000, ...
                    'TolFun',1e-8, ...
                    'TolX',1e-8, ...
                    'FunValCheck','off', ...
                    'OutputFcn',[], ...
                    'PlotFcns',[] );

[p,fminres,exitflag,output] = fminsearch(f,pguess,options);

yfitted = p(1) + (p(2)*exp(-xdata/p(3)));

hold on
plot(xdata,yfitted,'r')

fminres2=sum((ydata-yfitted).^2);

res = ydata-yfitted;

standd = std(res);

fprintf('Std = %.3f\n',standd);

subplot(2,1,2); plot(xdata,res); %axis([0 0.05 -0.2 0.2]);

%chi-squared value - Todo: need to finish
%sum(((abs(ydata-yfitted)).^2)./yfitted)/(length(xdata)-3)

decay_ms = p(3)*1000;

fprintf('Decay ms = %.3f\n',decay_ms);

end

