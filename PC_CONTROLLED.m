%***********************************************************************
% GUI based PC Controlled Robot
%***********************************************************************

function varargout = PC_CONTROLLED(varargin)
% PC_CONTROLLED M-file for PC_CONTROLLED.fig
%      PC_CONTROLLED, by itself, creates a new PC_CONTROLLED or raises the existing
%      singleton*.
%
%      H = PC_CONTROLLED returns the handle to a new PC_CONTROLLED or the handle to
%      the existing singleton*.
%
%      PC_CONTROLLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PC_CONTROLLED.M with the given input arguments.
%
%      PC_CONTROLLED('Property','Value',...) creates a new PC_CONTROLLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PC_CONTROLLED_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PC_CONTROLLED_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PC_CONTROLLED
% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PC_CONTROLLED_OpeningFcn, ...
                   'gui_OutputFcn',  @PC_CONTROLLED_OutputFcn, ...
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


% --- Executes just before PC_CONTROLLED is made visible.
function PC_CONTROLLED_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PC_CONTROLLED (see VARARGIN)

% Choose default command line output for PC_CONTROLLED
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PC_CONTROLLED wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PC_CONTROLLED_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)         %FORWARD
s = serial('COM1', 'BaudRate', 9600);
set(s,'outputbuffersize',1024);
fopen(s);
fprintf(s,'f');
fclose(s);
delete(s);
clear('s');


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)       %BACKWORD
s = serial('COM1', 'BaudRate', 9600);
set(s,'outputbuffersize',1024);
fopen(s);
fprintf(s,'b');
fclose(s);
delete(s);
clear('s');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)          %LEFT
s = serial('COM1', 'BaudRate', 9600);
set(s,'outputbuffersize',1024);
fopen(s);
fprintf(s,'l');
fclose(s);
delete(s);
clear('s');


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)          %RIGHT
s = serial('COM1', 'BaudRate', 9600);
set(s,'outputbuffersize',1024);
fopen(s);
fprintf(s,'r');
fclose(s);
delete(s);
clear('s');


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)          %STOP
s = serial('COM1', 'BaudRate', 9600);
set(s,'outputbuffersize',1024);
fopen(s);
fprintf(s,'s');
fclose(s);
delete(s);
clear('s');


