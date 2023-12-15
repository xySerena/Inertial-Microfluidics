vxdatafile = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\vx_data.txt';
uydatafile = 'C:\Users\Admin\Documents\Comsol\Serena\centrifuge_data\uy_data.txt';
vxdata = readtable(vxdatafile);
uydata = readtable(uydatafile);
data = uydata;
endValue = 1;
submatrix = data(1, :); % Initialize with the first row
separatedMatrices = cell(1, 0);
for i = 2:height(data)
    if data.Var1(i) == -50
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

for i = 1:length(separatedMatrices)
    currentTable = separatedMatrices{i};
    secondColumn = currentTable.Var2;
    transitionIndex = -1;
    for j = 3:(length(secondColumn)-1)
        if secondColumn(j-1) > 0 && secondColumn(j) <= 0
            transitionIndex = j;
            break;
        end
    end
    if transitionIndex > 0
        pos = (currentTable.Var1(transitionIndex) + currentTable.Var1(transitionIndex-2))/2;
        fprintf('%d, point: %f\n', i, pos);
    else
        fprintf('%d, no point.\n', i);
    end
end
