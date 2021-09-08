
function hfssAssignLumpedPort_face(fid, Name, faceID, iLStart, iLEnd, Units)

% The usual fprintf stuff.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("BoundarySetup")\n');

fprintf(fid, 'oModule.AssignLumpedPort _\n');

fprintf(fid, 'Array("NAME:%s", _\n', Name);
fprintf(fid, '"Faces:=", Array(%d), _\n', faceID);
fprintf(fid, '"DoDeembed:=", false, _\n');
fprintf(fid, '"RenormalizeAllTerminals:=", true, _\n');
fprintf(fid, 'Array("NAME:Modes", _\n');
fprintf(fid, 'Array("NAME:Mode1", _\n');
fprintf(fid, '"ModeNum:=", 1, _\n');
fprintf(fid, '"UseIntLine:=", true, _\n');
fprintf(fid, 'Array("NAME:IntLine", _\n');
fprintf(fid, '"Start:=", Array("%f%s", "%f%s", "%f%s"), _\n', ...
        iLStart(1), Units, iLStart(2), Units, iLStart(3), Units);
fprintf(fid, '"End:=", Array("%f%s", "%f%s", "%f%s") _\n', ...
        iLEnd(1), Units, iLEnd(2), Units, iLEnd(3), Units);
fprintf(fid, '), _\n');
fprintf(fid, '"AlignmentGroup:=", 0, _\n');
fprintf(fid, '"CharImp:=", "Zpi", _\n');
fprintf(fid, '"RenormImp:=", "50ohm")), _\n');
fprintf(fid, '"ShowReporterFilter:=", false, _\n');
fprintf(fid, '"ReporterFilter:=", Array(true), _\n');
fprintf(fid, '"Impedance:=", "50ohm")\n');