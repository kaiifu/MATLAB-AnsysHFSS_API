function hfssSetLumpedPort2(fid, Name1, BodyName1, Position1,...
                           Name2, BodyName2, Position2,Units, Reference)
% ----------------------------------------------------------------------------
% Description :
% -------------
% Create the necessary VB Script to assign two Lumped Ports, when the solution type 
% is set as "Driven Terminal"
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% Copyright 2019, Fu Kai (kayser.fu@outlook.com)
% ----------------------------------------------------------------------------

% Gets the face id corresponding to position input.
fprintf(fid, '\n');
fprintf(fid, 'Dim faceid1 \n');
fprintf(fid, 'faceid1 = oEditor.GetFaceByPosition(Array("NAME:Parameters", _\n');
fprintf(fid, '"BodyName:=", "%s",_\n', BodyName1);
fprintf(fid, '"XPosition:=", "%f%s",_\n', Position1(1),Units);
fprintf(fid, '"YPosition:=", "%f%s",_\n', Position1(2),Units);
fprintf(fid, '"ZPosition:=", "%f%s"))\n', Position1(3),Units);

% The usual fprintf stuff.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
% Lumped Port
fprintf(fid, 'oModule.AutoIdentifyPorts ');
fprintf(fid, 'Array("NAME:Faces", ');
fprintf(fid, 'faceid1), ');
fprintf(fid, 'false, ');
fprintf(fid, 'Array("NAME:ReferenceConductors", _\n');
fprintf(fid, '"%s"), ', Reference);
fprintf(fid, '"%s", ', Name1);
fprintf(fid, 'true\n');

% Gets the face id corresponding to position input.
fprintf(fid, '\n');
fprintf(fid, 'Dim faceid2 \n');
fprintf(fid, 'faceid2 = oEditor.GetFaceByPosition(Array("NAME:Parameters", _\n');
fprintf(fid, '"BodyName:=", "%s",_\n', BodyName2);
fprintf(fid, '"XPosition:=", "%f%s",_\n', Position2(1),Units);
fprintf(fid, '"YPosition:=", "%f%s",_\n', Position2(2),Units);
fprintf(fid, '"ZPosition:=", "%f%s"))\n', Position2(3),Units);

% The usual fprintf stuff.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
% Lumped Port
fprintf(fid, 'oModule.AutoIdentifyPorts ');
fprintf(fid, 'Array("NAME:Faces", ');
fprintf(fid, 'faceid2), ');
fprintf(fid, 'false, ');
fprintf(fid, 'Array("NAME:ReferenceConductors", _\n');
fprintf(fid, '"%s"), ', Reference);
fprintf(fid, '"%s", ', Name2);
fprintf(fid, 'true\n');

