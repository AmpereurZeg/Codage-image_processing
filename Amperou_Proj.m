function varargout = Amperou_Proj(varargin)
% AMPEROU_PROJ MATLAB code for Amperou_Proj.fig
%      AMPEROU_PROJ, by itself, creates a new AMPEROU_PROJ or raises the existing
%      singleton*.
%
%      H = AMPEROU_PROJ returns the handle to a new AMPEROU_PROJ or the handle to
%      the existing singleton*.
%
%      AMPEROU_PROJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AMPEROU_PROJ.M with the given input arguments.
%
%      AMPEROU_PROJ('Property','Value',...) creates a new AMPEROU_PROJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Amperou_Proj_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Amperou_Proj_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Amperou_Proj

% Last Modified by GUIDE v2.5 05-Jul-2021 15:35:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Amperou_Proj_OpeningFcn, ...
                   'gui_OutputFcn',  @Amperou_Proj_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Amperou_Proj is made visible.
function Amperou_Proj_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Amperou_Proj (see VARARGIN)

% Choose default command line output for Amperou_Proj
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Amperou_Proj wait for user response (see UIRESUME)
% uiwait(handles.figure1);
% create an axes that spans the whole gui
ah = axes('unit', 'normalized', 'position', [0 0 1 1]); 
% import the background image and show it on the axes
bg = imread('background.jpg'); imagesc(bg);
% prevent plotting over the background and turn the axis off
set(ah,'handlevisibility','off','visible','off')
% making sure the background is behind all the other uicontrols
uistack(ah, 'bottom');


% --- Outputs from this function are returned to the command line.
function varargout = Amperou_Proj_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function impath_Callback(~, ~, ~)
% hObject    handle to impath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of impath as text
%        str2double(get(hObject,'String')) returns contents of impath as a double


% --- Executes during object creation, after setting all properties.
function impath_CreateFcn(hObject, ~, handles)
% hObject    handle to impath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 [filename ,filepath] = uigetfile({'*.*'; '*.png'; '*.jpg';'*.bmp'},'Browse your image path');
 fullname = strcat(filepath, filename);
 set(handles.impath,'string',fullname);
 axes(handles.axes2);
 imshow(fullname);
 



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, ~, ~)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(~, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(~, ~, ~)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, ~, ~)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in vertical.
function vertical_Callback(hObject, eventdata, handles)
% hObject    handle to vertical (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path=get(handles.impath,'string');
if isempty(path)
    msgbox('Please select an image', 'Error','error');
else
    [im,map]=imread(path);
    im = imresize(im, [length(im) length(im)]);
    axes(handles.axes4);
    imshow(im,map);
    base=im(:);
    comp=0;
    X=1;
    maxValue=1;
    for i = 1:length(base)-1   
        if base(i)==0
            comp=1  ;       
            if base(i)==base(i+1)
                comp=X+1;
                X=comp;
                if maxValue<X
                    maxValue=X;
                end
            else
                X=1;
                comp=0;    
            end
        end
    end
    set(handles.verticalV,'string',maxValue);
end

% --- Executes on button press in horizontal.
function horizontal_Callback(~, ~, handles)
% hObject    handle to horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path=get(handles.impath,'string');
if isempty(path)
    msgbox('Please select an image', 'Error','error');
else
    [im,map]=imread(path);
    im = imresize(im, [length(im) length(im)]);
    axes(handles.axes4);
    imshow(im,map);
    im = permute(im, [2 1 3]);
    im=im(:);
    comp=0;
    X=1;
    maxValue=1;
    for i = 1:length(im)-1   
        if im(i)==0
            comp=1  ;       
            if im(i)==im(i+1)
                comp=X+1;
                X=comp;
                if maxValue<X;
                    maxValue=X;
                end
            else
                X=1;
                comp=0;    
            end
        end
    end
    set(handles.horizontalV,'string',maxValue);
end


% --- Executes on button press in zigzag.
function zigzag_Callback(~, ~, handles)
% hObject    handle to zigzag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
path=get(handles.impath,'string');
if isempty(path)
    msgbox('Please select an image', 'Error','error');
else
    [im,map]=imread(path);
    im = imresize(im, [length(im) length(im)]);
    axes(handles.axes4);
    imshow(im,map);
    [r,c] = size(im);
    checker = rem(hankel(1:r,r-1+(1:c)),2);
    [rEven,cEven] = find(checker);
    [cOdd,rOdd] = find(~checker.'); %'#
    rTotal = [rEven; rOdd];
    cTotal = [cEven; cOdd];
    [~,sortIndex] = sort(rTotal+cTotal);
    rSort = rTotal(sortIndex);
    cSort = cTotal(sortIndex);
    index = sub2ind([r c],rSort,cSort);
    im = im(index);
    comp=0;
    X=1;
    maxValue=1;
    for i = 1:length(im)-1   
        if im(i)==0
            comp=1   ;      
            if im(i)==im(i+1)
                comp=X+1;
                X=comp;
                if maxValue<X
                    maxValue=X;
                end
            else
                X=1;
                comp=0;    
            end
        end
    end
    set(handles.zigzagV,'string',maxValue);
    max1 = str2double(get(handles.verticalV,'string'));
    max2 = str2double(get(handles.horizontalV,'string'));
    max3 = str2double(get(handles.zigzagV,'string'));
    Min = max1;
    res = 'Vertical';
    if max2 < Min
        Min = max2;
        res = 'Horizontal';
    end
    if max3 < Min
        Min = max3;
        res = 'Zigzag';
    end
    set(handles.result,'string',res);
end

% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(~, ~, ~)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
