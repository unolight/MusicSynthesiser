function [med]=track_pitch(file)
	addpath('~/Desktop/Matlab/sap','~/Desktop/Matlab/utility');
	pitch=pitchTrack(file);
	med=median(pitch);
	fprintf('meadian=%f\n',med);
end
