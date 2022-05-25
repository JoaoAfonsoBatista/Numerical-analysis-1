%isto demora 20 minutos a correr... prosseguir com precaução
tic
im1 = imread('charizard.png');


im11 = imagezoom(im1);

im12 = imagezoom(im11);

im13 = imagezoom(im12);

subplot(1,4,1), imshow(im1)
subplot(1,4,2), imshow(im11)
subplot(1,4,3), imshow(im12)
subplot(1,4,4), imshow(im13)

toc