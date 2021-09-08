function hfssSetLumpedPort(fid, Name, BodyName, Position, Units, Reference)
% ----------------------------------------------------------------------------
% function hfssSetLumpedPort(fid, Name, BodyName, Position, Units, Reference)
% 
% Description :
% -------------
% Create the necessary VB Script to assign a Lumped Port to a given Object,
% when the solution type is set as "Driven Terminal"
%
% Parameters :
% ------------
% fid       - file identifier of the HFSS script file.
% Name      - name of the lumped port (appears under 'Excitation' in HFSS).
% BodyName  - name of the (sheet-like) object to which the lumped port is to 
%             be assigned.
% Position  - position of the (sheet-like) object to which the lumped port is to 
%             be assigned. Specify as [x, y, z].
% Units     - specify as 'meter', 'in', 'cm' (defined in HFSS).
% Reference - name of the conductor used as reference in the process of set lumped.
% 
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
% hfssAssignLumpedPort(fid, 'Port1', 'Rectangle1', [-W/2, 0, 0], 'um', 'GND')
% ----------------------------------------------------------------------------

% ----------------------------------------------------------------------------
% Copyright 2019, Fu Kai (kayser.fu@outlook.com)
% ----------------------------------------------------------------------------

% Gets the face id corresponding to position input.
fprintf(fid, '\n');
fprintf(fid, 'Dim faceid \n');
fprintf(fid, 'faceid = oEditor.GetFaceByPosition(Array("NAME:Parameters", _\n');
fprintf(fid, '"BodyName:=", "%s",_\n', BodyName);
fprintf(fid, '"XPosition:=", "%f%s",_\n', Position(1),Units);
fprintf(fid, '"YPosition:=", "%f%s",_\n', Position(2),Units);
fprintf(fid, '"ZPosition:=", "%f%s"))\n', Position(3),Units);

% The usual fprintf stuff.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');
% Lumped Port
fprintf(fid, 'oModule.AutoIdentifyPorts ');
fprintf(fid, 'Array("NAME:Faces", ');
fprintf(fid, 'faceid), ');
fprintf(fid, 'false, ');
fprintf(fid, 'Array("NAME:ReferenceConductors", _\n');
fprintf(fid, '"%s"), ', Reference);
fprintf(fid, '"%s", ', Name);
fprintf(fid, 'true\n');

