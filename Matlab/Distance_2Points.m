% Goal of code is to find expected value and variance of the distance between two points in the unit circle

tot1 = 0;
tot2 = 0;
n = 10000000;
for i = 1:n
a1 = 2*pi*rand;
a2 = 2*pi*rand;
x1 = cos(a1);
y1 = sin(a1);
x2 = cos(a2);
y2 = sin(a2);
dist = sqrt((x1-x2)^2 + (y1-y2)^2);
tot1 = tot1 + dist;
tot2 = tot2 + dist^2;
end
expected = tot1/n
variance = tot2/n - expected^2