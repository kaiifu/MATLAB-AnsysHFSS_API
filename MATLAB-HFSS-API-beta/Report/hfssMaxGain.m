function hfssMaxGain(fid, reportName, reportType, displayType,...
    solutionName, sweepname, context, Function)
% preamble
fprintf(fid, '\n');
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
% Context
fprintf(fid, 'Array("Context:=", "%s"), _\n', context);
fprintf(fid, 'Array("Freq:=", Array("All"), _\n');
fprintf(fid, '"Phi:=", Array("0deg"), _\n');
fprintf(fid, '"Theta:=", Array("0deg")), _\n');
fprintf(fid, 'Array("X Component:=", "Freq", _\n');
fprintf(fid, '"Y Component:=", Array("%s"))\n', Function);
fprintf(fid, '\n');
