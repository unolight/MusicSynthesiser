function [output]=semitone2pitch(semitone)
	output=440*2^((semitone-69)/12);
end
