function [RPP,ALPHA]=AlleeApp(f)

%using Alleefit, which determines the gamma vector and is input accordingly.
GAMMA = AlleeFitApp(f);
N=length(GAMMA);
GAMMA=GAMMA+1e-8*ones(1,N);


%binary alpha
ALPHA=zeros(1,N);
RPP=zeros(1,N);

for i=2:N-1
    if GAMMA(i)>=0
        RPP(i)=GAMMA(i);
    else
        RPP(i)=-GAMMA(i)*(N-i)/(i-1);
        ALPHA(i)=1;
    end
end


RPP(7)=GAMMA(7);

if GAMMA(7)<1e-7
    ALPHA(7)=0;
else
    ALPHA(7)=1;
end

if GAMMA(1)<0
    RPP(1)=max(RPP(2:7));
    ALPHA(1)=1-GAMMA(1)/RPP(1);
else
    RPP(1)=GAMMA(1);
    ALPHA(1)=0;
end

end
