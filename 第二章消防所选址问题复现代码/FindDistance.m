clear;clf;hold on
nx = 18; ny = 25;
for i = 1:nx
  line([i i], [0 25])
end
for j = 1:ny
  line([0 nx], [j j])
end
NoH = 30;
x = randi([0 nx],NoH,1);
y = randi([0 ny],NoH,1);
plot(x,y,'bo','linewidth',10)
i = 5; j = 12;
plot(i,j,'rs','linewidth',10)
axis image
d = 0;
for k = 1:NoH
  d = d + abs(x(k)-i)+abs(y(k)-j);
end
d
