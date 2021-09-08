function hfssCreateReportVar(fid, reportName, reportType, displayType,...
    solutionName, sweepname, Optimetrics_name, NonOptmetrics_name, Function)
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
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("ReportSetup") \n');
fprintf(fid, 'oModule.CreateReport _\n');

% reportname
fprintf(fid, '"%s", _\n', reportName);
% reporttype
fprintf(fid, '"%s", _\n', reportType);
% fprintf(fid, '"Terminal Solution Data", _\n');
% displaytype
fprintf(fid, '"%s", _\n', displayType);
% fprintf(fid, '"Rectangular Plot", _\n');
% solutionname
fprintf(fid, '"%s : %s", _\n', solutionName, sweepname);
% Domain
fprintf(fid, 'Array("Domain:=", "%s"), _\n', sweepname);

fprintf(fid, 'Array("Freq:=", Array("All"), _\n');

num_opt = max(size(Optimetrics_name));
for i = 1: num_opt
    fprintf(fid, '"%s:=", Array("All"), _\n', Optimetrics_name{i});
end

num_nonopt = max(size(NonOptmetrics_name));
for i = 1: num_nonopt-1
    fprintf(fid, '"%s:=", Array("Nominal"), _\n', NonOptmetrics_name{i});
end
fprintf(fid, '"%s:=", Array("Nominal")), _\n', NonOptmetrics_name{num_nonopt});
    
fprintf(fid, 'Array("X Component:=", "Freq", _\n');
fprintf(fid, '"Y Component:=", Array("%s")), Array()\n', Function);
fprintf(fid, 'Array()\n');

% oModule.CreateReport "Output Variables Plot 1", "Terminal Solution Data",  _
%   "Rectangular Plot", "Setup1 : Sweep", Array("Domain:=", "Sweep"), Array("Freq:=", Array( _
%   "All"), "Rtsv:=", Array("All"), "Htsv:=", Array("Nominal"), "n:=", Array("All"), "Tox:=", Array( _
%   "Nominal"), "Tmetal:=", Array("Nominal")), Array("X Component:=", "Freq", "Y Component:=", Array( _
%   "Leff")), Array()
