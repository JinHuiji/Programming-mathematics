clear;clf;
nx = 18; ny = 25;
for i = 1:nx
  line([i i], [0 25])
end
for j = 1:ny
  line([0 nx], [j j])
end
axis image
