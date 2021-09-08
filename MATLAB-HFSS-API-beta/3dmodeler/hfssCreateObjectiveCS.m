function hfssCreateObjectiveCS(fid, CSname, PartName, EdgeID, type)

fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateObjectCS Array("NAME:ObjectCSParameters", _\n');
fprintf(fid, 'Array("NAME:Origin", "IsAttachedToEntity:=", _\n');
fprintf(fid, 'true, "EntityID:=", %d, _\n', EdgeID);
fprintf(fid, '"FacetedBodyTriangleIndex:=", -1, "TriangleVertexIndex:=", _\n');
fprintf(fid, '-1, "PositionType:=", "%s", "UParam:=", 0, "VParam:=", 0, "XPosition:=", _\n', type);
fprintf(fid, '"0", "YPosition:=", "0", "ZPosition:=", "0"), "MoveToEnd:=", false, "ReverseXAxis:=", _\n');
fprintf(fid, 'false, "ReverseYAxis:=", false, Array("NAME:xAxis", "DirectionType:=", _\n');
fprintf(fid, '"AbsoluteDirection", "EdgeID:=", -1, "FaceID:=", -1, "xDirection:=", "1", "yDirection:=", _\n');
fprintf(fid, '"0", "zDirection:=", "0", "UParam:=", 0, "VParam:=", 0), Array("NAME:yAxis", "DirectionType:=", _\n');
fprintf(fid, '"AbsoluteDirection", "EdgeID:=", -1, "FaceID:=", -1, "xDirection:=", "0", "yDirection:=", _\n');
fprintf(fid, '"1", "zDirection:=", "0", "UParam:=", 0, "VParam:=", 0)), Array("NAME:Attributes", "Name:=", _\n');
fprintf(fid, '"%s", "PartName:=", "%s")\n', CSname, PartName);