function [semitone]=pitch2semitone(pitch)
	semitone=69+12*log2(pitch/440);
end
