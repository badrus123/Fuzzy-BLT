function [output] = checkHutang(data)
    output = {'',0;'',0;'',0};
   if data <=15
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {1};
        output(2,1) = {'rendah'};
        output(2,2) = {0};
        output(3,1) = {'sedang'};
        output(3,2) = {0};
        output(4,1) = {'tinggi'};
        output(4,2) = {0};

    elseif data > 15 & data <= 30
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {(30-data)/(30-15)};
        output(2,1) = {'rendah'};
        output(2,2) = {(data-15)/(30-15)};
        output(3,1) = {'sedang'};
        output(3,2) = {0};
        output(4,1) = {'tinggi'};
        output(4,2) = {0};

    elseif data > 30 & data <= 45
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {0};
        output(2,1) = {'rendah'};
        output(2,2) = {1};
        output(3,1) = {'sedang'};
        output(3,2) = {0};
        output(4,1) = {'tinggi'};
        output(4,2) = {0};

    elseif data > 45 & data <= 60
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {0};
        output(2,1) = {'rendah'};
        output(2,2) = {(60-data)/(60-45)};
        output(3,1) = {'sedang'};
        output(3,2) = {(data-45)/(60-45)};
        output(4,1) = {'tinggi'};
        output(4,2) = {0};

    elseif data > 60 & data <= 75
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {0};
        output(2,1) = {'rendah'};
        output(2,2) = {0};
        output(3,1) = {'sedang'};
        output(3,2) = {1};
        output(4,1) = {'tinggi'};
        output(4,2) = {0};

    elseif data > 75 & data <= 80
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {0};
        output(2,1) = {'rendah'};
        output(2,2) = {0};
        output(3,1) = {'sedang'};
        output(3,2) = {(80-data)/(80-75)};
        output(4,1) = {'tinggi'};
        output(4,2) = {(data-75)/(80-75)};

    else
        output(1,1) = {'sangat_rendah'};
        output(1,2) = {0};
        output(2,1) = {'rendah'};
        output(2,2) = {0};
        output(3,1) = {'sedang'};
        output(3,2) = {0};
        output(4,1) = {'tinggi'};
        output(4,2) = {1};



    end
end