% exo 1 ------------------------------------------------- :

fs = 10000;
tmax = 1.5;
t = 0:1/fs:tmax ;
f0 = 50;
x = sin(2*pi*f0*t);
figure(1);
plot(t,x);
axis([0 0.1 -1.2 1.2]);
xlabel ('Temps (sec)');
ylabel ('Amplitude');
close all;


% exo 2 -------------------------------------------------- :

fe = 1200;
te = 1/fe;
x = 0 : te : 12; 


% square 1 :

T = 4;
y = square(2*pi*x/T,75);
plot(x,y);
axis([0 12 -3 3]);

% square 2 : 

T = 2;
y = square(2*pi*x/T,50);
plot(x,y);
axis([0 12 -3 3]);

% square 3 :   

T = 2;
y = square(2*pi*x/T,25) * 0.5 + 0.5;
plot(x,y);
axis([0 12 -3 3]);

% sawtooth 1 :

T = 4;
y = sawtooth(2*pi*x/T,1);
plot(x,y);
axis([0 12 -3 3]);

% sawtooth 2 :

T = 2;
y = sawtooth(2*pi*x/T,1);
plot(x,y);
axis([0 12 -3 3]);

% sawtooth 3 :

T = 2;
y = sawtooth(2*pi*x/T,0.5) * 0.5 + 0.5;
plot(x,y);
axis([0 12 -3 3]);

% pulstran rect 1 :

delay = 1.5:4:12;
y = pulstran(x,delay,'rectpuls',3) * 2 - 1;
plot(x,y);
axis([0 12 -3 3]);

% pulstran rect 2 :

delay = 0.5:2:12;
y = pulstran(x,delay,'rectpuls',1) * 2 - 1;
plot(x,y);
axis([0 12 -3 3]);

% pulstran rect 3 :

delay = 0.25:2:12;
y = pulstran(x,delay,'rectpuls',1/2);
plot(x,y);
axis([0 12 -3 3]);

% pulstran tri 1 :

delay = 2:4:12;
y = pulstran(x,delay,'tripuls',4,1) * 2 - 1;
plot(x,y);
axis([0 12 -3 3]);

% pulstran tri 2 :

delay = 1:2:12;
y = pulstran(x,delay,'tripuls',2,1) * 2 - 1;
plot(x,y);
axis([0 12 -3 3]);

% pulstran tri 3 :

delay = 1:2:12;
y = pulstran(x,delay,'tripuls',2,0);
plot(x,y);
axis([0 12 -3 3]);

close all;
% exo 3 -------------------------------------------------- : 

pas = 0.01;
t = 0 : pas : 3;

x1 = 2 * cos(pi*t); % T = 2
x2 = 3*sin(pi*2*(t-0.5)); % T = 2
x3 = x1 + x2; % T = 2

%------ meme figure et les memes axes ------%

plot(t,x1 , 'k');
hold on;
plot(t,x2 , 'c');
hold on;
plot(t,x3 , 'r');
close all;

%------ meme figure et les axes differents ------%

subplot(3,1,1);
plot(t,x1 , 'k');
subplot(3,1,2);
plot(t,x2 , 'c');
subplot(3,1,3);
plot(t,x3 , 'r');
close all;

%------ des figures differentes ------%

figure(1);
plot(t,x1 , 'k');
figure(2);
plot(t,x2 , 'c');
figure(3);
plot(t,x3 , 'r');
close all;


