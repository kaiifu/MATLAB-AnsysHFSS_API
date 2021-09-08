function hfssExportNetworkDataVar(fid, fileName, expFileType, num)

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
% fprintf(fid, '"Hsub=" & Chr(39) & "55um" & Chr(39) & _\n');
% fprintf(fid, '" Htsv=" & Chr(39) & "57um" & Chr(39) & "" & _\n');
% fprintf(fid, '" n=" & Chr(39) & "1.5" & Chr(39) & _\n');
% fprintf(fid, '" Ptsv1=" & Chr(39) & "30um" & Chr(39) & " " & _\n');
% fprintf(fid, '" Ptsv1=" & Chr(39) & "30um" & Chr(39) & " " & _\n');
% %   _ 
% %     _ 
% %   "Ptsv2=" & Chr(39) & "45um" & Chr(39) & " Rox=" & Chr(39) & "6um" & Chr(39) & "" & _ 
% %   " Rtsv=" & Chr(39) & "5um" & Chr(39) & " Tmetal=" & Chr(39) & "1um" & Chr(39) & "" & _ 
% %   " Tox=" & Chr(39) & "1um" & Chr(39) & " Wpad=" & Chr(39) & "12um" & Chr(39) & "" & _ 
% %   " Wsub=" & Chr(39) & "210um" & Chr(39) & " Wvia=" & Chr(39) & "2um" & Chr(39) & "" & _ 
% %   " Wwire=" & Chr(39) & "10um" & Chr(39) & "",

fprintf(fid, '        "", _\n');
fprintf(fid, '        Array("Setup1:Sweep"), _\n');
fprintf(fid, '        %d,  _\n', expType);
fprintf(fid, '        "%s%d%s", _\n', fileName, num, extension);
fprintf(fid, '        Array("All"),  _\n');
fprintf(fid, '        true, _\n');
fprintf(fid, '        %.2f \n', 50.0);
% fprintf(fid, '        "", _\n');
% fprintf(fid, '        -1, _\n');
% fprintf(fid, '        1, _\n');
% fprintf(fid, '        15, _\n');
% fprintf(fid, '        true, _\n');
% fprintf(fid, '        true, _\n');
% fprintf(fid, '        false\n');
% fprintf(fid, '        false, _\n');
% fprintf(fid, '        %.2f, _\n', 50.0);
% fprintf(fid, '        "", _\n');
% fprintf(fid, '        -1, _\n');
% fprintf(fid, '        1, _\n');
% fprintf(fid, '        15, _\n');
% fprintf(fid, '        true, _\n');
% fprintf(fid, '        true, _\n');
% fprintf(fid, '        false\n');
