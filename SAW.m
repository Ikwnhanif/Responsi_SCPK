function varargout = SAW(varargin)
% SAW MATLAB code for SAW.fig
%      SAW, by itself, creates a new SAW or raises the existing
%      singleton*.
%
%      H = SAW returns the handle to a new SAW or the handle to
%      the existing singleton*.
%
%      SAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SAW.M with the given input arguments.
%
%      SAW('Property','Value',...) creates a new SAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SAW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SAW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SAW

% Last Modified by GUIDE v2.5 18-May-2022 15:04:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SAW_OpeningFcn, ...
                   'gui_OutputFcn',  @SAW_OutputFcn, ...
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


% --- Executes just before SAW is made visible.
function SAW_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SAW (see VARARGIN)

% Choose default command line output for SAW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SAW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SAW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function bharga_Callback(hObject, eventdata, handles)
% hObject    handle to bharga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bharga as text
%        str2double(get(hObject,'String')) returns contents of bharga as a double


% --- Executes during object creation, after setting all properties.
function bharga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bharga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function btone_Callback(hObject, eventdata, handles)
% hObject    handle to btone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of btone as text
%        str2double(get(hObject,'String')) returns contents of btone as a double


% --- Executes during object creation, after setting all properties.
function btone_CreateFcn(hObject, eventdata, handles)
% hObject    handle to btone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bgaransi_Callback(hObject, eventdata, handles)
% hObject    handle to bgaransi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bgaransi as text
%        str2double(get(hObject,'String')) returns contents of bgaransi as a double


% --- Executes during object creation, after setting all properties.
function bgaransi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bgaransi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bkualitas_Callback(hObject, eventdata, handles)
% hObject    handle to bkualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bkualitas as text
%        str2double(get(hObject,'String')) returns contents of bkualitas as a double


% --- Executes during object creation, after setting all properties.
function bkualitas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bkualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in result.
function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = xlsread('Dataset Hostel Jepang.xlsx','B2:B51');

bhrg = str2double(get(handles.bharga,'String'));
btne = str2double(get(handles.btone,'String'));
bgrnsi = str2double(get(handles.bgaransi,'String'));
bklts = str2double(get(handles.bkualitas,'String'));
bprwtn = str2double(get(handles.bperawatan,'String'));
w = [bhrg btne bgrnsi bklts bprwtn];

ahrg = str2double(get(handles.aharga,'String'));
atne = str2double(get(handles.atone,'String'));
agrnsi = str2double(get(handles.agaransi,'String'));
aklts = str2double(get(handles.akualitas,'String'));
aprwtn = str2double(get(handles.aperawatan,'String'));
k = [ahrg atne agrnsi aklts aprwtn];

[m n] = size(X);

R = zeros(m, n);

for j=1:n,
    if k(j)==1,
        R(:,j)=X(:,j)./max(X(:,j));
    else
        R(:,j)=min(X(:,j))./X(:,j);
    end
end

set(handles.tableR,'Data',R);

for i=1:m,
    V(i)=sum(w.*R(i,:));
end

set(handles.tableakhir,'Data',V);

[~,hasil] = max(V);
finalresult = strcat('Data ke-',num2str(hasil));
set(handles.finalresult, 'String', finalresult);



% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X = xlsread('Dataset Hostel Jepang.xlsx','B2:C51');
set(handles.data,'Data',X);

% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.bharga,'String','');
set(handles.btone,'String','');
set(handles.bgaransi,'String','');
set(handles.bkualitas,'String','');
set(handles.bperawatan,'String','');

% --- Executes when entered data in editable cell(s) in data.
function data_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)



function aharga_Callback(hObject, eventdata, handles)
% hObject    handle to aharga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aharga as text
%        str2double(get(hObject,'String')) returns contents of aharga as a double


% --- Executes during object creation, after setting all properties.
function aharga_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aharga (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function atone_Callback(hObject, eventdata, handles)
% hObject    handle to atone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of atone as text
%        str2double(get(hObject,'String')) returns contents of atone as a double


% --- Executes during object creation, after setting all properties.
function atone_CreateFcn(hObject, eventdata, handles)
% hObject    handle to atone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function agaransi_Callback(hObject, eventdata, handles)
% hObject    handle to agaransi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of agaransi as text
%        str2double(get(hObject,'String')) returns contents of agaransi as a double


% --- Executes during object creation, after setting all properties.
function agaransi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to agaransi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function akualitas_Callback(hObject, eventdata, handles)
% hObject    handle to akualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of akualitas as text
%        str2double(get(hObject,'String')) returns contents of akualitas as a double


% --- Executes during object creation, after setting all properties.
function akualitas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to akualitas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function aperawatan_Callback(hObject, eventdata, handles)
% hObject    handle to aperawatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of aperawatan as text
%        str2double(get(hObject,'String')) returns contents of aperawatan as a double


% --- Executes during object creation, after setting all properties.
function aperawatan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to aperawatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function bperawatan_Callback(hObject, eventdata, handles)
% hObject    handle to bperawatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bperawatan as text
%        str2double(get(hObject,'String')) returns contents of bperawatan as a double


% --- Executes during object creation, after setting all properties.
function bperawatan_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bperawatan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.aharga,'String','');
set(handles.atone,'String','');
set(handles.agaransi,'String','');
set(handles.akualitas,'String','');
set(handles.aperawatan,'String','');



function finalresult_Callback(hObject, eventdata, handles)
% hObject    handle to finalresult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of finalresult as text
%        str2double(get(hObject,'String')) returns contents of finalresult as a double


% --- Executes during object creation, after setting all properties.
function finalresult_CreateFcn(hObject, eventdata, handles)
% hObject    handle to finalresult (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
