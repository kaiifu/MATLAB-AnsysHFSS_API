% Example :
% ---------
% hfssUnites(fid,'Object1,Object2,Object3,Object4');
% ----------------------------------------------------------------------------

function hfssUnites(fid,Names)
% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.Unite  _\n');
fprintf(fid, 'Array("NAME:Selections", _\n');
fprintf(fid, '"Selections:=", _\n');
fprintf(fid, '"%s"), _\n',Names);

fprintf(fid, 'Array("NAME:UniteParameters", "KeepOriginals:=", false) \n');

