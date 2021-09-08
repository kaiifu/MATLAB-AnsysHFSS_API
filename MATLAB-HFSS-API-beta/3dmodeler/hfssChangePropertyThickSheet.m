
% hfssChangePropertyThickSheet(fid, 'P1_Box', '-rf_siw_r')
function  hfssChangePropertyThickSheet(fid, name, thickness)

% preamble
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ChangeProperty _\n');
fprintf(fid, 'Array("NAME:AllTabs", _\n');
fprintf(fid, 'Array("NAME:Geometry3DCmdTab", _\n');
fprintf(fid, 'Array("NAME:PropServers", _\n');

fprintf(fid, '"%s:ThickenSheet:1"), _\n', name);
fprintf(fid, 'Array("NAME:ChangedProps", _\n');
% change position
fprintf(fid, 'Array("NAME:Thickness", _\n');
fprintf(fid, '"Value:=", "%s"))))\n', thickness);