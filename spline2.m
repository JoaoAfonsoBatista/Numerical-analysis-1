function[r]=spline2(indice, tamanho, a)
    %esta função calcula o valor, na abciça a, do spline que interpola os
    %naturais até "tamanho" no valor zero, excepto o natural "indice", que
    %é interpolado no valor 1.
    n=tamanho;
    f = zeros(tamanho,1); %valores dos pontos que serão interpolados.
    f(indice+1) = 1;
    d=[];
    for k = 1:(n-1)
        d=[d f(k+1)-f(k)]; %diferenças divididas.
    end
    d2=[]; 
    for k = 1:(n-2)
        d2=[d2 d(k+1) - d(k)];%mais diferenças divididas.
    end
    d2=d2';

    k=(1/6)*ones(n-3);
    h=(2/3)*eye(n-2)+diag(k(:,1),-1)+diag(k(:,1),1); %formar a matriz 

    s2=[0 (h\d2)' 0];  %calcular o vetor com as segundas derivadas

    s1=[];
    for k = 1:(n-1)
        s1 = [s1 d(k) - 1/6*(2*s2(k) + s2(k+1))]; %calcular o vetor com as derivadas
    end

    
    a1 = floor(a);
    a2 = ceil(a);

    a3 = mod(a,1); %calcular o valor do spline em a
    if a3 == 0
        a3 = 1;
    end
    r = f(a2) + a3 * s1(a2) + (a3^2 * (s2(a2) / 2)) + ( a3^3 * (s2(a2+1) - s2(a2)) / 6 );
    
end