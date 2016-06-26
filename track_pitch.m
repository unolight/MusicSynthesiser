function [pitch]=track_pitch(file)
addpath('~/Desktop/Matlab/sap','~/Desktop/Matlab/utility');
pitch=pitchTrack(file);
pitch
fprintf('meadian=%f\n',median(pitch));
end
