function [QQ,X]=IBMapp(RM,RP,RD,M,TEND,Y)
%modified from 2A, but uses individual rates rather than r_I <M and G
%otherwise.

m=M; % initial seeding
n=60; %lattice nodes in each direction
n2=60;

Tend=TEND;
NN=length(RM);

%% Construct nearest neighbour index structure (S)
XX=zeros(n,n2);
YY=zeros(n,n2);
for i=1:n
    for j=1:n2
        if mod(j,2)==0
            XX(i,j)=i;
            YY(i,j)=j*sqrt(3)/2;
        else
            XX(i,j)=i+1/2;
            YY(i,j)=j*sqrt(3)/2;
        end
    end
end

r=(-1+sqrt(1+4*(NN-1)/3))/2;
S=(n*n2+1)*ones(n*n2,NN-1);

for i=1:n
    for j=1:n2
        Z=(XX-XX(i,j)).^2+(YY-YY(i,j)).^2-r^2;
        V=find(Z<=1e-1 & Z>-r^2);
        S(i+(j-1)*n,1:length(V))=V;
        %
        %             disp(length(V))
        %             disp(XX(i,j))
        %             disp(YY(i,j))
        %             disp([i,j])
        %
        %             C=zeros(n,n);
        %             C(Z<=1e-1)=1;
        %             figure(800)
        %             hold off
        %             plot3(XX(C==1),YY(C==1),C(C==1),'ro');view(0,90)
        %             axis equal
        %             hold on
        %             t=linspace(-r,r,1000);
        %             plot(t+XX(i,j),sqrt(r^2-t.^2)+YY(i,j),'k')
        %              plot(t+XX(i,j),-sqrt(r^2-t.^2)+YY(i,j),'k')
        %              pause(0.01)
        

    end
end
S(S==0)=n*n2+1;


