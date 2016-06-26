function []=playnote(pitch,instru1,instru2)
	instru1=char(instru1);
	instru2=char(instru2);
	instru1File=strcat('./src/',instru1,'/',instru1,'_',pitch);
	instru2File=strcat('./src/',instru2,'/',instru2,'_',pitch);
	[y1,fs1]=audioread(instru1File);
	douChaFlag=0;
	[m,n]=size(y1);
	if min([m,n]) > 1
		douChaFlag=1;
	end
	if m > n
		y1=y1';
	end
	y1=resample(y1,44100,fs1);
	y1(1,:)=100*y1(1,:)/max(abs(y1(1,:)));
	if douChaFlag==1
		y1(2,:)=100*y1(2,:)/max(abs(y1(2,:)));
	end
	douChaFlag=0;
	[y2,fs2]=audioread(instru2File);
	[m,n]=size(y2);
	if min([m,n]) > 1
		douChaFlag=1;
	end
	if m > n
		y2=y2';
	end
	y2=resample(y2,44100,fs2);
	y2(1,:)=100*y2(1,:)/max(abs(y2(1,:)));
	if douChaFlag==1
		y2(2,:)=100*y2(2,:)/max(abs(y2(2,:)));
	end
	len=min([length(y1),length(y2)]);
	y1=y1(1:len);
	y2=y2(1:len);
	soundsc(y1 + y2,44100);
end
