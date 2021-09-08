function  hfssAddOptiParametricArray(fid, Varlist, range)
% function  hfssAddOptiParametric(fid, VarList, range)
% preamble
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("Optimetrics") \n');
fprintf(fid, 'oModule.InsertSetup "OptiParametric", _\n');
fprintf(fid, 'Array("NAME:ParametricSetup1", _\n');
fprintf(fid, '"IsEnabled:=", true, _\n');
fprintf(fid, 'Array("NAME:ProdOptiSetupDataV2", _\n');
fprintf(fid, '"SaveFields:=", false, _\n');
fprintf(fid, '"CopyMesh:=", false, _\n');
fprintf(fid, '"SolveWithCopiedMeshOnly:=", true), _\n');
fprintf(fid, 'Array("NAME:StartingPoint"), _\n');
fprintf(fid, '"Sim. Setups:=", Array("Setup1"), _\n');
fprintf(fid, 'Array("NAME:Sweeps", _\n');

    
    fprintf(fid, 'Array("NAME:SweepDefinition", _\n');
    fprintf(fid, '"Variable:=", "%s", _\n', Varlist{1});
    fprintf(fid, '"Data:=", "LIN %s %s %s", _\n', range{1,1}, range{1,2}, range{1,3});
    fprintf(fid, '"OffsetF1:=", false, _\n');
    fprintf(fid, '"Synchronize:=", 0), _\n');
    
    fprintf(fid, 'Array("NAME:SweepDefinition", _\n');
    fprintf(fid, '"Variable:=", "%s", _\n', Varlist{2});
    fprintf(fid, '"Data:=", "LIN %s %s %s", _\n', range{2,1}, range{2,2}, range{2,3});
    fprintf(fid, '"OffsetF1:=", false, _\n');
    fprintf(fid, '"Synchronize:=", 0)), _\n');

fprintf(fid, 'Array("NAME:Sweep Operations"), _\n');
fprintf(fid, 'Array("NAME:Goals"))\n');

