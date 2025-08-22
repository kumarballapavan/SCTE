%% Preprocessing

clc;
clear all;
close all;

%% Image Read

DB = './Input/SH';

output_folder = './Output/SH';

if ~isdir(DB)
  errorMessage = sprintf('Error: The following folder does not exist:\n%s', DB);
  uiwait(warndlg(errorMessage));
  return;
end


disp("Reading input and output directories......................");

filePattern1 = fullfile(DB, '*.png');

pngFiles1 = dir(filePattern1);



main(pngFiles1, DB, output_folder);

