function [P,W,Y] = AlleeExpFit(Model,data,X0)

warning('off','all')


if Model ==1
    f =@(C,X) X(2).*C.*(1-C./X(3));
    
elseif Model ==2
    f =@(C,X) X(2).*C.*(1-C./X(3)).*(C./X(4)+1);
    
elseif Model ==3
    f =@(C,X) X(2).*C.*(1-C./X(3)).*(C./X(4)-1);
    
else
    K=X0(3);
    %X0=[X0(1) X0(2) X0(5) X0(4)];
    f =@(C,X) X(2).*C.*(1-C/X(3)).*(C./X(4)-1).*(C/X(5)-1);
    
    
end


sol=@(X) ODEsol(X,data(:,1),f);
if Model<3
    Err=@(X) norm(abs(sol(X)-data(:,2))) + 1e20*(min(X)<0);
elseif Model<4
   Err=@(X) norm(abs(sol(X)-data(:,2))) + 1e20*(min(X)<0) + ...
        1e20*(X(4)>X(3));
else
    Err=@(X) norm(abs(sol(X)-data(:,2))) + 1e20*(min(X)<0)+ ...
       1e20*(max(X(4:5)>X(3)));%+1e20*(X(3)>X(4));
    
end

P = fminsearch(@(x) Err(x),X0);
if Model==4
    %P=[P(1) P(2) K P(4) P(3)];
end
Fsoln=ode45(@(t,x) f(x,P),data(:,1),P(1));
W=linspace(0,data(end,1),500);
Y=deval(Fsoln,W)';

end

function Y=ODEsol(X,data,f)

soln=ode45(@(t,x) f(x,X),data(:,1),X(1));
if max(soln.x)<data(end,1)
    Y=1e10*ones(1,length(data(:,1)))';
else
    Y=deval(soln,data(:,1))';
end
end
