function []=playnote(pitch,instru1,instru2)
	instru1=char(instru1);
	instru2=char(instru2);
	instru1File=strcat('./src/',instru1,'/',instru1,'_',pitch);
	instru2File=strcat('./src/',instru2,'/',instru2,'_',pitch);
	[y1,fs1]=audioread(instru1File);
	[y2,fs2]=audioread(instru2File);
	soundsc(y1,fs1);
end
