function  hfssSaveFarFieldOpti(fid)
% function  hfssAddOptiParametric(fid, VarList, range)
% preamble
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("Optimetrics") \n');
fprintf(fid, 'oModule.EditSetup "ParametricSetup1", _\n');
fprintf(fid, 'Array("NAME:ParametricSetup1", _\n');
fprintf(fid, '"IsEnabled:=", true, _\n');
fprintf(fid, 'Array("NAME:ProdOptiSetupDataV2", _\n');
fprintf(fid, '"SaveFields:=", true, _\n');
fprintf(fid, '"CopyMesh:=", false, _\n');
fprintf(fid, '"SolveWithCopiedMeshOnly:=", true), _\n');
fprintf(fid, 'Array("NAME:StartingPoint"), _\n');
fprintf(fid, '"Sim. Setups:=", Array("Setup1"), _\n');
fprintf(fid, 'Array("NAME:Goals"))\n');



%    Array("NAME:Sweeps", Array("NAME:SweepDefinition", "Variable:=",  _
%   "w_y", "Data:=", "1.023mm", "OffsetF1:=", false, "Synchronize:=", 0), Array("NAME:SweepDefinition", "Variable:=",  _
%   "w_x", "Data:=", "5.044mm", "OffsetF1:=", false, "Synchronize:=", 0), Array("NAME:SweepDefinition", "Variable:=",  _
%   "in_dx", "Data:=", "3.37mm", "OffsetF1:=", false, "Synchronize:=", 0), Array("NAME:SweepDefinition", "Variable:=",  _
%   "in_dy", "Data:=", "0.832mm", "OffsetF1:=", false, "Synchronize:=", 0)), Array("NAME:Sweep Operations", "add:=", Array( _
%   "1.283mm", "3.006mm", "2.391mm", "0.541mm"), "add:=", Array("1.411mm", "3.733mm",  _
%   "2.526mm", "0.987mm"), "add:=", Array("1.565mm", "3.398mm", "2.867mm", "1.397mm"), "add:=", Array( _
%   "1.855mm", "4.224mm", "1.847mm", "1.45mm"), "add:=", Array("1.985mm", "6.632mm",  _
%   "1.139mm", "0.746mm"), "add:=", Array("2.461mm", "1.034mm", "0.38mm", "0.13mm"), "add:=", Array( _
%   "2.919mm", "2.315mm", "0.178mm", "1.996mm"), "add:=", Array("3.074mm", "5.84mm",  _
%   "1.628mm", "2.388mm"), "add:=", Array("3.232mm", "5.304mm", "2.983mm", "2.06mm"), "add:=", Array( _
%   "3.453mm", "5.083mm", "1.305mm", "0.435mm"), "add:=", Array("3.859mm", "1.88mm",  _
%   "0.986mm", "2.922mm"), "add:=", Array("4.121mm", "2.175mm", "0.47mm", "0.685mm"), "add:=", Array( _
%   "4.235mm", "5.388mm", "1.058mm", "1.571mm"), "add:=", Array("4.384mm", "4.545mm",  _
%   "0.933mm", "1.066mm"), "add:=", Array("4.566mm", "4.803mm", "0.055mm", "2.319mm"), "add:=", Array( _
%   "4.686mm", "6.127mm", "0.289mm", "1.655mm"), "add:=", Array("4.817mm", "3.407mm",  _
%   "2.662mm", "1.675mm"), "add:=", Array("4.979mm", "6.277mm", "1.792mm", "0.885mm"), "add:=", Array( _
%   "5.155mm", "6.947mm", "0.127mm", "3.304mm"), "add:=", Array("5.322mm", "6.072mm",  _
%   "1.68mm", "2.269mm"), "add:=", Array("5.407mm", "6.464mm", "1.379mm", "1.242mm"), "add:=", Array( _
%   "5.603mm", "3.918mm", "0.697mm", "2.882mm"), "add:=", Array("5.712mm", "6.841mm",  _
%   "2.06mm", "2.662mm"), "add:=", Array("6.02mm", "5.739mm", "2.01mm", "2.583mm"), "add:=", Array( _
%   "6.16mm", "2.577mm", "0.832mm", "3.152mm"), "add:=", Array("6.311mm", "4.311mm",  _
%   "1.566mm", "1.867mm"), "add:=", Array("6.414mm", "4.047mm", "0.779mm", "1.792mm"), "add:=", Array( _
%   "6.667mm", "1.683mm", "0.55mm", "2.117mm"), "add:=", Array("6.703mm", "4.722mm",  _
%   "2.34mm", "0.254mm"), "add:=", Array("6.966mm", "3.153mm", "2.128mm", "2.977mm")), Array("NAME:Goals"))