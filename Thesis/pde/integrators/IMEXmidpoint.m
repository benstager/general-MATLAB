function [ys,cpu_time] = IMEXmidpoint(L,Nl,tspan,y0,N)



ys = zeros(length(y0),N+1);
ys(:,1) = y0;
y = y0;
dt = diff(tspan)/N;
I = speye(length(y0));

tic
for i = 1:N
    k1_hat = Nl(y);
    k1 = L*(I-dt/2*L)^-1*(y+dt/2*k1_hat);
    k2_hat = Nl(y+dt/2*(k1+k1_hat));
    y = y+dt*(k1+k2_hat);
    % y = y+dt*(L*(I-dt/2*L)^-1*(y+dt/2*Nl(y)) + Nl(y+dt/2*(L*(I-dt/2*L)^-1*(y+dt/2*Nl(y)))+dt/2* Nl(y)));
    ys(:,i+1) = y;
end
cpu_time = toc;
