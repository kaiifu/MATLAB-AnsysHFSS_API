function hfssMaxGain_opti(fid, reportName, reportType, displayType,...
    solutionName, sweepname, context, Optimetrics_name, NonOptmetrics_name, Function)

% function hfssMaxGain_opti(fid, "Gain", "Far Fields", displayType,...
%     'Setup1', 'Sweep', "3D", operating_freq, Optimetrics_name, NonOptmetrics_name, dB(GainTotal))

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
fprintf(fid, '"Theta:=", Array("0deg"), _\n');

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
fprintf(fid, '"Y Component:=", Array("%s"))\n', Function);
fprintf(fid, '\n');