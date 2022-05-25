function r = imagezoom(im)
%função que, dada uma imagem, devolve uma imagem com o dobro dos pixeis.
    im1 = cast(im, 'double');
    r1 = zoomaux2(im1(:,:,1));
    r2 = zoomaux2(im1(:,:,2));
    r3 = zoomaux2(im1(:,:,3));
    
    r4(:,:,1) = r1;
    r4(:,:,2) = r2;
    r4(:,:,3) = r3;
    
    r = cast(r4, 'uint8');
end