%% Gillespie
parfor i=1:Y
     C=double(rand(n,n2)<m);
    Q0=sum(sum(C));
    while Q0==0
        C=double(rand(n,n2)<m);
        Q0=sum(sum(C));
    end
    Q=Q0;
    C(1,n2+1)=0; %this is the pointer for all 'null values' of boundary sites


    T=0;
    j=1;
    tau=0;
    

    
    
    
    
    
    %NB: different definition of steps for MODEL 2. n can be any integer.
    Qend=Q0;
    
    Jx=randi([1,n],1,10000);
    Jy=randi([1,n2],1,10000);
    W=rand(1,10000);
    W2=rand(1,10000);
    W3=rand(1,10000);
    y=1;
    while T<Tend && Qend<n*n2 && Qend>0
        if C(1,n2+1)~=0
            disp('FATAL ERROR')
        end
        %find a random occupied site
        while C(Jx(y),Jy(y))==0
            y=y+1;
            if y==10001
                Jx=randi([1,n],1,10000);
                Jy=randi([1,n2],1,10000);
                W=rand(1,10000);
                W2=rand(1,10000);
                W3=rand(1,10000);
                y=1;
                %                 figure(392)
                %                 hist(NH)
                %                 pause(.1)
                %                 NH=[];
            end
        end
        JX=Jx(y);
        JY=Jy(y);
        JJ=JX+(JY-1)*n;
        %JN=S(JJ,:);
        Near=sum(C(S(JJ,:)));
        %         NH=[NH Near];
        P1=RM(Near+1);
        P2=RP(Near+1);
        P3=RD(Near+1);
        tau(j+1)=tau(j)+log(1/W3(y))/((P1+P2+P3)*Q(j));
        R=(P1+P2+P3)*Q(j)*W2(y);
        Q(j+1)=Q(j);
        
        if R<P1*Q(j)
            % cell movement
            I=ceil(W(y)*6);
            
            if I==1
                Ind = [JX+1 JY];
            elseif I==2
                Ind = [JX-1 JY];
            elseif I==3
                Ind = [JX JY+1];
            elseif I==4
                Ind = [JX JY-1];
            elseif I==5
                if mod(JX,2)==0
                    Ind = [JX-1 JY+1];
                else
                    Ind = [JX-1 JY-1];
                end
            else
                if mod(JX,2)==0
                    Ind = [JX+1 JY+1];
                else
                    Ind = [JX+1 JY-1];
                end
            end
            
            %
            %
            %             if mod(JX,2)==0
            %                 KK=[JX+1 JY; JX-1 JY; JX JY+1; JX JY-1; JX-1 JY+1; JX+1 JY+1];
            %             else
            %                 KK=[JX+1 JY; JX-1 JY; JX JY+1; JX JY-1; JX-1 JY-1; JX+1 JY-1];
            %             end
            %             Ind = KK(I,:);
            
            if Ind(1)<=n && Ind(2)<=n2 && Ind(1)>0 && Ind(2)>0 && ...
                    C(Ind(1),Ind(2))==0
                C(Ind(1),Ind(2))=1;
                C(JX,JY)=0;
            else
                %movement does not happen
            end
            
            
        elseif R<(P1+P2)*Q(j)
            % cell proliferation
            
            I=ceil(W(y)*6);
            if I==1
                Ind = [JX+1 JY];
            elseif I==2
                Ind = [JX-1 JY];
            elseif I==3
                Ind = [JX JY+1];
            elseif I==4
                Ind = [JX JY-1];
            elseif I==5
                if mod(JX,2)==0
                    Ind = [JX-1 JY+1];
                else
                    Ind = [JX-1 JY-1];
                end
            else
                if mod(JX,2)==0
                    Ind = [JX+1 JY+1];
                else
                    Ind = [JX+1 JY-1];
                end
            end
            
            %             if mod(JX,2)==0
            %                 KK=[JX+1 JY; JX-1 JY; JX JY+1; JX JY-1; JX-1 JY+1; JX+1 JY+1];
            %             else
            %                 KK=[JX+1 JY; JX-1 JY; JX JY+1; JX JY-1; JX-1 JY-1; JX+1 JY-1];
            %             end
            %             Ind = KK(I,:);
            
            if Ind(1)<=n && Ind(2)<=n2 && Ind(1)>0 && Ind(2)>0 && ...
                    C(Ind(1),Ind(2))==0
                C(Ind(1),Ind(2))=1;
                Q(j+1)=Q(j+1)+1;
            else
                %prolif does not happen
            end
            
        else
            %cell death
            C(JX,JY)=0;
            Q(j+1)=Q(j+1)-1;
        end
        
        
        I0=0;
        
        
        % Cluster tracker
        %         Q2=sum(C(S(C>0,:)),2);
        %         I0=length(find(Q2<=NN));
        
        
        %                 V=find(C);
        % %         for k=1:length(V)
        % %             JJ=S(V(k),:);
        % %             if sum(C(JJ(JJ>0)))<=NN %NN of occupied site V below threshold
        % %                 I0=I0+1;
        % %             end
        % %         end
        T=tau(j+1);
        Qend=Q(j+1);
        j=j+1;
        y=y+1;
        

        
       
        
        if y==10001
            Jx=randi([1,n],1,10000);
            Jy=randi([1,n2],1,10000);
            W=rand(1,10000);
            W2=rand(1,10000);
            W3=rand(1,10000);
            y=1;
        end
    end
    X=linspace(0,Tend,1000);
    [tau,U]=unique(tau,'first');
    Q=Q(U);
    G2=griddedInterpolant(tau,Q/(n*n2),'nearest');
    Qi(i,:)=G2(X);
    %G3=griddedInterpolant(tau,Lone/n^2);
    %Li(i,:)=0;%G3(X);
end
X=linspace(0,Tend,1000);
% nbins=40;
% nC=linspace(0,1,nbins+1);
% HH=zeros(length(X),nbins);
% for i=1:length(X)
%     h=histcounts(Qi(:,i),nC);
%     HH(i,:)=h/max(h);
% end

QQ=mean(Qi,1);
% figure(551)
% hold off
% set(gca,'FontSize',18)
% plot(X,QQ,'k','LineWidth',2)
% hold on
%
% % sol = ode23s(@fisher,[0 Tend], m);
% % Z=sol.x;
% % W=sol.y;
% %
% %
% % plot(Z,W,'k--','LineWidth',2)
% axis([0 Tend 0 1])
% set(gca,'FontSize',18)
% xlabel('Time T')
% ylabel('Agent Density')
% %legend('Total Agents (C)','Individual Agents (I)')
% figure(71)
% spy(C)
% MultiHexODE3(RM,RP,RD,m,Tend)
% H=zeros(1,n^2);
% for i=1:n^2
%     if C(i)==1
%     H(i)=sum(C(S(i,:)));
%     end
% end
% figure(492)
% h=histogram(H,0:7);
% h.Values-[0 0 2 n 2*(n-2) n 0]
