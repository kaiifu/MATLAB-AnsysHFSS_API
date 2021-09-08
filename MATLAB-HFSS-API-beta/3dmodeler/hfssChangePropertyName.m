function  hfssChangePropertyName(fid, name, name_new)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
% fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:Geometry3DAttributeTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Name", _\n');
fprintf(fid, '"Value:=", "%s")))) \n', name_new);