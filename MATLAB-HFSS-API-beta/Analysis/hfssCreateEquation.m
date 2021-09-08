function hfssCreateEquation(fid,Func,Equation,SolutionName,SweepName)
% ----------------------------------------------------------------------------
% function hfssCreateEquation(fid,Func,Equation,SolutionName,SweepName)
%
% Description :
% -------------
% Create the necessary VB Script to create an "Output Variable"
%
% Parameters :
% ------------
% fid           - file identifier of the HFSS script file.
% Func          - name of the Output Variable.
% Equation      - function of the Output Variable.
% SolutionName  - name of the Solution Setup (appears under 'Analysis' in HFSS).
% SweepName     - name of the Frequency Sweep (appears under 'Analysis' in HFSS).
%
% Example :
% ---------
% hfssCreateEquation(fid,'QFactor','-im(Yt(P1,P1))/re(Yt(P1,P1))','Setup1', 'Sweep')
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% Copyright 2019, Fu Kai (kayser.fu@outlook.com)
% ----------------------------------------------------------------------------
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("OutputVariable")\n');
fprintf(fid, 'oModule.CreateOutputVariable "%s",  _\n', Func);
fprintf(fid, '"%s", _\n', Equation);
fprintf(fid, '"%s : %s", _\n', SolutionName, SweepName);
fprintf(fid, '"Terminal Solution Data", _\n');
fprintf(fid, 'Array("Domain:=", "%s")\n', SweepName);