function GAMMA = AlleeFitApp(f)
N=6;
GAMMA=zeros(1,N+1);

xval=linspace(0,1,N);
xval=[xval, -1];
fval=zeros(N+1,1);
for i=1:N+1
fval(i)=feval(f,xval(i));
end
M=zeros(N+1,N+1);

for i=1:N+1
    XX=xval(i);
    for j=1:N
        M(i,j)= XX^(j-1) * (1-XX)^(N+1-j)*nchoosek(N-1,j-1);
    end
    M(i,N+1)= XX^N;
end
G=(M\fval);
GAMMA(1:N) = G(1:N);
GAMMA(N+1) = -G(end);



