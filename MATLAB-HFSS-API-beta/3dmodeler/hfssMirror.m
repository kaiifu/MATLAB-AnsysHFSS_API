% ----------------------------------------------------------------------------

function hfssMirror(fid, ObjectList, dVector_base, dVector_normal, Units, ...
				             dupBoundaries)


% arguments processor.
if (nargin < 5)
	error('Insufficient number of arguments !');
elseif (nargin < 6)
	dupBoundaries = [];
end;

% default arguments.
if isempty(dupBoundaries)
	dupBoundaries = false;
end;

nObjects = length(ObjectList);

% Preamble.
fprintf(fid, '\n');
fprintf(fid, 'oEditor.Mirror _\n');
fprintf(fid, 'Array("NAME:Selections", _\n');

% Object Selections.
fprintf(fid, '"Selections:=", "');
for iObj = 1:nObjects
    fprintf(fid, '%s', ObjectList{iObj});
    if (iObj ~= nObjects)
        fprintf(fid, ',');
    end
end
fprintf(fid, '", _\n');
fprintf(fid, '"NewPartsModelFlag:=", _\n');
fprintf(fid, '"Model"), _\n');

% Duplication Vectors.
fprintf(fid, 'Array("NAME:MirrorParameters", _\n');
fprintf(fid, '"MirrorBaseX:=", "%f%s", _\n', dVector_base(1), Units);
fprintf(fid, '"MirrorBaseY:=", "%f%s", _\n', dVector_base(2), Units);
fprintf(fid, '"MirrorBaseZ:=", "%f%s", _\n', dVector_base(3), Units);
fprintf(fid, '"MirrorNormalX:=", "%f%s", _\n', dVector_normal(1), Units);
fprintf(fid, '"MirrorNormalY:=", "%f%s", _\n', dVector_normal(2), Units);
fprintf(fid, '"MirrorNormalZ:=", "%f%s")\n', dVector_normal(3), Units);

end

