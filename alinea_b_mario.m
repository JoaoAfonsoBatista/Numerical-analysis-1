tic
im1 = imread('mario.png');


im11 = imagezoom(im1);

im12 = imagezoom(im11);

subplot(1,3,1), imshow(im1)
subplot(1,3,2), imshow(im11)
subplot(1,3,3), imshow(im12)

toc