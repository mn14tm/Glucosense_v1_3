clc; clear all;
allFiles = dir('*.MAT');

% Load data from all asc files in directory
i = 0;
    for file = allFiles'
        i = i+1;    % Exit loop equalling number of files
        a = load(file.name);
        
        t_singleExp(i,1) = a.result.decay_ms;
        
        t1(i,1) = a.result.doubleExp(1);
        t2(i,1) = a.result.doubleExp(3);
        A1(i,1) = a.result.doubleExp(2);
        A2(i,1) = a.result.doubleExp(4);
        
        sample(i,:) = a.info.sample;
        medium(i,:) = a.info.medium;
        concentration(i,1) = a.info.concentration;
        timestamp(i,:) = a.info.timestamp;
        
        A_ratio(i,1) = A1(i,1)/A2(i,1);
        T_ratio(i,1) = t1(i,1)/t2(i,1);
        
    end
    
T = table(sample,medium,concentration,timestamp,t_singleExp,t1,t2,A1,A2,A_ratio,T_ratio)
writetable(T,'tabledata.xlsx')
%     data = [t_singleExp,t1,t2,A1,A2]