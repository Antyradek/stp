%1
T = 0.25;
licz = [1 5 6];
mian = [1 7 -14 -120];
[liczdys,miandys] = c2dm(licz,mian,T,'zoh');

%2
[Ad,Bd,Cd,Dd] = tf2ss(liczdys,miandys);
Ad2 = Ad';
Bd2 = Cd';
Cd2 = Bd';
Dd2 = Dd;

%3
syms z;
trans1 = Cd * inv(z * eye(3) - Ad) * Bd + Dd;
trans2 = Cd2 * inv(z * eye(3) -Ad2) * Bd2 + Dd2;
isequal(trans1,trans2);
trans1 = simplify(trans1);
trans2 = simplify(trans2);