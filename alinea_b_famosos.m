tic
im1 = imread('starry sky.png');
im2 = imread('brinco perola.png');
im3 = imread('einstein.png');
im4 = imread('grito.png');


im11 = imagezoom(im1);
im21 = imagezoom(im2);
im31 = imagezoom(im3);
im41 = imagezoom(im4);

subplot(2,4,1), imshow(im1)
subplot(2,4,2), imshow(im11)
subplot(2,4,3), imshow(im2)
subplot(2,4,4), imshow(im21)
subplot(2,4,5), imshow(im3)
subplot(2,4,6), imshow(im31)
subplot(2,4,7), imshow(im4)
subplot(2,4,8), imshow(im41)
toc