function [P,W,Y,W2,Y2] = HAexpfit(data,data2,X0)

 f =@(C,X) X(2).*C.*(1-C./X(3)).*(C./X(4)-1).*(C/X(5)-1);



sol=@(X) ODEsol(X,data(:,1),f);
sol2=@(X) ODEsol2(X,data2(:,1),f);

Err=@(X) norm(abs(sol(X)-data(:,2))) + 1e20*(min(X)<0);
Err2=@(X) norm(abs(sol2(X)-data2(:,2))) + 1e20*(min(X)<0);



P = fminsearch(@(x) Err(x)+Err2(x),X0);
P(3:5) = sort(P(3:5),'descend');

Fsoln=ode45(@(t,x) f(x,P),data(:,1),P(1));
Fsoln2=ode45(@(t,x) f(x,P),data(:,1),P(6));
W=linspace(0,data(end,1),500);
W2=linspace(0,data2(end,1),500);
Y=deval(Fsoln,W)';
Y2=deval(Fsoln2,W2)';

end
function Y=ODEsol(X,data,f)
soln=ode45(@(t,x) f(x,X),data(:,1),X(1));
if max(soln.x)<data(end,1)
    Y=1e10*ones(1,length(data(:,1)))';
else
    Y=deval(soln,data(:,1))';
end
end
function Y=ODEsol2(X,data,f)
soln=ode45(@(t,x) f(x,X),data(:,1),X(6));
if max(soln.x)<data(end,1)
    Y=1e10*ones(1,length(data(:,1)))';
else
    Y=deval(soln,data(:,1))';
end
end
