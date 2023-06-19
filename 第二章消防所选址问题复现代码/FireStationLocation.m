clear;clf;hold on
nx = 18; ny = 25;
for i = 0:nx
  line([i i], [0 25])
end
for j = 0:ny
  line([0 nx], [j j])
end

NoH = 50;
x = randi([0 nx],NoH,1);
y = randi([0 ny],NoH,1);
plot(x,y,'bo','linewidth',10)

for i = 0:nx
  for j = 0:ny
    d=0;
    for k = 1:NoH
      d = d + abs(x(k)-i)+abs(y(k)-j);
    end
    fire(i+1,j+1) = d;
  end
end

s = (nx+ny)*NoH
for i = 1:nx+1
  for j = 1:ny+1
    if fire(i,j) < s
      s = fire(i,j);
      m = i;
      n = j;
    end
  end
end
[m-1 n-1 s]
plot(m-1,n-1,'bs','linewidth',30);axis image;
figure(2);clf;mesh(fire);hold on;
plot(m,n,'b*','linewidth',30)
axis([0 nx 0 ny 0 max(max(fire))])



