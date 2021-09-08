function hfssChangePropertyRotate(fid, name, angle)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:Rotate:1"), _\n', name);

fprintf(fid, 'Array("NAME:ChangedProps", _\n');
fprintf(fid, 'Array("NAME:Angle", _\n');
fprintf(fid, '"Value:=", "%s"))))\n', angle);