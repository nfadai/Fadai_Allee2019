function varargout = TestApp(varargin)
% TESTAPP MATLAB code for TestApp.fig
%      TESTAPP, by itself, creates a new TESTAPP or raises the existing
%      singleton*.
%
%      H = TESTAPP returns the handle to a new TESTAPP or the handle to
%      the existing singleton*.
%
%      TESTAPP('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TESTAPP.M with the given input arguments.
%
%      TESTAPP('Property','Value',...) creates a new TESTAPP or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TestApp_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TestApp_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TestApp

% Last Modified by GUIDE v2.5 22-May-2019 10:31:11

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TestApp_OpeningFcn, ...
                   'gui_OutputFcn',  @TestApp_OutputFcn, ...
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


% --- Executes just before TestApp is made visible.
function TestApp_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TestApp (see VARARGIN)

% Choose default command line output for TestApp
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TestApp wait for user response (see UIRESUME)
% uiwait(handles.figure1);
axes(handles.axes5);
matlabImage = imread('Percapita3.png');
image(matlabImage)
axis off
axis image
box on
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)
set(handles.axes3,'Xlim',[0 6]);
set(handles.axes3,'Ylim',[0 1]);
set(handles.axes3,'FontSize',14)
set(handles.axes4,'Xlim',[0 6]);
set(handles.axes4,'Ylim',[0 1]);
set(handles.axes4,'FontSize',14)
set(handles.pushbutton4, 'Visible', 'off');

% --- Outputs from this function are returned to the command line.
function varargout = TestApp_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;





function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double



% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
a=get(handles.slider1,'Value');
set(handles.edit3,'String',num2str(a));
F=str2func(strcat('@(C) C.*(',get(handles.edit1,'String'),')'));
[T,W]=ode45(@(t,x) F(x),[0 10],a);
plot(handles.axes1,T,W,'k','LineWidth',2.5);
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1

%% COMPUTE IBM RATES
% --- Executes on button press in pushbutton2. 
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.edit3,'String',num2str(0.1));
set(handles.slider1,'Value',0.1);
F=str2func(strcat('@(C)',get(handles.edit1,'String')));

if feval(F,1)>0
    f = errordlg('ERROR: per-capita rate at C=1 must be non-positive.',...
        'Out of Bounds');
elseif isinf(feval(F,1))
    f = errordlg('ERROR: per-capita rate at C=1 must be finite.',...
        'Out of Bounds');
elseif isinf(feval(F,0))
    f = errordlg('ERROR: per-capita rate at C=0 must be finite.',...
        'Out of Bounds');
else


[RP,ALPHA]=AlleeApp(F);
    Cmat = [227 6 19;
        255 237 0;
        118 184 42;
        91 197 242;
        145,56,190;
        143,143,143;
        0 0 0]/255;
N=length(RP);
b=bar(handles.axes3,0:N-1,RP);
b.FaceColor = 'flat';

for i=1:N
    b.CData(i,:) = Cmat(i,:);
end
set(handles.axes3,'Ylim',[0 max(RP)*1.1]);
set(handles.axes3,'FontSize',14)





b2=bar(handles.axes4,0:N-1,ALPHA);
b2.FaceColor = 'flat';
for i=1:N
    b2.CData(i,:) = Cmat(i,:);
end
set(handles.axes4,'Ylim',[0 max(1,ALPHA(1))+0.1]);
set(handles.axes4,'FontSize',14)
F=str2func(strcat('@(C) C.*(',get(handles.edit1,'String'),')'));
[T,W]=ode45(@(t,x) F(x),[0 10],0.1);
plot(handles.axes1,T,W,'k','LineWidth',2.5);
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)

end

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
a=str2double(get(handles.edit3,'String'));
set(handles.slider1,'Value',a);
F=str2func(strcat('@(C) C.*(',get(handles.edit1,'String'),')'));
[T,W]=ode45(@(t,x) F(x),[0 10],a);
plot(handles.axes1,T,W,'k','LineWidth',2.5);
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function axes5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes5


%% RUN IBM
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.edit3,'String'));
set(handles.slider1,'Value',a);
F=str2func(strcat('@(C) C.*(',get(handles.edit1,'String'),')'));

if feval(F,1)>0
    f = errordlg('ERROR: per-capita rate at C=1 must be non-positive.',...
        'Out of Bounds');
else

[T,W]=ode45(@(t,x) F(x),[0 10],a);
hold(handles.axes1, 'off' )
plot(handles.axes1,T,W,'k','LineWidth',2.5);
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)

F2=str2func(strcat('@(C)',get(handles.edit1,'String')));
[RP,ALPHA]=AlleeApp(F2);
RM=100*max(RP)*ones(1,7);
RD=ALPHA.*RP;
Y=str2double(get(handles.edit4,'String'));


pause(0.01)
set(handles.pushbutton4, 'Visible', 'on');
pause(0.01)
[QQ,X]=IBMapp(RM,RP,RD,a,10,Y);
hold(handles.axes1, 'on' )
plot(handles.axes1,X,QQ,'r-','LineWidth',1.5);
hold(handles.axes1, 'off' )
legend(handles.axes1,'Global','IBM')
pause(0.01)
set(handles.pushbutton4, 'Visible', 'off');
pause(0.01)
end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% GREYED OUT IBM
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
