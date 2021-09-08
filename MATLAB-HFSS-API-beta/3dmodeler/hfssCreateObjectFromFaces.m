% ----------------------------------------------------------------------------
function hfssCreateObjectFromFaces(fid, Name, FaceID)

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateObjectFromFaces _\n');

% Rectangle Parameters.
fprintf(fid, 'Array("NAME:Selections", _\n');
fprintf(fid, '"Selections:=", "%s", _\n', Name);
fprintf(fid, '"NewPartsModelFlag:=", _\n');
fprintf(fid, '"Model"), _\n');

fprintf(fid, 'Array("NAME:Parameters", _\n');
fprintf(fid, 'Array("NAME:BodyFromFaceToParameters", _\n');

fprintf(fid, '"FacesToDetach:=", Array( _\n');
fprintf(fid, '%d))), _\n', FaceID);

fprintf(fid, 'Array("CreateGroupsForNewObjects:=", false) \n');