Numrun = 1e5;
H = sqrt(1/2)*randn(4,Numrun);
add_H = sum(H);

[abs_H,idx] = sort(abs(H),"descend");

Numtrue = 0;

for i = 1:Numrun
if  ( abs(add_H(i)) < abs_H(2,i) ) 
    Numtrue = Numtrue + 1;
end
end

disp(['成功概率：',num2str(Numtrue./Numrun)])