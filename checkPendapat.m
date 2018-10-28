function [output] = checkPendapat(data)
    output = {'',0;'',0;'',0};
    if data<=0.67
        output(1,1) = {'rendah'};
        output(1,2) = {1};
        output(2,1) = {'sedang'};
        output(2,2) = {0};
        output(3,1) = {'tinggi'};
        output(3,2) = {0};
    elseif data>0.67 & data<=1.11
        output(1,1) = {'rendah'};
        output(1,2) = {(1.11-data)/(1.11-0.67)};
        output(2,1) = {'sedang'};
        output(2,2) = {(data-0.67)/(1.11-0.67)};
        output(3,1) = {'tinggi'};
        output(3,2) = {0};
    elseif data>1.11 & data<=1.54
        output(1,1) = {'rendah'};
        output(1,2) = {0};
        output(2,1) = {'sedang'};
        output(2,2) = {(1.54-data)/(1.54-1.11)};
        output(3,1) = {'tinggi'};
        output(3,2) = {(data-1.11)/(1.54-1.11)};
    else
        output(1,1) = {'rendah'};
        output(1,2) = {0};
        output(2,1) = {'sedang'};
        output(2,2) = {0};
        output(3,1) = {'tinggi'};
        output(3,2) = {1};
    end
end