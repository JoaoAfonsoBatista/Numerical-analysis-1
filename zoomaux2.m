function [h] = zoomaux2(F)
%função que, dada uma matriz m por n, 
%devolve uma matriz 2m-1 por 2n-1, que tem os pontos da outra e os pontos
%intermédios.
    m = length(F(:,1));
    n = length(F(1,:));
    h1 = 1:0.5:m;
    h2 = 1:0.5:n;
    
    h = zeros(length(h1), length(h2));
    for i = 1:m
        for j = 1:n
            h = h + F(i,j) * zoomaux1(i,j,F);
        end
    end
    for i = 1:length(h)
        for j = 1:length(h(1,:))
            if h(i,j) <0
                h(i,j) = 0;
            end
        end
    end
end