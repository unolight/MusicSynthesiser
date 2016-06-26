function []=change_pitch(filename)
	keySet={'B3','C4','Db4','D4','Eb4','E4','F4','Gb4','G4','Ab4','A4','Bb4','B4','C5'};
	valueSet=[246.94,261.63,277.18,293.66,311.13,329.63,349.23,369.99,392.00,415.30,440.00,466.16,493.88,523.25];
	map=containers.Map(keySet,valueSet);
	addpath('~/Desktop/Matlab/sap','~/Desktop/Matlab/utility');
	currSemi=track_pitch(filename);
	for i=1:length(keySet)
		key=char(keySet(i));
		targSemi=pitch2semitone(map(key));
		wObj=myAudioRead(filename);
		opt=pitchShift('defaultOpt');
		opt.pitchShiftAmount=targSemi-currSemi;
		opt.method='wsola';
		wObj
		wObj2=pitchShift(wObj,opt);
		tmpName=[filename,'_',key,'.wav'];
		wObj2file(wObj2,tmpName);
		dos(['start ',tmpName]);
	end
end
