function  hfssChangePropertyDupLine(fid, name, vector)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:DuplicateAlongLine:1"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Vector", _\n');
fprintf(fid, '"X:=", "%s", _\n', vector{1});
fprintf(fid, '"Y:=", "%s", _\n', vector{2});
fprintf(fid, '"Z:=", "%s")))) \n', vector{3});