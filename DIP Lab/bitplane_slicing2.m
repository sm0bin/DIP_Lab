clc;
clear all;
close all;

c = imread('cameraman.tif');
% c = rgb2gray(c);    %If the image is rgb
cd = double(c);

c1 = mod(cd, 2);
c2 = mod(floor(cd/2), 2);
c3 = mod(floor(cd/4), 2);
c4 = mod(floor(cd/8), 2);
c5 = mod(floor(cd/16), 2);
c6 = mod(floor(cd/32), 2);
c7 = mod(floor(cd/64), 2);
c8 = mod(floor(cd/128), 2);

subplot 331, imshow(c), title('Original Image');
subplot 332, imshow(c1), title('Bit Plane 1');
subplot 333, imshow(c2), title('Bit Plane 2');
subplot 334, imshow(c3), title('Bit Plane 3');
subplot 335, imshow(c4), title('Bit Plane 4');
subplot 336, imshow(c5), title('Bit Plane 5');
subplot 337, imshow(c6), title('Bit Plane 6');
subplot 338, imshow(c7), title('Bit Plane 7');
subplot 339, imshow(c8), title('Bit Plane 8');

cc = (2*(2*(2*(2*(2*(2*(2*c8+c7)+c6)+c5)+c4)+c3)+c2)+c1);
figure, imshow(uint8(cc)), title('Recombined Image');