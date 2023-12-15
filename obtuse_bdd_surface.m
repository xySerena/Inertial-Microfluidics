% 3d, Re 50 75 100 125 150 200
%table: surface 2x, surface 2y, color

datafile_50 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(50).txt';
datafile_75 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(75).txt';
datafile_100 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(100).txt';
datafile_125 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(125).txt';
datafile_150 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(150).txt';
datafile_200 = 'C:\Users\Admin\Documents\Comsol\Serena\obtuse_data\left_surface_stagpoint_surface(200).txt';
data50 = readtable(datafile_50);
data75 = readtable(datafile_75);
data100 = readtable(datafile_100);
data125 = readtable(datafile_125);
data150 = readtable(datafile_150);
data200 = readtable(datafile_200);

data = data200;
index = find(data.Var3 > 0 & abs(data.Var1) <= 0.2, 1);
if ~isempty(index)
   resultVar2 = data.Var2(index);
   disp(['The length of Re200 is: ', num2str(resultVar2)]);
else
   disp('No stagnation point.');
end