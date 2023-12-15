file_path_sec1 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-1.txt';
data1 = readtable(file_path_sec1);
file_path_sec2 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-2.txt';
data2 = readtable(file_path_sec2);
file_path_sec3 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-3.txt';
data3 = readtable(file_path_sec3);
file_path_sec4 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-4.txt';
data4 = readtable(file_path_sec4);
file_path_sec5 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-5.txt';
data5 = readtable(file_path_sec5);
file_path_sec6 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-6.txt';
data6 = readtable(file_path_sec6);
file_path_sec7 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-7.txt';
data7 = readtable(file_path_sec7);
file_path_sec8 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-8.txt';
data8 = readtable(file_path_sec8);
file_path_sec9 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-9.txt';
data9 = readtable(file_path_sec9);
file_path_sec10 = 'C:\Users\Admin\Documents\Comsol\Serena\line_segment_tri\tri-linesec-10.txt';
data10 = readtable(file_path_sec10);


sec1_re100 = data1(1:101,:);
sec1_re150 = data1(102:202,:);
sec1_re200 = data1(202:303,:);
sec1_re300 = data1(303:404,:);
sec1_re400 = data1(404:505,:);
sec1_re500 = data1(505:606,:);
sec1_re600 = data1(606:707,:);
sec1_re700 = data1(707:808,:);
sec1_re800 = data1(808:909,:);
sec1_re1000 = data1(909:1010,:);
sec2_re100 = data2(1:56,:);
sec2_re150 = data2(57:112,:);
sec2_re200 = data2(113:168,:);
sec2_re300 = data2(169:224,:);
sec2_re500 = data2(281:336,:);
sec2_re700 = data2(393:448,:);
sec3_re100 = data3(1:68,:);
sec3_re150 = data3(69:136,:);
sec3_re200 = data3(137:204,:);
sec3_re300 = data3(205:272,:);
sec3_re500 = data3(273:340,:);
sec3_re700 = data3(341:408,:);
sec4_re100 = data4(1:67,:);
sec4_re150 = data4(68:134,:);
sec4_re200 = data4(135:201,:);
sec4_re300 = data4(202:268,:);
sec4_re500 = data4(269:335,:);
sec4_re700 = data4(336:402,:);
sec5_re100 = data5(1:29,:);
sec5_re150 = data5(30:58,:);
sec5_re200 = data5(59:87,:);
sec5_re300 = data5(88:116,:);
sec5_re500 = data5(117:145,:);
sec5_re700 = data5(146:174,:);
sec6_re100 = data6(1:28,:);
sec6_re150 = data6(29:56,:);
sec6_re200 = data6(57:84,:);
sec6_re300 = data6(85:112,:);
sec6_re500 = data6(113:140,:);
sec6_re700 = data6(141:168,:);
sec7_re100 = data7(1:34,:);
sec7_re150 = data7(35:68,:);
sec7_re200 = data7(69:102,:);
sec7_re300 = data7(103:136,:);
sec7_re500 = data7(137:170,:);
sec7_re700 = data7(171:204,:);
sec8_re100 = data8(1:31,:);
sec8_re150 = data8(32:62,:);
sec8_re200 = data8(63:93,:);
sec8_re300 = data8(94:124,:);
sec8_re500 = data8(125:155,:);
sec8_re700 = data8(156:186,:);
sec9_re100 = data9(1:29,:);
sec9_re150 = data9(30:58,:);
sec9_re200 = data9(59:87,:);
sec9_re300 = data9(88:116,:);
sec9_re500 = data9(117:145,:);
sec9_re700 = data9(146:174,:);
sec10_re100 = data10(1:28,:);
sec10_re150 = data10(29:56,:);
sec10_re200 = data10(57:84,:);
sec10_re300 = data10(85:112,:);
sec10_re500 = data10(113:140,:);
sec10_re700 = data10(141:168,:);




