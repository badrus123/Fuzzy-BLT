function [output] = inferensi(input)
    output = '';
%     1
    if strcmp(input,'rendahsangat_rendah')
        output = 'n';
    end
%     2
    if strcmp(input,'rendahrendah')
        output = 'n';
    end
%     3
    if strcmp(input,'rendahsedang')
        output = 'y';
    end
%     4
    if strcmp(input,'rendahtinggi')
        output = 'y';
    end
%     5
    if strcmp(input,'sedangsangat_rendah')
        output = 'n';
    end
%     6
    if strcmp(input,'sedangrendah')
        output = 'n';
    end
%     7
    if strcmp(input,'sedangsedang')
        output = 'y';
    end
%     8
    if strcmp(input,'sedangtinggi')
        output = 'y';
    end
%    9
    if strcmp(input,'tinggisangat_rendah')
        output = 'n';
    end
%     10
    if strcmp(input,'tinggirendah')
        output = 'n';
    end
%     11
    if strcmp(input,'tinggisedang')
        output = 'n';
    end
%     12
    if strcmp(input,'tinggitinggi')
        output = 'y';
    end

end