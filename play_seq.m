function play_seq(seq,instru1,instru2)
	x = [];
	cellseq = cellstr(seq);
	instru1=char(instru1);
	instru2=char(instru2);
	for i = 1:length(seq)
		filename=strcat('src/',instru1,'/',instru1,'_',char(cellseq(i)));
		[y,fs]=audioread(filename);
		x = [x y'];
	end
	soundsc(x, fs);
end
