function  hfssChangePropertyDupLine2(fid, name, vector, num)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:DuplicateAlongLineEdit:2"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
if vector
fprintf(fid, 'Array("NAME:Vector", _\n');
fprintf(fid, '"X:=", "%s", _\n', vector{1});
fprintf(fid, '"Y:=", "%s", _\n', vector{2});
fprintf(fid, '"Z:=", "%s")))) \n', vector{3});
end

% change number
if num
fprintf(fid, 'Array("NAME:Total Number", _\n');
fprintf(fid, '"Value:=", "%s"))))\n', num);
end
% oEditor.ChangeProperty Array("NAME:AllTabs", Array("NAME:Geometry3DCmdTab", Array("NAME:PropServers",  _
%   "Pm:DuplicateAlongLineEdit:1"), Array("NAME:ChangedProps", Array("NAME:Total Number", "Value:=",  _
%   "int(sr_via1_n)"))))