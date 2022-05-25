function [x] = superficie(F,y1,y2)
    %calcula a o valor x da superficie no ponto(y1,y2)
    m = length(F(:,1));
    n = length(F(1,:));
    a = [];
    %este ciclo calcula, para cada "superficie spline", o seu valor em x.
    for i = 1:m
        for j = 1:n
           a(i,j) = F(i,j) * spline2(i,m+1,y1) * spline2(j,n+1,y2);
        end
    end
    b = 0;
    for i = 1:length(a(:,1))
        for j = 1:length(a(1,:))
            b = b + a(i,j);
        end
        x = b;
end
