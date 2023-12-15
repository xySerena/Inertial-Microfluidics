% 3d, Re 100,200,250,300,400
wxdatafile_1 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\wxdata_3d_(100,200,250,300,400).txt';
wxdatafile_2 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\wxdata_3d_(75,125,150).txt';
wxdatafile_3 = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\wxdata_3d_(150,300,500).txt';
wxdata_1 = readtable(wxdatafile_1);
wxdata_2 = readtable(wxdatafile_2);
wxdata_3 = readtable(wxdatafile_3);
arr = zeros(2,11);

data = wxdata_1;
data.Var1 = data.Var1+1;
endValue = 1;
submatrix = data(1, :); % Initialize with the first row
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

numRe = 0;
for i = [100 200 250 300 400]
   numRe = numRe + 1;
   currentTable = separatedMatrices{numRe};
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
       fprintf('Re:%d, point: %f\n',i, pos);
   else
       pos = 50;
       fprintf('Re:%d, no point.\n', i);
   end
   arr(1,numRe)=i;
   arr(2,numRe)=pos;
end

data = wxdata_2;
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

numRe = 0;
for i = [75 125 150]
   numRe = numRe + 1;
   currentTable = separatedMatrices{numRe};
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
       fprintf('Re:%d, point: %f\n',i, pos);
   else
       pos=50;
       fprintf('Re:%d, no point.\n', i);
   end
   arr(1,numRe+5)=i;
   arr(2,numRe+5)=pos;
end

data = wxdata_3;
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

numRe = 0;
for i = [150 300 500]
   numRe = numRe + 1;
   currentTable = separatedMatrices{numRe};
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
       fprintf('Re:%d, point: %f\n',i, pos);
   else
       pos = 50;
       fprintf('Re:%d, no point.\n', i);
   end
   arr(1,numRe+8)=i;
   arr(2,numRe+8)=pos;
end

x = arr(1,:);
y = arr(2,:);
[x_sorted, sort_index] = sort(x);
y_sorted = y(sort_index);
arr(1,:) = x_sorted;
arr(2,:) = y_sorted;
arr(:,[5,9]) = [];


disp(arr);


