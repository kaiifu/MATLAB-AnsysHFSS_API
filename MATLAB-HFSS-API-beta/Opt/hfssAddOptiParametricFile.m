function  hfssAddOptiParametricFile(fid, optimetrics_file)
% function  hfssAddOptiParametric(fid, VarList, range)
% preamble
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("Optimetrics") \n');
fprintf(fid, 'oModule.ImportSetup "OptiParametric", _\n');
fprintf(fid, 'Array("NAME:ParametricSetup1", _\n');
fprintf(fid, '"%s")\n', optimetrics_file);
