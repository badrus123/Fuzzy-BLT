close all;
clear;
clc;

data = csvread('DataTugas2.csv', 1, 0); %baca file dari baris kedua
% isi file:
% kolom 1: index 1-100 (indeks orang)
% kolom 2: penghasilan
% kolom 2: hutang

% job: cari 20 orang yg layak dapetin BLT
% logic: penghasilan kecil, hutang gede

% plot data
figure;
scatter(data(:,2), data(:,3));
title('Pengamatan Data');
xlabel('Penghasilan');
ylabel('Hutang');

disp('--- Data Penghasilan ---');
fprintf('Min\t\t: %f\n', min(data(:,2)));
fprintf('Mean\t: %f\n', mean(data(:,2)));
fprintf('Stdev\t: %f\n', std(data(:,2)));
fprintf('Max\t\t: %f\n', max(data(:,2)));
figure;
hist(data(:,2));
title('Histogram Data Penghasilan')

fprintf('\n\n');

disp('--- Data Hutang ---');
fprintf('Min\t\t: %f\n', min(data(:,3)));
fprintf('Mean\t: %f\n', mean(data(:,3)));
fprintf('Stdev\t: %f\n', std(data(:,3)));
fprintf('Max\t\t: %f\n', max(data(:,3)));
figure;
hist(data(:,3));
title('Histogram Data Hutang')