function B = ReadDAT(image_size,data_path)
% $Description:
%    -read the superpixel labels from .dat file
% $Agruments
% Input;
%    -image_size: [width height]
%    -data_path: the path of the .dat file 
% Output:
%    -label matrix width*height ��ǩ����

row = image_size(1);
colomn = image_size(2);
fid = fopen(data_path,'r'); % ��ֻ���ķ�ʽ���ļ�
A = fread(fid, row * colomn, 'uint32')'; % A(1*(row*colomn))double(��0��ʼ)ת��
A = A + 1;  % mex�ļ���0-(multiscale-1)��matlab��1��ʼ
B = reshape(A,[colomn, row]); % C���ж�ȡ��matlab���ж�ȡ
B = B';                       % ת�ó�ͼƬ��С
fclose(fid);