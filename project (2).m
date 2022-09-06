function varargout = project(varargin)
% PROJECT MATLAB code for project.fig
%      PROJECT, by itself, creates a new PROJECT or raises the existing
%      singleton*.
%
%      H = PROJECT returns the handle to a new PROJECT or the handle to
%      the existing singleton*.
%
%      PROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT.M with the given input arguments.
%
%      PROJECT('Property','Value',...) creates a new PROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project

% Last Modified by GUIDE v2.5 03-Sep-2022 18:48:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_OpeningFcn, ...
                   'gui_OutputFcn',  @project_OutputFcn, ...
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


% --- Executes just before project is made visible.
function project_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project (see VARARGIN)

% Choose default command line output for project
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes project wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Point_operation_Callback(hObject, eventdata, handles)
% hObject    handle to Point_operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Addition_Callback(hObject, eventdata, handles)
% hObject    handle to Addition (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
im2=imread('imge2.jpg');
x=imadd(im1,im2);
subplot(1,3,1),imshow(im1),title('first image')
subplot(1,3,2),imshow(im2),title('Second image')
subplot(1,3,3),imshow(x),title('Addition')




% --------------------------------------------------------------------
function Substric_Callback(hObject, eventdata, handles)
% hObject    handle to Substric (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
im2=imread('imge2.jpg');
x=imsubtract(im1,im2);
subplot(1,3,1),imshow(im1),title('first image')
subplot(1,3,2),imshow(im2),title('Second image')
subplot(1,3,3),imshow(x),title('substract')




% --------------------------------------------------------------------
function Divison_Callback(hObject, eventdata, handles)
% hObject    handle to Divison (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
im2=imread('imge2.jpg');
x=imdivide(im1,im2);
subplot(1,3,1),imshow(im1),title('first image')
subplot(1,3,2),imshow(im2),title('Second image')
subplot(1,3,3),imshow(x),title('Division')

% --------------------------------------------------------------------
function Complement_Callback(hObject, eventdata, handles)
% hObject    handle to Complement (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('imge.jpg');
x=imcomplement(im1);
subplot(1,2,1),imshow(im1),title('Input image')
subplot(1,2,2),imshow(x),title('Complement')

% --------------------------------------------------------------------
function avg_Callback(hObject, eventdata, handles)
% hObject    handle to avg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('imge.jpg');
im2=imread('imge2.jpg');
x=(im1 + im2)/2;
subplot(1,3,1),imshow(im1),title('first image')
subplot(1,3,2),imshow(im2),title('Second image')
subplot(1,3,3),imshow(x),title('Avg')
% --------------------------------------------------------------------
function max_Callback(hObject, eventdata, handles)
% hObject    handle to point_operation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
im2=imread('imge2.jpg');
x=max(im1,im2);
subplot(1,3,1),imshow(im1),title('first image')
subplot(1,3,2),imshow(im2),title('Second image')
subplot(1,3,3),imshow(x),title('Max')


% --------------------------------------------------------------------
function Color_image_Callback(hObject, eventdata, handles)
% hObject    handle to Color_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Change_red_Callback(hObject, eventdata, handles)
% hObject    handle to Change_red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('imge2.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
r=r+100;
im2=cat(3,r,g,b);
subplot(2,1,1),imshow(im1),title('original') 
subplot(2,1,2),imshow(im2),title('Red Image + 100')


% --------------------------------------------------------------------
function Change_blue_Callback(hObject, eventdata, handles)
% hObject    handle to Change_blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge2.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
b=b+100;
im2=cat(3,r,g,b);
subplot(2,1,1),imshow(im1),title('original') 
subplot(2,1,2),imshow(im2),title('Blue Image + 100')


% --------------------------------------------------------------------
function Change_green_Callback(hObject, eventdata, handles)
% hObject    handle to Change_green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge2.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
g=g+100;
im2=cat(3,r,g,b);
subplot(2,1,1),imshow(im1),title('original') 
subplot(2,1,2),imshow(im2),title('Green Image + 100')


% --------------------------------------------------------------------
function SwapR2G_Callback(hObject, eventdata, handles)
% hObject    handle to SwapR2G (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
%swap r to G
temp=r;
r=g;
g=temp;
im2(:,:,1)=r;
im2(:,:,2)=g;
im2(:,:,3)=b;
subplot(1,2,1),imshow(im1),title('original')
subplot(1,2,2),imshow(im2), title('from RGB to GRB')


% --------------------------------------------------------------------
function SwapR2B_Callback(hObject, eventdata, handles)
% hObject    handle to SwapR2B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
%swap r to b
temp=r;
r=b;
b=temp;
im2(:,:,1)=r;
im2(:,:,2)=g;
im2(:,:,3)=b;
subplot(1,2,1),imshow(im1),title('original')
subplot(1,2,2),imshow(im2), title('from RGB to BRG')

% --------------------------------------------------------------------
function SwapG2B_Callback(hObject, eventdata, handles)
% hObject    handle to SwapG2B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
%swap g to b
temp=g;
g=b;
b=temp;
im2(:,:,1)=r;
im2(:,:,2)=g;
im2(:,:,3)=b;
subplot(1,2,1),imshow(im1),title('original')
subplot(1,2,2),imshow(im2), title('from RGB to RBG')


% --------------------------------------------------------------------
function Eliminate_Red_Callback(hObject, eventdata, handles)
% hObject    handle to Eliminate_Red (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
r=r-r;
im2=cat(3,r,g,b);
subplot(1,2,1),imshow(im1),title('original') 
subplot(1,2,2),imshow(im2),title('Eliminate Red of Image')


% --------------------------------------------------------------------
function Eliminate_Green_Callback(hObject, eventdata, handles)
% hObject    handle to Eliminate_Green (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
g=g-g;
im2=cat(3,r,g,b);
subplot(1,2,1),imshow(im1),title('original') 
subplot(1,2,2),imshow(im2),title('Eliminate Green of Image')


% --------------------------------------------------------------------
function Eliminate_Blue_Callback(hObject, eventdata, handles)
% hObject    handle to Eliminate_Blue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
b=b-b;
im2=cat(3,r,g,b);
subplot(1,2,1),imshow(im1),title('original') 
subplot(1,2,2),imshow(im2),title('Eliminate Blue of Image')


% --------------------------------------------------------------------
function Histogram_Stretching_Callback(hObject, eventdata, handles)
% hObject    handle to Histogram_Stretching (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Histogram_Equalization_Callback(hObject, eventdata, handles)
% hObject    handle to Histogram_Equalization (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Equaliz_gray_Callback(hObject, eventdata, handles)
% hObject    handle to Equaliz_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('pout.tif');
subplot (1,2,1),imshow(im1),title('Image');
subplot (1,2 ,2),imhist(im1),title('Histogram of image');
xlabel('gray level');ylabel('#of pixels');



% --------------------------------------------------------------------
function Equaliz_RGB_Callback(hObject, eventdata, handles)
% hObject    handle to Equaliz_RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
subplot(2,3 ,2); imshow(im1),title('Image');
subplot(2,3,4),r1=imhist(r),bar(r1,'r'),title('hist Red');
subplot(2,3,5),g1=imhist(g),bar(g1,'g'),title('hist Green');
subplot(2,3,6),b1=imhist(b),bar(b1,'b'),title('hist Blue');


% --------------------------------------------------------------------
function gray_image_Callback(hObject, eventdata, handles)
% hObject    handle to gray_image (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('pout.tif');
subplot(2,2,1),imshow(im1),title('original image');
subplot(2,2,2),imhist(im1),subplot(2,2,3);

stretch=imadjust(im1);
imshow(stretch),title('After stretching'),subplot(2,2,4);
imhist(stretch);


% --------------------------------------------------------------------
function RGB_Callback(hObject, eventdata, handles)
% hObject    handle to RGB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
r=im1(:,:,1);
g=im1(:,:,2);
b=im1(:,:,3);
subplot(2,3,1),title('R Histo'),h1=imhist(r),bar(h1,'r');
subplot(2,3,2),title('G Histo'),h2=imhist(g),bar(h2,'g');
subplot(2,3,3),title('B Histo'),h3=imhist(b),bar(h3,'b');

r1=histeq(r),g1=histeq(g),b1=histeq(b);
y=cat(3,r1,g1,b1);
subplot(2,3,4),title('R Histo Gamma'),r=imhist(r1),bar(r,'r');
subplot(2,3,5),title('G Histo Gamma'),g=imhist(g1),bar(g,'g');
subplot(2,3,6),title('B Histo Gamma'),b=imhist(b1),bar(b,'b');
subplot(1,2,1),imshow(im1),title('original')
subplot(1,2,2),imshow(y),title('After Gamma Correction')


% --------------------------------------------------------------------
function Neighborhood_processing_Callback(hObject, eventdata, handles)
% hObject    handle to Neighborhood_processing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Lineer_Filter_Callback(hObject, eventdata, handles)
% hObject    handle to Lineer_Filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Non_lineer_Callback(hObject, eventdata, handles)
% hObject    handle to Non_lineer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --------------------------------------------------------------------
function min_Callback(hObject, eventdata, handles)
% hObject    handle to min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('cameraman.tif');
mine=colfilt(im1,[3 3],'sliding' ,@min);
subplot(2,1,1),imshow(im1),title('Orignal');
subplot(2,1,2),imshow(mine);title('min');




% --------------------------------------------------------------------
function Rank_Callback(hObject, eventdata, handles)
% hObject    handle to Rank (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
rank=ordfilt2(im1,5,ones(3 ,3));
subplot(2,1,1),imshow(im1),title('Orignal');
subplot(2,1,2),imshow(rank);title('rank');

% --------------------------------------------------------------------
function Median_Callback(hObject, eventdata, handles)
% hObject    handle to Median (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
medain=medfilt2(im1);
subplot(2,1,1),imshow(im1),title('Orignal');
subplot(2,1,2),imshow(medain);title('medain');


% --------------------------------------------------------------------
function Mode_Callback(hObject, eventdata, handles)
% hObject    handle to Mode (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

im1=imread('cameraman.tif');
c1f5 = colfilt(im1,[5 5],'sliding',@mode);
subplot(2,1,1),imshow(im1),title('Original');
subplot(2,1,2),imshow(c1f5),title('mode filter');

% --------------------------------------------------------------------
function AVG_Callback(hObject, eventdata, handles)
% hObject    handle to AVG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
liner_filter=fspecial('average');
r=imfilter(im1(:,:,1),liner_filter);
g=imfilter(im1(:,:,2),liner_filter);
b=imfilter(im1(:,:,3),liner_filter);
after1=cat(3,r,g,b);
subplot(2,1,1),imshow(im1),title('Original');
subplot(2,1,2),imshow(after1),title('after filter');
% --------------------------------------------------------------------
function Laplacain_Callback(hObject, eventdata, handles)
% hObject    handle to Laplacain (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('imge.jpg');
f2=fspecial('laplacian');
r=imfilter(im1(:,:,1),f2);
g=imfilter(im1(:,:,2),f2);
b=imfilter(im1(:,:,3),f2);
after1=cat(3,r,g,b);
subplot(2,1,1),imshow(im1),title('Original');
subplot(2,1,2),imshow(after1),title('after filter');


% --------------------------------------------------------------------
function maxfilter_Callback(hObject, eventdata, handles)
% hObject    handle to maxfilter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
im1=imread('cameraman.tif');
min=colfilt(im1,[3 3],'sliding' ,@max);
subplot(2,1,1),imshow(im1),title('Orignal');
subplot(2,1,2),imshow(min);title('max');


% --------------------------------------------------------------------
function Restoration_Callback(hObject, eventdata, handles)
% hObject    handle to Restoration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function salt_and_paper_Callback(hObject, eventdata, handles)
% hObject    handle to salt_and_paper (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function gaussian_Callback(hObject, eventdata, handles)
% hObject    handle to gaussian (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function img_averg_Callback(hObject, eventdata, handles)
% hObject    handle to img_averg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= imread('eight.tif');
[r c h]=size(x);
g=zeros(r ,c,10);
for i=1:10
    g(:,:,i)=imnoise(x,'gaussian');
   subplot(2,5,i),imshow(mat2gray(g(:,:,i)))
end
res=mat2gray(mean(g,3));
imshow(res);



% --------------------------------------------------------------------
function averging_filter_Callback(hObject, eventdata, handles)
% hObject    handle to averging_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x= imread('eight.tif');
subplot(1,3,1)
imshow(x)
 y= imnoise(x,'gaussian');
subplot(1,3,2)
imshow(y)
h=fspecial('average');
B2=imfilter(y,h);
subplot(1,3,3)
imshow(B2)


% --------------------------------------------------------------------
function Untitled_10_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Avg_filter_Callback(hObject, eventdata, handles)
% hObject    handle to Avg_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= imread('eight.tif');
subplot(1,3,1),imshow(x),title('original')
y= imnoise(x,'salt & pepper',.05);
subplot(1,3,2),imshow(y),title('noise')
h=fspecial('average',[7 7]);
B2=imfilter(y,h);
subplot(1,3,3),imshow(B2),title('restoration')

% --------------------------------------------------------------------
function medain_filter_Callback(hObject, eventdata, handles)
% hObject    handle to medain_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= imread('eight.tif');
subplot(1,3,1),imshow(x),title('original')
y= imnoise(x,'salt & pepper',.05);
subplot(1,3,2),imshow(y),title('Noise')
B2=medfilt2 (y,[3 3]);
subplot(1,3,3),imshow(B2),title('Clear')


% --------------------------------------------------------------------
function rank_filter_Callback(hObject, eventdata, handles)
% hObject    handle to rank_filter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

x= imread('eight.tif');
subplot(1,3,1),imshow(x)
y= imnoise(x,'salt & pepper',.05);
subplot(1,3,2),imshow(y)
B2=ordfilt2 (y,5,ones(3,3));
subplot(1,3,3),imshow(B2)

% --------------------------------------------------------------------
function Outlir_Callback(hObject, eventdata, handles)
% hObject    handle to Outlir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x= imread('eight.tif');
subplot(1,3,1)
imshow(x)
y= imnoise(x,'salt & pepper',.05);
subplot(1,3,2)
imshow(y)
f=[1/8 1/8 1/8;
   1/8  0  1/8;
   1/8 1/8 1/8];
d=.4;
im=im2double(y);
imf=filter2(f,im);
r=abs(im-imf)-d>0;
res=im2uint8((r.*imf)+(1-r).*im);
subplot(1,3,3),imshow(res)


% --------------------------------------------------------------------
function Segmantion_Callback(hObject, eventdata, handles)
% hObject    handle to Segmantion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Basic_global_Callback(hObject, eventdata, handles)
% hObject    handle to Basic_global (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image=imread('imge.jpg');
image1 = rgb2gray(image);

subplot(1,2,1) , imshow(image1)
subplot(1,2,2),imshow(image1>130)

figure,imhist(image1)


% --------------------------------------------------------------------
function Automate_Callback(hObject, eventdata, handles)
% hObject    handle to Automate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=imread('rice.png');
Theta = mean2(f); 
 done = 0;
 while ~done 
g = (f >=Theta);
m1=mean(f(g));
m2=mean(f(~g));
Th_next = 0.5*( m1+ m2);   
done = abs(Theta - Th_next) < 0.5;   
Theta = Th_next;   
 end 
 x=im2bw(f,Theta/255);
 subplot(1,2,1), imshow(f),title('Original')
 subplot(1,2,2),imshow(x),title('After Automatic')



% --------------------------------------------------------------------
function Adabtive_Callback(hObject, eventdata, handles)
% hObject    handle to Adabtive (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Image = imread('imge.jpg');
f=imfilter(Image,fspecial('average',[195 195]));
diff=abs(Image-f);
bw=im2bw(diff,0);
subplot(2,1,1),imshow(Image)
subplot(2,1,2),imshow(bw)


% --------------------------------------------------------------------
function Edge_Detection_Callback(hObject, eventdata, handles)
% hObject    handle to Edge_Detection (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_19_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function dilation_Callback(hObject, eventdata, handles)
% hObject    handle to dilation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=imread('imge.jpg');
A=im2bw(A);
B=[1 1 1 1 1 1 1;];
C=padarray(A,[0 3]);
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-6
        D(i,j)=sum(B&C(i,j:j+6));
    end
end
subplot(1,2,1),imshow(A),title('Original');
subplot(1,2,2),imshow(D),title('Dilation');



% --------------------------------------------------------------------
function erosion_Callback(hObject, eventdata, handles)
% hObject    handle to erosion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

A=imread('imge.jpg');
A=im2bw(A);
B=[1 1 0];
C=padarray(A,[0 1],1);
D=false(size(A));
for i=1:size(C,1)
    for j=1:size(C,2)-2
        L=C(i,j:j+2);
        K=find(B==1);
       if(L(K)==1)
        D(i,j)=1;
        end
    end
end
subplot(1,2,1),imshow(A),title('Original');
subplot(1,2,2),imshow(D),title('Erosion');


% --------------------------------------------------------------------
function opening_Callback(hObject, eventdata, handles)
% hObject    handle to opening (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread('imge.jpg');
se=strel('disk',5);
Op=imopen(image,se);
subplot(1,2,1),imshow(image),title('Original');
subplot(1,2,2),imshow(Op),title('Opening');



% --------------------------------------------------------------------
function Boundry_Callback(hObject, eventdata, handles)
% hObject    handle to Boundry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_16_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
image=imread ('imge.jpg');
image=rgb2gray(image);
edge_s= edge(image,'sobel');
subplot(1,2,1),imshow (image)
title('original')
subplot(1,2,2),imshow (edge_s)
title('sobel operator')

% --------------------------------------------------------------------
function prewit_Callback(hObject, eventdata, handles)
% hObject    handle to prewit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image=imread ('imge.jpg');
image=rgb2gray(image);
edge_s= edge(image,'prewitt');
subplot(1,2,1),imshow (image)
title('original')
subplot(1,2,2),imshow (edge_s)
title('prewitt operator')

% --------------------------------------------------------------------
function roberts_Callback(hObject, eventdata, handles)
% hObject    handle to roberts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

image=imread ('imge.jpg');
image=rgb2gray(image);
edge_s= edge(image,'Roberts');
subplot(1,2,1),imshow (image)
title('original')
subplot(1,2,2),imshow (edge_s)
title('Roberts operator')

% --------------------------------------------------------------------
function internal_Callback(hObject, eventdata, handles)
% hObject    handle to internal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=imread('imge.jpg');
sq=ones(3,3);
       td=imerode(x, sq);
       in=abs(x-td);
       subplot(1,2,1),imshow(x)
       title('binary')
       subplot(1,2,2),imshow(in)
       title('internal boundry')


% --------------------------------------------------------------------
function external_Callback(hObject, eventdata, handles)
% hObject    handle to external (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x=imread('imge.jpg');
       sq=ones(3,3);
       td2=imdilate(x, sq);
       ex=abs(td2-x);
       subplot(1,2,1),imshow(x)
       title('binary')
       subplot(1,2,2),imshow(ex)
       title('external boundry')


% --------------------------------------------------------------------
function gradient_Callback(hObject, eventdata, handles)
% hObject    handle to gradient (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 x=imread('imge.jpg');
         sq=ones(3,3);
         td=imerode(x, sq);
         td2=imdilate(x, sq);
         mg=abs(td2-td);
         subplot(1,2,1),imshow(x)
         title('binary')
         subplot(1,2,2),imshow(mg)
         title('morplological gradient')