sec1_x100 = sec1_re100.Var1;
sec1_y100 = sec1_re100.Var2/max(sec1_re100.Var2);
sec1_x150 = sec1_re150.Var1;
sec1_y150 = sec1_re150.Var2/max(sec1_re150.Var2);
sec1_x300 = sec1_re300.Var1;
sec1_y300 = sec1_re300.Var2/max(sec1_re300.Var2);
sec1_x500 = sec1_re500.Var1;
sec1_y500 = sec1_re500.Var2/max(sec1_re500.Var2);
sec1_x700 = sec1_re700.Var1;
sec1_y700 = sec1_re700.Var2/max(sec1_re700.Var2);
sec2_x100 = sec2_re100.Var1;
sec2_y100 = sec2_re100.Var2/max(sec2_re100.Var2);
sec2_x150 = sec2_re150.Var1;
sec2_y150 = sec2_re150.Var2/max(sec2_re150.Var2);
sec2_x200 = sec2_re200.Var1;
sec2_y200 = sec2_re200.Var2/max(sec2_re200.Var2);
sec2_x300 = sec2_re300.Var1;
sec2_y300 = sec2_re300.Var2/max(sec2_re300.Var2);
sec2_x500 = sec2_re500.Var1;
sec2_y500 = sec2_re500.Var2/max(sec2_re500.Var2);
sec2_x700 = sec2_re700.Var1;
sec2_y700 = sec2_re700.Var2/max(sec2_re700.Var2);
sec3_x100 = sec3_re100.Var1;
sec3_y100 = sec3_re100.Var2/max(sec3_re100.Var2);
sec3_x150 = sec3_re150.Var1;
sec3_y150 = sec3_re150.Var2/max(sec3_re150.Var2);
sec3_x200 = sec3_re200.Var1;
sec3_y200 = sec3_re200.Var2/max(sec3_re200.Var2);
sec3_x300 = sec3_re300.Var1;
sec3_y300 = sec3_re300.Var2/max(sec3_re300.Var2);
sec3_x500 = sec3_re500.Var1;
sec3_y500 = sec3_re500.Var2/max(sec3_re500.Var2);
sec3_x700 = sec3_re700.Var1;
sec3_y700 = sec3_re700.Var2/max(sec3_re700.Var2);
sec4_x100 = sec4_re100.Var1;
sec4_y100 = sec4_re100.Var2/max(sec4_re100.Var2);
sec4_x150 = sec4_re150.Var1;
sec4_y150 = sec4_re150.Var2/max(sec4_re150.Var2);
sec4_x200 = sec4_re200.Var1;
sec4_y200 = sec4_re200.Var2/max(sec4_re200.Var2);
sec4_x300 = sec4_re300.Var1;
sec4_y300 = sec4_re300.Var2/max(sec4_re300.Var2);
sec4_x500 = sec4_re500.Var1;
sec4_y500 = sec4_re500.Var2/max(sec4_re500.Var2);
sec4_x700 = sec4_re700.Var1;
sec4_y700 = sec4_re700.Var2/max(sec4_re700.Var2);
sec5_x100 = sec5_re100.Var1;
sec5_y100 = sec5_re100.Var2/max(sec5_re100.Var2);
sec5_x150 = sec5_re150.Var1;
sec5_y150 = sec5_re150.Var2/max(sec5_re150.Var2);
sec5_x200 = sec5_re200.Var1;
sec5_y200 = sec5_re200.Var2/max(sec5_re200.Var2);
sec5_x300 = sec5_re300.Var1;
sec5_y300 = sec5_re300.Var2/max(sec5_re300.Var2);
sec5_x500 = sec5_re500.Var1;
sec5_y500 = sec5_re500.Var2/max(sec5_re500.Var2);
sec5_x700 = sec5_re700.Var1;
sec5_y700 = sec5_re700.Var2/max(sec5_re700.Var2);
sec6_x100 = sec6_re100.Var1;
sec6_y100 = sec6_re100.Var2/max(sec6_re100.Var2);
sec6_x150 = sec6_re150.Var1;
sec6_y150 = sec6_re150.Var2/max(sec6_re150.Var2);
sec6_x200 = sec6_re200.Var1;
sec6_y200 = sec6_re200.Var2/max(sec6_re200.Var2);
sec6_x300 = sec6_re300.Var1;
sec6_y300 = sec6_re300.Var2/max(sec6_re300.Var2);
sec6_x500 = sec6_re500.Var1;
sec6_y500 = sec6_re500.Var2/max(sec6_re500.Var2);
sec6_x700 = sec6_re700.Var1;
sec6_y700 = sec6_re700.Var2/max(sec6_re700.Var2);
sec7_x100 = sec7_re100.Var1;
sec7_y100 = sec7_re100.Var2/max(sec7_re100.Var2);
sec7_x150 = sec7_re150.Var1;
sec7_y150 = sec7_re150.Var2/max(sec7_re150.Var2);
sec7_x200 = sec7_re200.Var1;
sec7_y200 = sec7_re200.Var2/max(sec7_re200.Var2);
sec7_x300 = sec7_re300.Var1;
sec7_y300 = sec7_re300.Var2/max(sec7_re300.Var2);
sec7_x500 = sec7_re500.Var1;
sec7_y500 = sec7_re500.Var2/max(sec7_re500.Var2);
sec7_x700 = sec7_re700.Var1;
sec7_y700 = sec7_re700.Var2/max(sec7_re700.Var2);
sec8_x100 = sec8_re100.Var1;
sec8_y100 = sec8_re100.Var2/max(sec8_re100.Var2);
sec8_x150 = sec8_re150.Var1;
sec8_y150 = sec8_re150.Var2/max(sec8_re150.Var2);
sec8_x200 = sec8_re200.Var1;
sec8_y200 = sec8_re200.Var2/max(sec8_re200.Var2);
sec8_x300 = sec8_re300.Var1;
sec8_y300 = sec8_re300.Var2/max(sec8_re300.Var2);
sec8_x500 = sec8_re500.Var1;
sec8_y500 = sec8_re500.Var2/max(sec8_re500.Var2);
sec8_x700 = sec8_re700.Var1;
sec8_y700 = sec8_re700.Var2/max(sec8_re700.Var2);
sec9_x100 = sec9_re100.Var1;
sec9_y100 = sec9_re100.Var2/max(sec9_re100.Var2);
sec9_x150 = sec9_re150.Var1;
sec9_y150 = sec9_re150.Var2/max(sec9_re150.Var2);
sec9_x200 = sec9_re200.Var1;
sec9_y200 = sec9_re200.Var2/max(sec9_re200.Var2);
sec9_x300 = sec9_re300.Var1;
sec9_y300 = sec9_re300.Var2/max(sec9_re300.Var2);
sec9_x500 = sec9_re500.Var1;
sec9_y500 = sec9_re500.Var2/max(sec9_re500.Var2);
sec9_x700 = sec9_re700.Var1;
sec9_y700 = sec9_re700.Var2/max(sec9_re700.Var2);
sec10_x100 = sec10_re100.Var1;
sec10_y100 = sec10_re100.Var2/max(sec10_re100.Var2);
sec10_x150 = sec10_re150.Var1;
sec10_y150 = sec10_re150.Var2/max(sec10_re150.Var2);
sec10_x200 = sec10_re200.Var1;
sec10_y200 = sec10_re200.Var2/max(sec10_re200.Var2);
sec10_x300 = sec10_re300.Var1;
sec10_y300 = sec10_re300.Var2/max(sec10_re300.Var2);
sec10_x500 = sec10_re500.Var1;
sec10_y500 = sec10_re500.Var2/max(sec10_re500.Var2);
sec10_x700 = sec10_re700.Var1;
sec10_y700 = sec10_re700.Var2/max(sec10_re700.Var2);




