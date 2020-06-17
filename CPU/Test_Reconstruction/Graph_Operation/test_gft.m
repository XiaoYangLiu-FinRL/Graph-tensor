tic;
L = load('~/data/sensor1000.txt');
[U, S] = eig(L);
U=U';
[k,~]=size(L);
m = 1000;
n = 1000;
f = rand(m,n,k);
F = graph_fourier_transform(f, U); 
%F=f*L;
toc;
disp(['nodes: ',num2str(k)]);
disp(['runtime: ',num2str(toc)]);