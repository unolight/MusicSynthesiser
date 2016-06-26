function piano

	pressSeq = [];
	instrulist={'piano','flute1'};
	
    % Create pop-up menu
    instru1 = uicontrol('Style', 'popup',...
           'String', {'piano','flute1'},...
           'Position', [20 340 100 50],...
           'Callback', @instru1_callback);
	instru2 = uicontrol('Style', 'popup',...
			'String',{'piano','flute1'},...
			'Position', [20+120 340 100 50],...
			'Callback', @instru2_callback);
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
		playnote('B3',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'B3'];
	end

	function c4_callback(source, callbackdata)
		playnote('C4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'C4'];
	end

	function d4_callback(source, callbackdata)
		playnote('D4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'D4'];
	end

	function e4_callback(source, callbackdata)
		playnote('E4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'E4'];
	end

	function f4_callback(source, callbackdata)
		playnote('F4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'F4'];
	end

	function g4_callback(source, callbackdata)
		playnote('G4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'G4'];
	end

	function a4_callback(source, callbackdata)
		playnote('A4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'A4'];
	end

	function b4_callback(source, callbackdata)
		playnote('B4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'B4'];
	end

	function c5_callback(source, callbackdata)
		playnote('C5',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'C5'];
	end

	function cs4_callback(source, callbackdata)
		playnote('Db4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'Db4'];
	end

	function ds4_callback(source, callbackdata)
		playnote('Eb4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'Eb4'];
	end

	function fs4_callback(source, callbackdata)
		playnote('Gb4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'Gb4'];
	end

	function gs4_callback(source, callbackdata)
		playnote('Ab4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'Ab4'];
	end

	function as4_callback(source, callbackdata)
		playnote('Bb4',instrulist(get(instru1,'Value')),instrulist(get(instru2,'Value')));
		pressSeq = [pressSeq;'Bb4'];
	end

	function instru1_callback(source,callbackdata)
	end

	function instru2_callback(source,callbackdata)
	end

	function end_callback(source, callbackdata)
		play_seq(pressSeq,instrulist(get(popup,'Value')));
		pressSeq = [];
	end

	function clr_callback(source, callbackdata)
		pressSeq = [];
	end
	
	
end

