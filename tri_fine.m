file_path_sec1 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-1.txt';
data1 = readtable(file_path_sec1);
file_path_sec2 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-2.txt';
data2 = readtable(file_path_sec2);
file_path_sec3 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-3.txt';
data3 = readtable(file_path_sec3);
file_path_sec4 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-4.txt';
data4 = readtable(file_path_sec4);
file_path_sec5 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-5.txt';
data5 = readtable(file_path_sec5);
file_path_sec6 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-6.txt';
data6 = readtable(file_path_sec6);
file_path_sec7 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-7.txt';
data7 = readtable(file_path_sec7);
file_path_sec8 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-8.txt';
data8 = readtable(file_path_sec8);
file_path_sec9 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-9.txt';
data9 = readtable(file_path_sec9);
file_path_sec10 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\extra_fine\tri-linesec-fine-10.txt';
data10 = readtable(file_path_sec10);

sec1_x = data1.Var1;
sec1_y = data1.Var2/max(data1.Var2);
sec2_x = data2.Var1;
sec2_y = data2.Var2/max(data2.Var2);
sec3_x = data3.Var1;
sec3_y = data3.Var2/max(data3.Var2);
sec4_x = data4.Var1;
sec4_y = data4.Var2/max(data4.Var2);
sec5_x = data5.Var1;
sec5_y = data5.Var2/max(data5.Var2);
sec6_x = data6.Var1;
sec6_y = data6.Var2/max(data6.Var2);
sec7_x = data7.Var1;
sec7_y = data7.Var2/max(data7.Var2);
sec8_x = data8.Var1;
sec8_y = data8.Var2/max(data8.Var2);
sec9_x = data9.Var1;
sec9_y = data9.Var2/max(data9.Var2);
sec10_x = data10.Var1;
sec10_y = data10.Var2/max(data10.Var2);
x = linspace(0, 2, 100);
y = x .* (2 - x);

plot(sec1_x, sec1_y, 'o-', 'LineWidth', 1, 'DisplayName', 'transect1');
hold on;
plot(sec2_x, sec2_y, 'x--', 'LineWidth', 1, 'DisplayName', 'transect2');
hold on;
plot(sec3_x, sec3_y, '--', 'LineWidth', 1, 'DisplayName', 'transect3');
hold on;
plot(sec4_x, sec4_y, '-', 'LineWidth', 1, 'DisplayName', 'transect4');
hold on;
plot(sec5_x, sec5_y, 'x--', 'LineWidth', 1, 'DisplayName', 'transect5');
hold on;
plot(sec6_x, sec6_y, '-', 'LineWidth', 1, 'DisplayName', 'transect6');
hold on;
plot(sec7_x, sec7_y, '-', 'LineWidth', 1, 'DisplayName', 'transect7');
hold on;
plot(sec8_x, sec8_y, 's--', 'LineWidth', 1, 'DisplayName', 'transect8');
hold on;
plot(sec9_x, sec9_y, 'o--', 'LineWidth', 1, 'DisplayName', 'transect9');
hold on;
plot(sec10_x, sec10_y, 's--', 'LineWidth', 1, 'DisplayName', 'transect10');
plot(x, y, 'b-', 'LineWidth', 2, 'DisplayName', 'f(x) = x(x-2)');
xlabel('position_x');
ylabel('position_y');
title('triangle');
legend;