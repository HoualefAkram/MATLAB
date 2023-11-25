%----------------% EXO 1 %----------------%
%-----------------------------------------%

% question 1 ----------------
te = 0.001;
t = 0: te : pi;
y = square(2*pi*t,50);
subplot(5,1,1);
plot(t,y);
axis([0 pi -2 2]);

% question 2,3 ----------------

% pour k = 10

somme10 = 0;
k10 = 10;

for n = 1:2:k10
   func = (4/(n*pi)) * sin(2*pi*n*t);
   somme10 = somme10 + func;
end
subplot(5,1,2);
plot(t,somme10);
axis([0 pi -2 2]);
EQM10 = mean((y-somme10).^2);

% pour k = 50

somme50 = 0;
k50 = 50;

for n = 1:2:k50
   func = (4/(n*pi)) * sin(2*pi*n*t);
   somme50 = somme50 + func;
end
subplot(5,1,3);
plot(t, somme50);
axis([0 pi -2 2]);
EQM50 = mean((y - somme50).^2);

% pour k = 100

somme100 = 0;
k100 = 100;

for n = 1:2:k100
   func = (4/(n*pi)) * sin(2*pi*n*t);
   somme100 = somme100 + func;
end
subplot(5,1,4);
plot(t, somme100);
axis([0 pi -2 2]);
EQM100 = mean((y - somme100).^2);

% pour k = 200

somme200 = 0;
k200 = 200;

for n = 1:2:k200
   func = (4/(n*pi)) * sin(2*pi*n*t);
   somme200 = somme200 + func;
end
subplot(5,1,5);
plot(t, somme200);
axis([0 pi -2 2]);
EQM200 = mean((y - somme200).^2);

% question 5 ----------------
close all;
k = 10;
f0 = 1;
for n = 1:2:k
    Bn = 4/(n*pi);
    y = ones(1,1) * Bn;
    f = f0*n;
    stem(f,y);
    hold on;
end

%----------------% EXO 2 %----------------%
%-----------------------------------------%
close all;
t0 = 2;
f0 = 1/t0;

t = -2 : 0.01 : 2;
f = 0;
n = 100;
A = 5;
%---- avec 2 boucle for

for k1 = 1:4:n
    bk1 = (8*A)/(k1*k1*pi*pi);
    f = f + bk1 * sin(2*pi*f0*k1*t);
end


for k2 = 3:4:n
    bk2 = -(8*A)/(k2*k2*pi*pi);
    f = f + bk2 * sin(2*pi*f0*k2*t);
end

plot(t,f);
axis([-2 2 -A*4 A*4]);

%---- avec 1 boucle for

f = 0;
s = 1;
for k = 1:2:n
    bk = s * (8*A)/(k*k*pi*pi);
    f = f + bk * sin(2*pi*f0*k*t);
    s = s * -1 ;
end
plot(t,f);
axis([-2 2 -A*4 A*4]);
