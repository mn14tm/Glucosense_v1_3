clc; clear all;
allFiles = dir('./Data/*.MAT');

% Load data from all asc files in directory
i = 0;
    for file = allFiles'
        file.name
        i = i+1;    % Exit loop equalling number of files
        a = load(file.name);
        
        t_singleExp(i,1) = a.result.decay_ms;
        
        l1 = a.result.doubleExp(1);
        l2 = a.result.doubleExp(3);
        
        if l1<l2
            t1(i,1) = a.result.doubleExp(1);
            t2(i,1) = a.result.doubleExp(3);
            A1(i,1) = a.result.doubleExp(2);
            A2(i,1) = a.result.doubleExp(4);
        else
            t1(i,1) = a.result.doubleExp(3);
            t2(i,1) = a.result.doubleExp(1);
            A1(i,1) = a.result.doubleExp(4);
            A2(i,1) = a.result.doubleExp(2);
        end
        
        sample(i,:) = cellstr(a.info.sample);
        medium(i,:) = cellstr(a.info.medium);
        concentration(i,1) = str2num(a.info.concentration);
        timestamp(i,:) = cellstr(a.info.timestamp);
        
        A_ratio(i,1) = A1(i,1)/A2(i,1);
        T_ratio(i,1) = t1(i,1)/t2(i,1);
        
    end
    
T = table(sample,medium,concentration,timestamp,t_singleExp,t1,t2,A1,A2,A_ratio,T_ratio)
writetable(T,'tabledata.xlsx');
%     data = [t_singleExp,t1,t2,A1,A2]