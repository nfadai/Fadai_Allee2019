function varargout = ExpFitApp2(varargin)
% EXPFITAPP2 MATLAB code for ExpFitApp2.fig
%      EXPFITAPP2, by itself, creates a new EXPFITAPP2 or raises the existing
%      singleton*.
%
%      H = EXPFITAPP2 returns the handle to a new EXPFITAPP2 or the handle to
%      the existing singleton*.
%
%      EXPFITAPP2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EXPFITAPP2.M with the given input arguments.
%
%      EXPFITAPP2('Property','Value',...) creates a new EXPFITAPP2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ExpFitApp2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ExpFitApp2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ExpFitApp2

% Last Modified by GUIDE v2.5 07-Jun-2019 09:49:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @ExpFitApp2_OpeningFcn, ...
    'gui_OutputFcn',  @ExpFitApp2_OutputFcn, ...
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


% --- Executes just before ExpFitApp2 is made visible.
function ExpFitApp2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ExpFitApp2 (see VARARGIN)

% Choose default command line output for ExpFitApp2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ExpFitApp2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
warning('off','all')
set(handles.axes1,'Xlim',[0 10]);
set(handles.axes1,'Ylim',[0 1]);
set(handles.axes1,'FontSize',14)
set(handles.axes9,'Xlim',[0 10]);
set(handles.axes9,'Ylim',[0 1]);
set(handles.axes9,'FontSize',14)
set(handles.axes3,'Xlim',[0 6]);
set(handles.axes3,'Ylim',[0 1]);
set(handles.axes3,'FontSize',14)
set(handles.axes4,'Xlim',[0 6]);
set(handles.axes4,'Ylim',[0 1]);
set(handles.axes4,'FontSize',14)
set(handles.text20, 'Visible', 'on');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off');
set(handles.text23, 'Visible', 'off');

set(handles.text49, 'Visible', 'on');
set(handles.text48, 'Visible', 'off');
set(handles.text47, 'Visible', 'off');
set(handles.text39, 'Visible', 'off');
set(handles.edit16, 'Visible', 'off');

set(handles.text28, 'Visible', 'off');
set(handles.text29, 'Visible', 'off');
set(handles.edit6,'String',[])
set(handles.edit7,'String',[])
set(handles.edit8,'String',[])
set(handles.edit9,'Visible','off');
set(handles.edit10,'Visible','off');
set(handles.edit9,'String',[]);
set(handles.edit10,'String',[]);
set(handles.text42, 'Visible', 'off');
set(handles.text43, 'Visible', 'off');
set(handles.edit14,'Visible','off');
set(handles.edit15,'Visible','off');

set(handles.edit17,'Visible','off');
set(handles.edit18,'Visible','off');

% --- Outputs from this function are returned to the command line.
function varargout = ExpFitApp2_OutputFcn(hObject, eventdata, handles)
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






% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on key press with focus on radiobutton2 and none of its controls.
function radiobutton2_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%% EXPERIMENTAL FITTING

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FLAG=0;
data =importdata(strcat(get(handles.edit5,'String'),'.xls'));
[n,m]=size(data);
if n>2 && m>2
    errordlg('ERROR: two rows/columns of data are expected (t, C(t)).',...
        'Unsuitable Dataset');
    FLAG=1;
elseif m>2
    data=data';
end

X0=[];
if isempty(get(handles.edit6,'String'))|| ~get(handles.checkbox1,'Value')
    X0(1)=data(1,2);
else
    X0(1)=str2double(get(handles.edit6,'String'));
end
if isempty(get(handles.edit7,'String'))|| ~get(handles.checkbox1,'Value')
    X0(2)=1;
else
    X0(2)=str2double(get(handles.edit7,'String'));
end



if get(handles.radiobutton2,'Value')
    M=1;
    if isempty(get(handles.edit8,'String'))|| ~get(handles.checkbox1,'Value')
        X0(3)=data(end,2);
    else
        X0(3)=str2double(get(handles.edit8,'String'));
    end
    
elseif get(handles.radiobutton3,'Value')
    M=2;
    if isempty(get(handles.edit8,'String')) || ~get(handles.checkbox1,'Value')
        X0(3)=data(end,2);
    else
        X0(3)=str2double(get(handles.edit8,'String'));
    end
    if isempty(get(handles.edit9,'String')) || ~get(handles.checkbox1,'Value')
        X0(4)=data(end,2)/2;
    else
        X0(4)=str2double(get(handles.edit9,'String'));
    end
elseif get(handles.radiobutton4,'Value')
    M=3 ;
    if isempty(get(handles.edit8,'String')) || ~get(handles.checkbox1,'Value')
        X0(3)=data(end,2);
    else
        X0(3)=str2double(get(handles.edit8,'String'));
    end
    if isempty(get(handles.edit9,'String')) || ~get(handles.checkbox1,'Value')
        X0(4)=data(end,2)/2;
    else
        X0(4)=str2double(get(handles.edit9,'String'));
    end
