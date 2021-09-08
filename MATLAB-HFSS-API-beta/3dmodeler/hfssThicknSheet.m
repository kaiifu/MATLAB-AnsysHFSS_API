% ----------------------------------------------------------------------------

% hfssThicknSheet(fid, "Rf_2t4_ObjectFromFace1,Rf_2t4_ObjectFromFace2", thickness)

function hfssThicknSheet(fid, Name, thickness, Units)

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.ThickenSheet _\n');

% Rectangle Parameters.
fprintf(fid, 'Array("NAME:Selections", _\n');
fprintf(fid, '"Selections:=", "%s", _\n', Name);
fprintf(fid, '"NewPartsModelFlag:=", _\n');
fprintf(fid, '"Model"), _\n');

fprintf(fid, 'Array("NAME:SheetThickenParameters", _\n');
fprintf(fid, '"Thickness:=", "%f%s", _\n', thickness, Units);
fprintf(fid, '"BothSides:=", false)\n');
end