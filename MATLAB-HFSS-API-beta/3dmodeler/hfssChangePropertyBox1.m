function  hfssChangePropertyBox1(fid, name, position, size)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');
% fprintf(fid, '"%s:CreateBox:1"), _\n', name);

fprintf(fid, '%s), _\n',name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Position", _\n');
fprintf(fid, '"X:=", "%s", _\n', position{1});
fprintf(fid, '"Y:=", "%s", _\n', position{2});
fprintf(fid, '"Z:=", "%s"), _\n', position{3});
% change size
fprintf(fid, 'Array("NAME:XSize", "Value:=", "%s"), _\n', size{1});
fprintf(fid, 'Array("NAME:YSize", "Value:=", "%s"), _\n', size{2});
fprintf(fid, 'Array("NAME:ZSize", "Value:=", "%s")))) \n', size{3});