clear;clf;
n = 30;
A = randi([1 1000],n,1)
s = 1000;
for i = 1:n
  if A(i)<s
     s = A(i);
     m = i;
  end
end
[s m]
plot(A,'linewidth',2);hold on
plot(m,A(m),'ro','linewidth',20)
