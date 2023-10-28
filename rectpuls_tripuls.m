% rectpuls

amplitude = 3;
larg = 4;
centre = 0;
pas = 0.01;

x_rectpuls = (-4 + pas :pas:4);
y_rectpuls = [zeros(1,(centre-(larg/2)+4)/pas), ones(1,larg/pas)* amplitude , zeros(1,(8-larg-(centre-(larg/2)+4))/pas)];
plot(x_rectpuls,y_rectpuls,'k');
axis ([-4 4 -1 3]);




% tripuls

amplitude = 2;
larg = 4;
centre = 0;
pas = 0.01;

point_gauche = centre - larg/2;
point_droite = centre + larg/2;
% calcul ligne gauche :  
a_gauche = amplitude / (centre - point_gauche);
b_gauche = (amplitude/2) * (1-((centre + point_gauche)/(centre - point_gauche)));
x_gauche = centre - (larg/2) : pas :centre;  
y_gauche = a_gauche * x_gauche + b_gauche;
% calcul ligne droite :  
a_droite = amplitude / (centre - point_droite);
b_droite = (amplitude/2) * (1-((centre + point_droite)/(centre - point_droite)));
x_droite = centre : pas : centre + (larg/2);  
y_droite = a_droite * x_droite + b_droite;
% plot
x_tripuls = [-4:pas:4+pas];
y_tripuls = [zeros(1,(point_gauche+4)/pas) , y_gauche , y_droite ,zeros(1,(8-larg-point_gauche-4)/pas)];
plot(x_tripuls,y_tripuls,'k');
axis ([-4 4 -1 4]);
