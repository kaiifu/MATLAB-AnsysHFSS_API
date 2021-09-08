function hfssCreateReport(fid, reportName, reportType, displayType,...
                          solutionName, sweepname, Function)
% ----------------------------------------------------------------------------
% function hfssCreateEquation(fid,Func,Equation,SolutionName,SweepName)
%
% Description :
% -------------
% Create the necessary VB Script to create an "Output Variable"
%
% Parameters :
% ------------
% fid             - file identifier of the HFSS script file.
% reportName      - name of the Report.
% reportType      - "Terminal Solution Data" when driven by Terminal.
% displayType     - 'Rectangular Plot'
% SolutionName    - name of the Solution Setup (appears under 'Analysis' in HFSS).
% SweepName       - name of the Frequency Sweep (appears under 'Analysis' in HFSS).
% Function        - ojcective needed to be reported.
%
% Example :
% ---------
% dB(St(1,1))
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% Copyright 2019, Fu Kai (kayser.fu@outlook.com)
% ----------------------------------------------------------------------------
                     
% preamble
fprintf(fid, 'Set oModule = oDesign.GetModule("ReportSetup") \n');
fprintf(fid, 'oModule.CreateReport _\n');

% reportname
fprintf(fid, '"%s", _\n', reportName);
% reporttype
fprintf(fid, '"%s", _\n', reportType);
% displaytype
fprintf(fid, '"%s", _\n', displayType);
% solutionname
fprintf(fid, '"%s : %s", _\n', solutionName, sweepname);
% Domain
fprintf(fid, 'Array("Domain:=", "%s"), _\n', sweepname);

fprintf(fid, 'Array("Freq:=", Array("All")), Array("X Component:=", _\n');
fprintf(fid, '"Freq", "Y Component:=", Array("%s")), Array()\n', Function);

% % Traces
% fprintf(fid, 'oModule.UpdateTraces _\n');
% 
% fprintf(fid, '"%s", _\n', reportName);
% fprintf(fid, 'Array("dB(St(%s,%s))"), _\n', a, b);
% fprintf(fid, '"Freq", "Y Component:=", Array("dB(St(%s,%s))")), Array()\n', a, b);
% fprintf(fid, '"%s : %s", _\n', solutionName, sweepname);
% fprintf(fid, 'Array("Domain:=", "%s"), _\n', sweepname);
% fprintf(fid, ' Array("Freq:=", Array("All")), Array("X Component:=", _\n');
% fprintf(fid, '"Freq", "Y Component:=", Array("dB(St(%s,%s))")), Array()\n', a, b);
% 
%   "Freq", "Y Component:=", Array("dB(St(TSV_1_T2,TSV_1_T1))")), Array()