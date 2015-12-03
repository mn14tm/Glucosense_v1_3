function runseq(save_file)
%function runseq(save_file)

save_file = [save_file '.MAT'];

i = 0;
tic;

while 1
    
    i = i+1;
    fprintf('****************\n');
    fprintf('Loop number %d\n',i);
    if i==1
        t(i) = toc;
        tic;
    else
        t(i) = t(i-1) + toc;
        tic;
    end

    for k = 1:10
        val(k) = getsingletemp;
    end
    temp(i) = mean(val);
    
    fprintf('Temperature = %f\n',temp(i));
    [decay_ms(i), standd(i)] = capture();

    save(save_file, 't', 'temp', 'decay_ms', 'standd');
    
    fprintf('Pausing....\n');
    pause(50);
    
end

end