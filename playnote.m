function []=playnote(pitch,instru)
	instru=char(instru);
	filename=strcat('./src/',instru,'/',instru,'_',pitch);
	[y,fs]=audioread(filename);
	soundsc(y,fs);
end
