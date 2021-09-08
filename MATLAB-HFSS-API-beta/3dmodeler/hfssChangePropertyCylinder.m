function  hfssChangePropertyCylinder(fid, name, position, Radius, Height)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:CreateCylinder:1"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Radius", "Value:=", "%s"), _\n', Radius);
fprintf(fid, 'Array("NAME:Height", "Value:=", "%s"), _\n', Height);
fprintf(fid, 'Array("NAME:Center Position", "X:=", "%s", _\n', position{1});
fprintf(fid, '"Y:=", "%s", _\n', position{2});
fprintf(fid, '"Z:=", "%s")))) \n', position{3});
