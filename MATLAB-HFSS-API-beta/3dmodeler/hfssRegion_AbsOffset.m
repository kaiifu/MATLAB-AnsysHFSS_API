% zzm----------------------------------------------------------------------------
function hfssRegion_AbsOffset(fid, Name, x, Units)

% Cylinder Parameters.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateRegion _\n');
fprintf(fid, 'Array("NAME:RegionParameters", _\n');
fprintf(fid, '"+XPaddingType:=", _\n');


fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"+XPadding:=", "%f%s", _\n',x, Units);

fprintf(fid, '"-XPaddingType:=", _\n');
fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"-XPadding:=", "%f%s", _\n',x, Units);

fprintf(fid, '"+YPaddingType:=", _\n');
fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"+YPadding:=", "%f%s", _\n',x, Units);

fprintf(fid, '"-YPaddingType:=", _\n');
fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"-YPadding:=", "%f%s", _\n',x, Units);

fprintf(fid, '"+ZPaddingType:=", _\n');
fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"+ZPadding:=", "%f%s", _\n',x, Units);

fprintf(fid, '"-ZPaddingType:=", _\n');
fprintf(fid, '"Absolute Offset", _\n');
fprintf(fid, '"-ZPadding:=", "%f%s"), _\n',x, Units);

% Region Properties.
fprintf(fid, 'Array("NAME:Attributes", _\n'); 
fprintf(fid, '"Name:=", "%s", _\n', Name);
fprintf(fid, '"Flags:=", "Wireframe#", _\n');
fprintf(fid, '"Color:=", "(255 0 0)", _\n');
fprintf(fid, '"Transparency:=", 0, _\n');
fprintf(fid, '"PartCoordinateSystem:=", "Global", _\n');
fprintf(fid, '"MaterialName:=", "vacuum" , _\n');
fprintf(fid, '"SolveInside:=", true)\n');
fprintf(fid, '\n');
