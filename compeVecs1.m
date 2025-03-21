A = importdata('mariana_depth (1).csv'); %get A
ATA = A'*A; %find A^TA
n = size(ATA,1); %get the number of rows in the first column of A^TA 
u = rand(n,1); %u is a random vector with n rows
u = u./norm(u); %normalize u

for i = 1:10 %about 10 iterations
    u = ATA*u; %apply A^TA to u
    u = u./norm(u); %normalize
end

v1 = u; %v1 is the eigenvector
%ATA*v1 (for when we want to inspect)
%upon inspection(compare ATAv1 to v1), lambda = 3.88e13
figure
plot(1:n,v1)
xlabel('Index');
ylabel('Component of v1');
title('Eigenvector v1 at each value');
grid on;