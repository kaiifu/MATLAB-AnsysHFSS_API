function hfssExportNetworkDataVar(fid, fileName, setupName, sweepName, expFileType, num)

% Export File Type Switch.
switch (expFileType)
	case 'h', expType = 1;
	case 't', expType = 2;
	case 's', expType = 3;
	case 'c', expType = 4;
	case 'm', expType = 7;
	case 'z', expType = 8;
	otherwise, error('Export File Type Unknown !');
end

switch (expFileType)
% 	case 'h', extension = 1;
	case 't', extension = '.tab';
	case 's', extension = '.s2p';
	case 'c', extension = '.cit';
	case 'm', extension = '.m';
	case 'z', extension = '.nmf';
	otherwise, error('Export File Extension Unknown !');
end

% The usual fprintf()'s
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("Solutions")\n');
fprintf(fid, 'oModule.ExportNetworkData _\n');
fprintf(fid, '        "", _\n');
fprintf(fid, '        Array("%s:%s"), _\n', setupName, sweepName);
fprintf(fid, '        %d,  _\n', expType);
fprintf(fid, '        "%s%d%s", _\n', fileName, num, extension);
fprintf(fid, '        Array("All"),  _\n');
fprintf(fid, '        true, _\n');
fprintf(fid, '        %.2f \n', 50.0);

