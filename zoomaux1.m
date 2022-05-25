function [h] = zoomaux1(a,b,F)
    m = length(F(:,1));
    n = length(F(1,:));
    h1 = 1:0.5:m;
    h2 = 1:0.5:n;
    h = [];

    for i = 1:length(h1)
        for j = 1:length(h2)
            h(i, j) = spline2(a,m+1,h1(i)) * spline2(b,n+1,h2(j));
        end

    end
end