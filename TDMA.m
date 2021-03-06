function time=TDMA(matrix,n)
time=clock;
b= ones(1,n);
for i=1:n
    d(i)=matrix(i,i);
    if i<n
        c(i)=matrix(i,i+1);
        a(i)=matrix(i+1,i);
    end
end
for i=2:n
    d(i)=d(i)-(c(i-1)*a(i-1))/d(i-1);
    b(i)= b(i) - (b(i-1)*a(i-1))/d(i-1);
end
clear a
x = zeros(n,1);
x(n) = b(n)/d(n);
for i=n-1:-1:1
    x(i)=(b(i)-c(i)*x(i+1))/d(i);
end
% disp("TDMA Root")
% x
clear x
time=etime(clock,time);
end