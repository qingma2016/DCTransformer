clc;
clear;

image_path = './test/X/';
filenames = dir(image_path);  % structure[name, data, bytes, isdir, datenum]
image_filename = filenames(3:end);
filter = fspecial('gaussian', [8 8], 2)

for i=12
     fprintf('Testing image %d...\n', i);
     file_name = image_filename(i).name;
     data = load([image_path, file_name]);
     data = data.msi;
     blur = imfilter(data,filter);
%      LR = LR(4:8:512,4:8:512,:);
%      save(['./test/X_blur/', file_name], 'blur');
     pause(1);
end