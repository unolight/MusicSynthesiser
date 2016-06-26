function piano

	instrulist={'piano','flute1','flute2','myInstru','guitar1'};
	vollist=[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];
	duralist=[0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];
	keyNames={'v','n','7','u','8','i','o','0','p','hyphen','leftbracket','equal','rightbracket','backslash'};
	pitch={'B3','C4','Db4','D4','Eb4','E4','F4','Gb4','G4','Ab4','A4','Bb4','B4','C5'};
	keyPitch_map=containers.Map(keyNames,pitch);

	f=figure('KeyPressFcn',@keyPressed,'KeyReleaseFcn',@keyReleased);

	function keyPressed(hObject,event,handles)
		key=get(hObject,'CurrentKey');
		[flag,ind]=ismember(key,keyNames);
		if flag==1
			[y,fs]=playnote(char(keyPitch_map(key)),vollist(get(instru1Vol,'Value')),instrulist(get(instru1,'Value')),vollist(get(instru2Vol,'Value')),instrulist(get(instru2,'Value')),duralist(get(duration,'Value')));
			soundsc(y,fs);
		end
	end

	function keyReleased(hObject,event,handles)
	end

    % Create pop-up menu
    instru1 = uicontrol('Style', 'popup',...
           'String', {'piano','flute1','flute2','myInstru','guitar1'},...
           'Position', [20+100 340 80 50],...
           'Callback', @instru1_callback);
	instru2 = uicontrol('Style', 'popup',...
			'String',{'piano','flute1','flute2','myInstru','guitar1'},...
			'Position', [220+100 340 80 50],...
			'Callback', @instru2_callback);
	instru1Vol = uicontrol('Style','popup',...
			'String',{'0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1.0'},...
			'Position',[20 340 80 50],...
			'Callback',@instru1Vol_callback);
	instru2Vol = uicontrol('Style','popup',...
			'String',{'0.1','0.2','0.3','0.4','0.5','0.6','0.7','0.8','0.9','1.0'},...
			'Position',[120+100 340 80 50],...
			'Callback',@instru2Vol_callback);
	duration = uicontrol('Style','popup',...
			'String',{'0.3','0.4','0.5','0.6','0.7','0.8','0.9','1.0'},...
			'Position',[320+100 340 80 50],...
			'Callback',@duration_callback);


	function instru1_callback(source,callbackdata)
	end

	function instru2_callback(source,callbackdata)
	end

	function instru1Vol_callback(source,callbackdata)
	end

	function instru2Vol_callback(source,callbackdata)
	end

	function duration_callback(source,callbackdata)
	end
	
end

