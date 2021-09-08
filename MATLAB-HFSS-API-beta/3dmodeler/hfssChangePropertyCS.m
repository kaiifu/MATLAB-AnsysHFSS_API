function  hfssChangePropertyCS(fid, name, origin)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCSTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');
fprintf(fid, '"%s"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Origin", _\n');
fprintf(fid, '"X:=", "%s", _\n', origin{1});
fprintf(fid, '"Y:=", "%s", _\n', origin{2});
fprintf(fid, '"Z:=", "%s"))))\n', origin{3});

% oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCSTab", Array("NAME:PropServers",  _
%   "RelativeCS1"), Array("NAME:ChangedProps", Array("NAME:Origin", "X:=", "-Waccess/2+1", "Y:=",  _
%   "Laccess+1", "Z:=", "0um"))))