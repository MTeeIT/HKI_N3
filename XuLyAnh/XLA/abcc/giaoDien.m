function varargout = giaoDien(varargin)
% GIAODIEN MATLAB code for giaoDien.fig
%      GIAODIEN, by itself, creates a new GIAODIEN or raises the existing
%      singleton*.
%
%      H = GIAODIEN returns the handle to a new GIAODIEN or the handle to
%      the existing singleton*.
%
%      GIAODIEN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GIAODIEN.M with the given input arguments.
%
%      GIAODIEN('Property','Value',...) creates a new GIAODIEN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before giaoDien_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to giaoDien_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help giaoDien

% Last Modified by GUIDE v2.5 11-Jan-2020 14:42:26

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @giaoDien_OpeningFcn, ...
                   'gui_OutputFcn',  @giaoDien_OutputFcn, ...
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


% --- Executes just before giaoDien is made visible.
function giaoDien_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to giaoDien (see VARARGIN)

% Choose default command line output for giaoDien
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes giaoDien wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = giaoDien_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file, path] = uigetfile({'*.jpg'; '*.png'; '*.*'});
full = strcat(path, file);
I = imread(full);
axes(handles.axes1);
imshow(I);
load('features.mat');

soAnh = 9;
soAnhCuaMotAnh = 2;

%tap train
for i=1:soAnh
    for j=1:soAnhCuaMotAnh
        k=5;
        row = (i-1)*2+j;
        row_fea = fea(row, :);
        img_fea = reshape(row_fea, 1, 1024);
        if (i == 1) && (j==1)
            train_set = img_fea;
            idx_train = row;
        else
            train_set = [train_set; img_fea];
            idx_train = [idx_train; row];
        end
    end
end

    x_test = int32(chuyen1dong(I(:,:,1)));
    x_test = repmat(x_test, soAnh*soAnhCuaMotAnh, 1);
    dist = x_test - train_set;
    euclid_dist = sqrt(sum(dist.^2,2));
    [sort_value, rank_idx] = sort(euclid_dist);
    knn = uint8(3);
    %lay 15 kq nho nhat

    predict_labels = gnd(rank_idx(1:knn));
    %dem so lan khop hinh nhieu nhat
   
    %tim so hinh xuat hien nhieu nhat
    max = 0;
    for k=1:knn
        x = predict_labels(k);
        max_replace = 0;
        for j=1:knn
            if x == predict_labels(j)
                max_replace = max_replace + 1;
            end
        end
        
        if(max_replace > max)
            max = max_replace;
            max_value = x;
        end
    end
    
    nameLogo = {'1000', '2000', '5000', '10000', '20000', '50000', '100000', '200000', '500000'};
    
    predict_label = max_value;
    viTri = (4* (max_value-1) + 1);   
    ImgT = chuyen_32x32(fea(viTri, :));
    rgbImageTarget = uint8(cat(3, ImgT, ImgT, ImgT));
    axes(handles.axes2);
    imshow(rgbImageTarget);
    set(handles.kq, 'string', nameLogo(max_value));

    %subplot(5,2,((i * 2) - 1)); image(reshape(fea(idx_test(i),:), 32, 32));
    %subplot(5,2,i * 2); image(reshape(fea(max_value,:), 32, 32));
