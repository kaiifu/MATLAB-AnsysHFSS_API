function  hfssChangePropertyFacefromObj(fid, obj, name)
% hfssChangePropertyFacefromObj(fid, name, position, size)
% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DAttributeTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s"), _\n', obj);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Name", "Value:=", "%s"))))\n', name);
end