A = importdata('mariana_depth (1).csv'); %get A
ATA = A'*A; %find A^TA
n = size(ATA,1); %get the number of rows in the first column of A^TA
V = zeros(n,50); %matrix of evecs
E = zeros(50,1); %matrix of evals

for i = 1:50
    u1 = rand(n,1); %random unit vector of mag 1
    u1 = u1./norm(u1);
    
    for k = 1:10 %loop for error reduction
        sum = 0; 
        u1 = ATA*u1; %apply A^T A to u1
        for j = 1:(i-1)
            sum = sum+(u1'*V(:,j))*V(:,j); %create the orthogonal sum
        end
        u1 = u1-sum; %subtract the sum from u1
        u1 = u1/norm(u1);
    end
    V(:,i) = u1; %reassign v column
    V1 = ATA*V(:,i); %scaled version of eigenvector
    E(i) = u1'*ATA*u1; %eigenvalue is the ratio between first entry of scaled and unscaled evec
end


semilogy(1:50,abs(E), 'o-'); %create the semilogarithmic graph
xlabel('Index');
ylabel('Eigenvalue (log scale)');
title('Semilog Plot of Eigenvalues');
grid on;