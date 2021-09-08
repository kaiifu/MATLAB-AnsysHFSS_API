function  hfssChangePropertyBoxVar(fid, name)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DAttributeTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:CreateBox:"), _\n',name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
fprintf(fid, 'Array("NAME:Color", _\n');
% change color
fprintf(fid, '"R:=", 255, "G:=", 128, "B:=", 128)))) _\n');

%   "Via_top:CreateBox:1"), Array("NAME:ChangedProps", Array("NAME:Position", "X:=", "-Test", "Y:=",  _
%   "-Test", "Z:=", "57*Test"), Array("NAME:XSize", "Value:=", "2*Test"), Array("NAME:YSize", "Value:=",  _
%   "2*Test"), Array("NAME:ZSize", "Value:=", "Test"))))