elseif get(handles.radiobutton5,'Value')
    M=4  ;
    
    if isempty(get(handles.edit16,'String'))|| min(get(handles.edit16,'String')==get(handles.edit5,'String'))
        errordlg('ERROR: Hyper-Allee fit must have two (distinct) datasets.',...
            'Two datasets required')
    else
        data2 =importdata(strcat(get(handles.edit16,'String'),'.xls'));
    end
[n,m]=size(data2);
if n>2 && m>2
    errordlg('ERROR: two rows/columns of data are expected (t, C(t)).',...
        'Unsuitable Dataset');
    FLAG=1;
elseif m>2
    data=data';
end
    if isempty(get(handles.edit8,'String')) || ~get(handles.checkbox1,'Value')
        X0(3)=max(data(end,2),data2(end,2));
    else
        X0(3)=str2double(get(handles.edit8,'String'));
    end
    if isempty(get(handles.edit9,'String')) || ~get(handles.checkbox1,'Value')
        X0(4)=data(end,2)/2;
    else
        X0(4)=str2double(get(handles.edit9,'String'));
    end
    if isempty(get(handles.edit10,'String')) || ~get(handles.checkbox1,'Value')
        X0(5)=data(end,2)/3;
    else
        X0(5)=str2double(get(handles.edit10,'String'));
    end
    if isempty(get(handles.edit17,'String')) || ~get(handles.checkbox1,'Value')
        X0(6)=data2(1,2);
    else
        X0(6)=str2double(get(handles.edit17,'String'));
    end
    
else
    errordlg('Please select model first.',...
        'Model Unspecified');
    FLAG=1;
end


if FLAG==0
    if M<4
    [P,X,Y]=AlleeExpFit(M,data,X0);
    else
        [P,X,Y,X2,Y2]=HAexpfit(data,data2,X0);
    end
    
    set(handles.edit6,'String',num2str(P(1)))
    set(handles.edit7,'String',num2str(P(2)))
    set(handles.edit8,'String',num2str(P(3)))
    set(handles.edit9,'String',[]);
    set(handles.edit10,'String',[]);
    set(handles.text28, 'Visible', 'off');
    set(handles.text29, 'Visible', 'off');
    set(handles.edit9,'Visible','off');
    set(handles.edit10,'Visible','off');
    set(handles.text42, 'Visible', 'off');
    set(handles.text43, 'Visible', 'off');
    set(handles.edit14,'Visible','off');
    set(handles.edit15,'Visible','off');
    set(handles.edit11,'String',num2str(P(1)/P(3)))
    if M>1
        set(handles.edit9,'String',num2str(P(4)))
        set(handles.text28, 'Visible', 'on');
        set(handles.text29, 'Visible', 'off');
        set(handles.edit9,'Visible','on');
        set(handles.edit10,'Visible','off');
        set(handles.text42, 'Visible', 'on');
        set(handles.edit14,'String',num2str(P(4)/P(3)))
        set(handles.text42, 'Visible', 'on');
        set(handles.text43, 'Visible', 'off');
        set(handles.edit14,'Visible','on');
        set(handles.edit15,'Visible','off');
    end
    if M==4
        set(handles.edit10,'String',num2str(P(5)))
        set(handles.text28, 'Visible', 'on');
        set(handles.text29, 'Visible', 'on');
        set(handles.edit9,'Visible','on');
        set(handles.edit10,'Visible','on');
        set(handles.edit14,'String',num2str(P(4)/P(3)))
        set(handles.edit15,'String',num2str(P(5)/P(3)))
        set(handles.text42, 'Visible', 'on');
        set(handles.text43, 'Visible', 'on');
        set(handles.edit14,'Visible','on');
        set(handles.edit15,'Visible','on');
        set(handles.edit17,'Visible','on');
        set(handles.edit18,'Visible','on');
        set(handles.edit17,'String',num2str(P(6)))
        set(handles.edit18,'String',num2str(P(6)/P(3)))
    end
    plot(handles.axes1,data(:,1),data(:,2),'ro','MarkerSize',5);
    hold(handles.axes1, 'on' )
    plot(handles.axes1,X,Y,'k','LineWidth',2);
    if M==4
        plot(handles.axes1,data2(:,1),data2(:,2),'bo','MarkerSize',5);
        plot(handles.axes1,X2,Y2,'k--','LineWidth',2);
    end
    hold(handles.axes1, 'off' )
    if M<4
        legend(handles.axes1,'Experiment','Global','Location','SouthEast')
        set(handles.axes1,'Xlim',[0 data(end,1)]);
    set(handles.axes1,'Ylim',[0 max(1,max(data(:,2)))]);
    else
        legend(handles.axes1,'Experiment 1','Global 1',...
            'Experiment 2','Global 2','Location','SouthEast')
                set(handles.axes1,'Xlim',[0 max(data(end,1),data2(end,1))]);
    set(handles.axes1,'Ylim',[0 max([1,...
        max(data(:,2)), max(data2(:,2))])]);
    end
    set(handles.axes1,'FontSize',14)
    
    plot(handles.axes9,data(:,1),data(:,2)/P(3),'ro','MarkerSize',5);
    hold(handles.axes9, 'on' )
    plot(handles.axes9,X,Y/P(3),'k','LineWidth',2);
    if M==4
        plot(handles.axes9,data2(:,1),data2(:,2)/P(3),'bo','MarkerSize',5);
        plot(handles.axes9,X2,Y2/P(3),'k--','LineWidth',2);
    end
    hold(handles.axes9, 'off' )
    if M<4
        legend(handles.axes9,'Experiment','Global','Location','SouthEast')
        set(handles.axes9,'Xlim',[0 data(end,1)]);
    set(handles.axes9,'Ylim',[0 max(1,max(data(:,2))/P(3))]);
    else
        legend(handles.axes9,'Experiment 1','Global 1',...
            'Experiment 2','Global 2','Location','SouthEast')
                set(handles.axes9,'Xlim',[0 max(data(end,1),data2(end,1))]);
    set(handles.axes9,'Ylim',[0 max([1,...
        max(data(:,2))/P(3), max(data2(:,2))/P(3)])]);
    end

    set(handles.axes9,'FontSize',14)
    
    
    %%determine IBM rates
    if M==1
        F=@(C) P(2).*(1-C);
    elseif M==2
        F=@(C) P(2).*(C+P(4)/P(3)).*(1-C)*P(3)/P(4);
    elseif M==3
        F=@(C) P(2).*(C-P(4)/P(3)).*(1-C)*P(3)/P(4);
    else
        F=@(C) P(2).*(C-P(4)/P(3)).*(C-P(5)/P(3)).*(1-C)*P(3)/P(4)*P(3)/P(5);
    end
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
end


