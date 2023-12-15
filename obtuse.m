datafile = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\obtuse2d(50 75 100 125 150 200).txt';
data = readtable(datafile);
arr = zeros(3,84);

endValue = 1;
submatrix = data(1, :); 
separatedMatrices = cell(1, 0);
for i = 2:height(data)
   if data.Var1(i) == 1.414
       submatrix = data(i, :);
   else
       submatrix = [submatrix; data(i, :)];
   end
  
   if data.Var1(i) == 70.71
       endValue = 70.71;
       separatedMatrices{end + 1} = submatrix;
   end
   if endValue == 70.71
       endValue = 1;
   end
end
comb = reshape(separatedMatrices, 14, 6);
numRe = 0;
for k = [50 75 100 125 150 200]
   numRe = numRe+1;
   numAlpha = 0;
   for i = [2 2.5 3 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4 4.5]
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
           pos = 70.414;
           fprintf('Re:%d, alpha: %f, no point.\n', k, i);
       end
       num = 14*(numRe-1)+ numAlpha;
       arr(1,num)=i;
       arr(2,num)=k;
       arr(3,num)=pos;
   end
end



sorted_arr = sortrows(arr',1)';
disp(sorted_arr);

re0 = [50 75 100 125 150 200];
l0 = [5.0163 7.0217 9.8101 13.3952 18.9719 70.71];

numIter = 0;
for i = [2 2.5 3 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 4 4.5]
    numIter = numIter + 1;
    num = 6*(numIter-1);
    arr_sec = sorted_arr(:,(num+1):(num+6));
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
title('Reynolds number 50 to 200');
