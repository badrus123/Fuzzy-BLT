close all;
clear;
clc;

data = csvread('DataTugas2.csv', 1, 1); %baca data penghasilan dan data hutang
prediksi = [];

% loop tiap orang
for org=1:size(data,1)
%     --- fuzzifikasi ---
    out_penghasilan = checkPendapat(data(org,1));
    out_hutang = checkHutang(data(org,2));
    
%     --- inference ---
%     --> metode : min-max
%     kemungkinan rule
    rule_in_value = [];
    rule_in_nilai = [];
    for penghasilan=1:size(out_penghasilan,1)
        for hutang=1:size(out_hutang,1)
            rule_in_value = [rule_in_value; out_penghasilan(penghasilan,1) out_hutang(hutang,1)];
            rule_in_nilai = [rule_in_nilai; out_penghasilan(penghasilan,2) out_hutang(hutang,2)];
        end
    end
%     rule inferensi --> conjuction (and)
    rule_out_value = [];
    for i=1:size(rule_in_value,1)
        rule_out_value = [rule_out_value; inferensi(cell2mat(rule_in_value(i,:)))];
    end
    rule_out_nilai = min(cell2mat(rule_in_nilai),[],2);
    
%     --- defuzzifikasi ---
%     --> disjunction (or)
    value = ['y'; 'n'];
    max_y = 0; max_n = 0;
    for i=1:size(rule_out_value,1)
        if strcmp(rule_out_value(i,:), value(1,:))
            if rule_out_nilai(i,1) > max_y
                max_y = rule_out_nilai(i,1);
            end
        end
        if strcmp(rule_out_value(i,:), value(2,:))
            if rule_out_nilai(i,1) > max_n
                max_n = rule_out_nilai(i,1);
            end
        end
    end
    nilai = [max_y; max_n];
%     --> pake pembobotan, y=1, n=0 (nilainya dari PlottingData)
%     --> metode: weighted average
    output = 0;
    for i=1:size(nilai,1)
        if strcmp(value(i,:),'n')
            output = output + (nilai(i)*0);
        else %value=y
            output = output + (nilai(i)*1);
        end
    end
    output = output/sum(nilai);
    
%     thresholding untuk menentukan orang tsb layak dapet BLT apa engga
    if output<0.49
        prediksi = [prediksi; 0];
    else
        prediksi = [prediksi; 1];
    end
end

% cari sampe prediksinya ada 20 orang
length(find(prediksi==1))

% cek indeks orang yg dapet BLT
find(prediksi==1)
csvwrite('TebakanTugas2.csv', find(prediksi==1)); % save prediksi