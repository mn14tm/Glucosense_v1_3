function runseq(save_file)
%function runseq(save_file)

for i=1:840
    i
    pause(60);
    [decay_ms(i), standd(i)] = capture()
end

save_file = [save_file '.txt'];

dlmwrite(save_file,[decay_ms' standd'],'delimiter',',')

end