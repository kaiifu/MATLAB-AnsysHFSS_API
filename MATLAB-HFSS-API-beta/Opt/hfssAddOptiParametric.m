function  hfssAddOptiParametric(fid, Var1, Start1, Stop1, Step1, Var2, Start2, Stop2, Step2)
% function  hfssAddOptiParametric(fid, VarList, range)
% preamble
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("Optimetrics") \n');
fprintf(fid, 'oModule.InsertSetup "OptiParametric", _\n');
fprintf(fid, 'Array("NAME:ParametricSetup1", _\n');
fprintf(fid, '"IsEnabled:=", true, _\n');
fprintf(fid, 'Array("NAME:ProdOptiSetupDataV2", "SaveFields:=", false, _\n');
fprintf(fid, '"CopyMesh:=", false, _\n');
fprintf(fid, '"SolveWithCopiedMeshOnly:=", true), _\n');
fprintf(fid, 'Array("NAME:StartingPoint"), _\n');
fprintf(fid, '"Sim. Setups:=", Array("Setup1"), _\n');
fprintf(fid, 'Array("NAME:Sweeps", _\n');

fprintf(fid, 'Array("NAME:SweepDefinition", _\n');
fprintf(fid, '"Variable:=", "%s", _\n', Var1);
fprintf(fid, '"Data:=", "LIN %s %s %s", _\n', Start1, Stop1, Step1);
fprintf(fid, '"OffsetF1:=", false, _\n');
fprintf(fid, '"Synchronize:=", 0), _\n');

fprintf(fid, 'Array("NAME:SweepDefinition", _\n');
fprintf(fid, '"Variable:=", "%s", _\n', Var2);
fprintf(fid, '"Data:=", "LIN %s %s %s", _\n', Start2, Stop2, Step2);
fprintf(fid, '"OffsetF1:=", false, _\n');
fprintf(fid, '"Synchronize:=", 0)), _\n');


fprintf(fid, 'Array("NAME:Sweep Operations"), Array("NAME:Goals")) \n');

% oModule.InsertSetup "OptiParametric", Array("NAME:ParametricSetup3", "IsEnabled:=",  _
%   true, Array("NAME:ProdOptiSetupDataV2", "SaveFields:=", false, "CopyMesh:=", false, "SolveWithCopiedMeshOnly:=",  _
%   true), Array("NAME:StartingPoint"), "Sim. Setups:=", 

%   Array("NAME:SweepDefinition", "Variable:=",  _
%   "Rtsv", "Data:=", "LIN 2.5um 7.5um 0.5um", "OffsetF1:=", false, "Synchronize:=",  _
%   0), 

%   Array("NAME:SweepDefinition", "Variable:=", "n", "Data:=", "LIN 1 3 0.5", "OffsetF1:=",  _
%   false, "Synchronize:=", 0)), 

% Array("NAME:Sweep Operations"), Array("NAME:Goals"))