subplot(2,5,1);
plot(sec1_x100, sec1_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec1_x150, sec1_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec1_x300, sec1_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec1_x500, sec1_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 700');
hold on;
plot(sec1_x700, sec1_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect1');
legend;

subplot(2,5,2);
plot(sec2_x100, sec2_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec2_x150, sec2_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec2_x200, sec2_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec2_x300, sec2_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec2_x500, sec2_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 700');
hold on;
plot(sec2_x700, sec2_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect2');
legend;

subplot(2,5,3);
plot(sec3_x100, sec3_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec3_x150, sec3_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec3_x200, sec3_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec3_x300, sec3_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec3_x500, sec3_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec3_x700, sec3_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect3');
legend;

subplot(2,5,4);
plot(sec4_x100, sec4_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec4_x150, sec4_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec4_x200, sec4_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec4_x300, sec4_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec4_x500, sec4_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec4_x700, sec4_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect4');
legend;

subplot(2,5,5);
plot(sec5_x100, sec5_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec5_x150, sec5_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec5_x200, sec5_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec5_x300, sec5_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec5_x500, sec5_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec5_x700, sec5_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect5');
legend;

subplot(2,5,6);
plot(sec6_x100, sec6_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec6_x150, sec6_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec6_x200, sec6_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec6_x300, sec6_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec6_x500, sec6_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec6_x700, sec6_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect6');
legend;

subplot(2,5,7);
plot(sec7_x100, sec7_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec7_x150, sec7_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec7_x200, sec7_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec7_x300, sec7_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec7_x500, sec7_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec7_x700, sec7_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect7');
legend;

subplot(2,5,8);
plot(sec8_x100, sec8_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec8_x150, sec8_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec8_x200, sec8_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec8_x300, sec8_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec8_x500, sec8_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec8_x700, sec8_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect8');
legend;

subplot(2,5,9);
plot(sec9_x100, sec9_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec9_x150, sec9_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec9_x200, sec9_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec9_x300, sec9_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec9_x500, sec9_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec9_x700, sec9_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect9');
legend;

subplot(2,5,10);
plot(sec10_x100, sec10_y100, 'o-', 'LineWidth', 1, 'DisplayName', 'Re 100');
hold on;
plot(sec10_x150, sec10_y150, 'x--', 'LineWidth', 1, 'DisplayName', 'Re 150');
hold on;
plot(sec10_x200, sec10_y200, '--', 'LineWidth', 1, 'DisplayName', 'Re 200');
hold on;
plot(sec10_x300, sec10_y300, '-', 'LineWidth', 1, 'DisplayName', 'Re 300');
hold on;
plot(sec10_x500, sec10_y500, 's--', 'LineWidth', 1, 'DisplayName', 'Re 500');
hold on;
plot(sec10_x700, sec10_y700, '-', 'LineWidth', 1, 'DisplayName', 'Re 700');
xlabel('position_x');
ylabel('position_y');
title('triangle-transect10');
legend;
