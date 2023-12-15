vxdatafile_1 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\vx_data(100 200 250 300 400).txt';
vxdatafile_2 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\vx_data(75 125 150).txt';
%vxdatafile_3 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\vx_data(75 125 150).txt';
vxdata_1 = readtable(vxdatafile_1);
vxdata_2 = readtable(vxdatafile_2);
arr = zeros(3,88);

data = vxdata_1;
endValue = 1;
submatrix = data(1, :); 
separatedMatrices = cell(1, 0);
for i = 2:height(data)
   if data.Var1(i) == 1
       submatrix = data(i, :);
   else
       submatrix = [submatrix; data(i, :)];
   end
  
   if data.Var1(i) == 50
       endValue = 50;
       separatedMatrices{end + 1} = submatrix;
   end
   if endValue == 50
       endValue = 1;
   end
end
comb = reshape(separatedMatrices, 11, 5);
numRe = 0;
for k = [100 200 250 300 400]
   numRe = numRe+1;
   numAlpha = 0;
   for i = [3 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4]
       numAlpha = numAlpha + 1;
       currentTable = comb{numAlpha, numRe};
       secondColumn = currentTable.Var2;
       transitionIndex = -1;
       for j = 2:(length(secondColumn)-1)
           if secondColumn(j-1) < 0 && secondColumn(j) >= 0
               transitionIndex = j;
               break;
           end
       end
       if transitionIndex > 0
           pos = (currentTable.Var1(transitionIndex) + currentTable.Var1(transitionIndex-2))/2;
           fprintf('Re:%d, alpha: %f, point: %f\n',k, i, pos);
       else
           pos = 50;
           fprintf('Re:%d, alpha: %f, no point.\n', k, i);
       end
       num = 11*(numRe-1)+ numAlpha;
       arr(1,num)=i;
       arr(2,num)=k;
       arr(3,num)=pos;
   end
end

data = vxdata_2;
endValue = 1;
submatrix = data(1, :); 
separatedMatrices = cell(1, 0);
for i = 2:height(data)
   if data.Var1(i) == 1
       submatrix = data(i, :);
   else
       submatrix = [submatrix; data(i, :)];
   end
  
   if data.Var1(i) == 50
       endValue = 50;
       separatedMatrices{end + 1} = submatrix;
   end
   if endValue == 50
       endValue = 1;
   end
end
comb = reshape(separatedMatrices, 11, 3);
numRe = 0;
for k = [75 125 150]
   numRe = numRe+1;
   numAlpha = 0;
   for i = [3 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4]
       numAlpha = numAlpha + 1;
       currentTable = comb{numAlpha, numRe};
       secondColumn = currentTable.Var2;
       transitionIndex = -1;
       for j = 2:(length(secondColumn)-1)
           if secondColumn(j-1) < 0 && secondColumn(j) >= 0
               transitionIndex = j;
               break;
           end
       end
       if transitionIndex > 0
           pos = (currentTable.Var1(transitionIndex) + currentTable.Var1(transitionIndex-2))/2;
           fprintf('Re:%d, alpha: %f, point: %f\n',k, i, pos);
       else
           pos = 50;
           fprintf('Re:%d, alpha: %f, no point.\n', k, i);
       end
       num = 55 + 11*(numRe-1)+ numAlpha;
       arr(1,num)=i;
       arr(2,num)=k;
       arr(3,num)=pos;
   end
end

sorted_arr = sortrows(arr',1)';
%disp(sorted_arr);

re0 = [75 100 125 150 200 250 300 400];
l0 = [7.7817 9.7283 13.3694 16.6957 21.8837 32.1398 50 50];

numIter = 0;
for i = linspace(3,4,11)
    numIter = numIter + 1;
    num = 8*(numIter-1);
    arr_sec = sorted_arr(:,(num+1):(num+8));
    arr_sec = arr_sec(2:3,:);
    arr_sec = sortrows(arr_sec',1)';
    x = arr_sec(1, :);
    y = arr_sec(2, :);
    plot(x,y,'DisplayName',['alpha: ', num2str(i)]);
    hold on;
end
plot(re0, l0, '-o', 'DisplayName','3D plot');
legend('show');
xlabel('Reynolds number');
ylabel('Stagnation point');
title('Reynolds number 75 to 400');

