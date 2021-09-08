
% faceID='faceID';
% hfssFaceID(fid,faceID,Object,[position_x,position_y,position_z],Units);
% Warnning: HFSS can automatically obtain the ID of the face, but it cannot be returned to Matlab !

function hfssFaceID_face(fid,faceID,body,position,Units)
fprintf(fid, '\n');
fprintf(fid, 'Dim %s\n',faceID);
fprintf(fid, '%s = oEditor.GetFaceByPosition',faceID);
fprintf(fid, '(Array("NAME:FaceParameters",_\n');
fprintf(fid, '"BodyName:=","%s",_\n',body);
fprintf(fid, '"Xposition:=", "%f%s",_\n',position(1),Units);
fprintf(fid, '"Yposition:=", "%f%s",_\n',position(2),Units);
fprintf(fid, '"Zposition:=", "%f%s"))\n',position(3),Units);


