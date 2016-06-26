function play_seq(seq,instru)
	x = [];
	cellseq = cellstr(seq);
	instru=char(instru);
	for i = 1:length(seq)
		filename=strcat('src/',instru,'/',instru,'_',char(cellseq(i)));
		[y,fs]=audioread(filename);
		x = [x y'];
	end
	soundsc(x, fs);
end
