function piano
	[b3,Fb3] = audioread('src/Piano.mf.B3_cut');
	[c4,Fc4] = audioread('src/Piano.mf.C4_cut');
	[d4,Fd4] = audioread('src/Piano.mf.D4_cut');
	[e4,Fe4] = audioread('src/Piano.mf.E4_cut');
	[f4,Ff4] = audioread('src/Piano.mf.F4_cut');
	[g4,Fg4] = audioread('src/Piano.mf.G4_cut');
	[a4,Fa4] = audioread('src/Piano.mf.A4_cut');
	[b4,Fb4] = audioread('src/Piano.mf.B4_cut');
	[c5,Fc5] = audioread('src/Piano.mf.C5_cut');

	[cs4,Fcs4] = audioread('src/Piano.mf.Db4_cut');
	[ds4,Fds4] = audioread('src/Piano.mf.Eb4_cut');
	[fs4,Ffs4] = audioread('src/Piano.mf.Gb4_cut');
	[gs4,Fgs4] = audioread('src/Piano.mf.Ab4_cut');
	[as4,Fas4] = audioread('src/Piano.mf.Bb4_cut');

	x = [];

function b3_callback(source, callbackdata)
	playnote('b3',get(popup,'Value'));
end
function c4_callback(source, callbackdata)
	playnote('c4',get(popup,'Value'));
end
function d4_callback(source, callbackdata)
	playnote('d4',get(popup,'Value'));
end
function e4_callback(source, callbackdata)
	playnote('e4',get(popup,'Value'));
end
function f4_callback(source, callbackdata)
	playnote('f4',get(popup,'Value'));
end
function g4_callback(source, callbackdata)
	playnote('g4',get(popup,'Value'));
end
function a4_callback(source, callbackdata)
	playnote('a4',get(popup,'Value'));
end
function b4_callback(source, callbackdata)
	playnote('b4',get(popup,'Value'));
end
function c5_callback(source, callbackdata)
	playnote('c5',get(popup,'Value'));
end
function cs4_callback(source, callbackdata)
	playnote('cs4',get(popup,'Value'));
end
function ds4_callback(source, callbackdata)
	playnote('ds4',get(popup,'Value'));
end
function fs4_callback(source, callbackdata)
	playnote('fs4',get(popup,'Value'));
end
function gs4_callback(source, callbackdata)
	playnote('gs4',get(popup,'Value'));
end
function as4_callback(source, callbackdata)
	playnote('as4',get(popup,'Value'));
end
    % Create pop-up menu
    popup = uicontrol('Style', 'popup',...
           'String', {'piano','guitar','flute'},...
           'Position', [20 340 100 50],...
           'Callback', @popup_callback);
   endBtn = uicontrol('Style', 'pushbutton', ...
   		 'position', [180 125 200 30], ...
   		 'String', 'End', ...
   		 'Callback', @end_callback);
   clrBtn = uicontrol('Style', 'pushbutton', ...
   		 'position', [180 75 200 30], ...
   		 'String', 'Clear', ...
   		 'Callback', @clr_callback);
   B3 = uicontrol('Style', 'pushbutton', ...
		'position', [60+40 200 40 95],...
		'String', 'B3', ...
		'Callback', @b3_callback);
	C4 = uicontrol('Style', 'pushbutton', ...
		'position', [100+40 200 40 95],...
		'String', 'C4', ...
		'Callback', @c4_callback);
	D4 = uicontrol('Style', 'pushbutton', ...
		'position', [140+40 200 40 95],...
		'String', 'D4', ...
		'Callback', @d4_callback);
	E4 = uicontrol('Style', 'pushbutton', ...
		'position', [180+40 200 40 95],...
		'String', 'E4', ...
		'Callback', @e4_callback);
	F4 = uicontrol('Style', 'pushbutton', ...
		'position', [220+40 200 40 95],...
		'String', 'F4', ...
		'Callback', @f4_callback);
	G4 = uicontrol('Style', 'pushbutton', ...
		'position', [260+40 200 40 95],...
		'String', 'G4', ...
		'Callback', @g4_callback);
	A4 = uicontrol('Style', 'pushbutton', ...
		'position', [300+40 200 40 95],...
		'String', 'A4', ...
		'Callback', @a4_callback);
	B4 = uicontrol('Style', 'pushbutton', ...
		'position', [340+40 200 40 95],...
		'String', 'B4', ...
		'Callback', @b4_callback);
	C5 = uicontrol('Style', 'pushbutton', ...
		'position', [380+40 200 40 95],...
		'String', 'C5', ...
		'Callback', @c5_callback);
	CS4 = uicontrol('Style', 'pushbutton', ...
		'position', [130+40 270 20 80],...
		'BackgroundColor', [0 0 0],...
		'ForegroundColor', [1 1 1],...
		'String', 'C#',...
		'Callback', @cs4_callback);
	DS4 = uicontrol('Style', 'pushbutton', ...
		'position', [170+40 270 20 80],...
		'BackgroundColor', [0 0 0],...
		'ForegroundColor', [1 1 1],...
		'String', 'D#',...
		'Callback', @ds4_callback);
	FS4 = uicontrol('Style', 'pushbutton', ...
		'position', [250+40 270 20 80],...
		'BackgroundColor', [0 0 0],...
		'ForegroundColor', [1 1 1],...
		'String', 'F#',...
		'Callback', @fs4_callback);
	GS4 = uicontrol('Style', 'pushbutton', ...
		'position', [290+40 270 20 80],...
		'BackgroundColor', [0 0 0],...
		'ForegroundColor', [1 1 1],...
		'String', 'G#',...
		'Callback', @gs4_callback);
	AS4 = uicontrol('Style', 'pushbutton', ...
		'position', [330+40 270 20 80],...
		'BackgroundColor', [0 0 0],...
		'ForegroundColor', [1 1 1],...
		'String', 'A#',...
		'Callback', @as4_callback);
			function b3_callback(source, callbackdata)
				sound(b3, Fb3)
				x = [x b3'];
			end
			function c4_callback(source, callbackdata)
				sound(c4, Fc4)
				x = [x c4'];
			end
			function d4_callback(source, callbackdata)
				sound(d4, Fd4)
				x = [x d4'];
			end
			function e4_callback(source, callbackdata)
				sound(e4, Fe4)
				x = [x e4'];
			end
			function f4_callback(source, callbackdata)
				sound(f4, Ff4)
				x = [x f4'];
			end
			function g4_callback(source, callbackdata)
				sound(g4, Fg4)
				x = [x g4'];
			end
			function a4_callback(source, callbackdata)
				sound(a4, Fa4)
				x = [x a4'];
			end
			function b4_callback(source, callbackdata)
				sound(b4, Fb4)				
				x = [x b4'];
			end
			function c5_callback(source, callbackdata)
				sound(c5, Fc5)
				x = [x c5'];
			end
			function cs4_callback(source, callbackdata)
				sound(cs4, Fcs4)
					x = [x cs4'];
			end
			function ds4_callback(source, callbackdata)
				sound(ds4, Fds4)
				x = [x ds4'];
			end
			function fs4_callback(source, callbackdata)
				sound(fs4, Ffs4)
				x = [x fs4'];
			end
			function gs4_callback(source, callbackdata)
				sound(gs4, Fgs4)
				x = [x gs4'];
			end
			function as4_callback(source, callbackdata)
				sound(as4, Fas4)
				x = [x as4'];
			end
	function end_callback(source, callbackdata)
		sound(x, Fc4)
		x = [];
	end

	function clr_callback(source, callbackdata)
		x = [];
	end
	
	
end

