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
%	fs = 44100;
%	n = 1.0 * fs;
%	t = [0:n-1]/fs;
%	x = cos(2*pi*f*t);
%	env=interp1([0,0.033,0.1,0.37,1.0],[0,1,0.4,0.4,0],t);
%	x = env .* x;
	sound(y,fs);
end
