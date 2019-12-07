par = input('Input the three points of a circle as matrix [x1,y1;x2,y2;x3,y3]: ');
for idx = 1:3
    x(idx) = par(idx);
    y(idx) = par(idx+3);
end
E = ((((x(1)^2)-(x(3)^2))*(x(1)-x(2)) +((y(1)^2)-(y(3)^2))*(x(1)-x(2))+((x(2)^2)-(x(1)^2))*(x(1)-x(3)) + ((y(2)^2)-(y(1)^2))*(x(1)-x(3))))/((y(3)-y(1))*(x(1)-x(2))-(y(2)-y(1))*(x(1)-x(3)));
D = -((x(1)^2)-(x(3)^2)+(y(1)^2)-(y(3)^2)+(E*(y(1)-y(3))))/(x(1)-x(3));
F = -((x(1)^2)+(y(1)^2)+D*x(1)+E*y(1)); 
cntr = [-D/2,-E/2]; % coordinates for the center of the circle
r = sqrt(((D^2)+(E^2)-4*F)/4);  % radius of the circle
fprintf('Center: C(%g,%g)',cntr(1),cntr(2));
fprintf('\nRadius: %g', r);
fprintf('\nCoefficients of the general equation of the circle: [%g,%g,%g]\n', D,E,F);