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
