function []=playnote(pitch,instru)
	fprintf('%d\n',instru);
	switch instru
		case 1
			[y,fs]=audioread('src/Piano.mf.B3_cut');
		case 2
			[y,fs]=audioread('src/flute1.wav');
		otherwise
			[y,fs]=audioread('src/Piano.mf.B3_cut');
	end
	sound(y,fs);
end
