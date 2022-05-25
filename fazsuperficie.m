function [] = fazsuperficie(F)
    %calcula o valor da superficie em todos os valores de uma grelha fina e cria o gr�fico da sua superf�cie.
    m = length(F(:,1));
    n = length(F(1,:));
    h = 1:0.1:m;
    h2 = 1:0.1:n;
    for i = 1:length(h)
        for j = 1:length(h2)
            h1(i,j) = superficie(F, h(i), h2(j));
        end
    end
    surf(h2,h,h1)
end

