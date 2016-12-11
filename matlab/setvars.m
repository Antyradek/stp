%1
T = 0.25;
licz = [1 5 6];
mian = [1 7 -14 -120];
[liczdys,miandys] = c2dm(licz,mian,T,'zoh');

%2
[Ad1,Bd1,Cd1,Dd1] = tf2ss(liczdys,miandys);
Ad2 = Ad1';
Bd2 = Cd1';
Cd2 = Bd1';
Dd2 = Dd1;

%3
syms z;
trans1 = Cd1 * inv(z * eye(3) - Ad1) * Bd1 + Dd1;
trans2 = Cd2 * inv(z * eye(3) -Ad2) * Bd2 + Dd2;
isequal(trans1,trans2);
trans1 = simplify(trans1);
trans2 = simplify(trans2);

%4

%5
X0 = [3; -2; 1];
%Ustalenie symulowanego obiektu
Ad = Ad2;
Bd = Bd2;
Cd = Cd2;
Dd = Dd2;
Kd = acker(Ad,Bd,[0 0.2 0.3]);

%6
Ld = acker(Ad',Cd',[0 0 0])';