% --- Executes during object creation, after setting all properties.
function text20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text23_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function uibuttongroup2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uibuttongroup2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text20, 'Visible', 'on');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off');
set(handles.text23, 'Visible', 'off');
set(handles.text28, 'Visible', 'off');
set(handles.text29, 'Visible', 'off');
set(handles.edit9,'Visible','off');
set(handles.edit10,'Visible','off');

set(handles.text49, 'Visible', 'on');
set(handles.text48, 'Visible', 'off');
set(handles.text47, 'Visible', 'off');
set(handles.text39, 'Visible', 'off');
set(handles.edit16,'Visible','off');
set(handles.text42, 'Visible', 'off');
set(handles.text43, 'Visible', 'off');
set(handles.edit14,'Visible','off');
set(handles.edit15,'Visible','off');
set(handles.edit17,'Visible','off');
set(handles.edit18,'Visible','off');

function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'on');
set(handles.text22, 'Visible', 'off');
set(handles.text23, 'Visible', 'off');
set(handles.text28, 'Visible', 'on');
set(handles.text29, 'Visible', 'off');
set(handles.edit9,'Visible','on');
set(handles.edit10,'Visible','off');

set(handles.text49, 'Visible', 'off');
set(handles.text48, 'Visible', 'on');
set(handles.text47, 'Visible', 'off');
set(handles.text39, 'Visible', 'off');
set(handles.text42, 'Visible', 'on');
set(handles.text43, 'Visible', 'off');
set(handles.edit14,'Visible','on');
set(handles.edit15,'Visible','off');
set(handles.edit16,'Visible','off');
set(handles.edit17,'Visible','off');
set(handles.edit18,'Visible','off');

function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'on');
set(handles.text23, 'Visible', 'off');
set(handles.text28, 'Visible', 'on');
set(handles.text29, 'Visible', 'off');
set(handles.edit9,'Visible','on');
set(handles.edit10,'Visible','off');
set(handles.text49, 'Visible', 'off');
set(handles.text48, 'Visible', 'off');
set(handles.text47, 'Visible', 'on');
set(handles.text39, 'Visible', 'off');
set(handles.text42, 'Visible', 'on');
set(handles.text43, 'Visible', 'off');
set(handles.edit14,'Visible','on');
set(handles.edit15,'Visible','off');
set(handles.edit16,'Visible','off');
set(handles.edit17,'Visible','off');
set(handles.edit18,'Visible','off');

function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
set(handles.text20, 'Visible', 'off');
set(handles.text21, 'Visible', 'off');
set(handles.text22, 'Visible', 'off');
set(handles.text23, 'Visible', 'on');
set(handles.text28, 'Visible', 'on');
set(handles.text29, 'Visible', 'on');
set(handles.edit9,'Visible','on');
set(handles.edit10,'Visible','on');
set(handles.text49, 'Visible', 'off');
set(handles.text48, 'Visible', 'off');
set(handles.text47, 'Visible', 'off');
set(handles.text39, 'Visible', 'on');
set(handles.edit16,'Visible','on');
set(handles.text42, 'Visible', 'on');
set(handles.text43, 'Visible', 'on');
set(handles.edit14,'Visible','on');
set(handles.edit15,'Visible','on');
set(handles.edit17,'Visible','on');
set(handles.edit18,'Visible','on');



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
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



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
