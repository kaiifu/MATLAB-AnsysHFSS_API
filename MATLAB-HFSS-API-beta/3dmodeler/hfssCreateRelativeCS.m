function hfssCreateRelativeCS(fid, Name, Origin, Units)
XAxisVec=[1,0,0];
YAxisVec=[0,1,0];
Origin = reshape(Origin, length(Origin), 1);
XAxisVec = reshape(XAxisVec, length(XAxisVec), 1);
YAxisVec = reshape(YAxisVec, length(YAxisVec), 1);
if iscell(Origin) == 0
    Origin = mat2cell(Origin,[1,1,1],1);
end
if iscell(XAxisVec) == 0
    XAxisVec = mat2cell(XAxisVec,[1,1,1],1);
end
if iscell(YAxisVec) == 0
    YAxisVec = mat2cell(YAxisVec,[1,1,1],1);
end

fprintf(fid, '\n');
fprintf(fid, 'oEditor.CreateRelativeCS Array("NAME:RelativeCSParameters", _\n');
xyz = 'XYZ';

for i = 1:3
    if isnumeric(Origin{i,1})
        fprintf(fid, '"Origin%s:=", "%f%s", _\n', xyz(i), Origin{i,1}, Units);
    else
        fprintf(fid, '"Origin%s:=", "%s", _\n', xyz(i), Origin{i,1});
    end
end

for i = 1:3
    if isnumeric(XAxisVec{i,1})
        fprintf(fid, '"XAxis%svec:=", "%f%s", _\n', xyz(i), XAxisVec{i,1}, Units);
    else
        fprintf(fid, '"XAxis%svec:=", "%s", _\n', xyz(i), XAxisVec{i,1});
    end
end

for i = 1:2
    if isnumeric(YAxisVec{i,1})
        fprintf(fid, '"YAxis%svec:=", "%f%s", _\n', xyz(i), YAxisVec{i,1}, Units);
    else
        fprintf(fid, '"YAxis%svec:=", "%s", _\n', xyz(i), YAxisVec{i,1});
    end
end
if isnumeric(YAxisVec{3,1})
    fprintf(fid, '"YAxis%svec:=", "%f%s"), _\n', xyz(3), YAxisVec{3,1}, Units);
else
    fprintf(fid, '"YAxis%svec:=", "%s"), _\n', xyz(3), YAxisVec{3,1});
end

fprintf(fid, 'Array("NAME:Attributes", _\n');
fprintf(fid, '"Name:=", "%s")', Name);
