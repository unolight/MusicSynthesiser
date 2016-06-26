S = 44100;
N = 1 * S;
t = [0:N-1]/S;
c = 5 .* [1:2:2000]; % amplitudes
x = 0;
name = ['B3';'C4';'Db'; 'D4'; 'Eb' ;'E4' ;'F4'; 'Gb'; 'G4'; 'Ab'; 'A4'; 'Bb'; 'B4'; 'C5']
cellname = cellstr(name);
env = (1 - exp(-84*t)) .* exp(-2*t);
for semi = 59:72
	disp(semi)
	x = 0;
	ff = (2^((semi-69)/12))*440;
	f = [1:2:2000]/2000 + ff; % frequencies
	for k=1:length(c)
		x = x + c(k) * sin(2 * pi * 1/f(k) * t) + c(k) * sin(2 * pi * f(k) * t);
	end
	y = env .* x;
	soundsc(y,S)
	filename=strcat('myInstru_', char(cellname(semi-58)),'.wav');
	audiowrite(filename, y, S);
end