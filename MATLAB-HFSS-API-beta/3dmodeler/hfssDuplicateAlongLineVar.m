% ----------------------------------------------------------------------------
% function hfssDuplicateAlongLine(fid, ObjectList, dVector, nClones, Units, ...
%				                  [dupBoundaries = true])
% 
% Description :
% -------------
% Creates the VB Script necessary to clone (duplicate) a list of objects 
% along a line.
%
% Parameters :
% ------------
% fid        - file identifier of the HFSS script file.
% ObjectList - a cell-array of strings that represent the objects to be 
%              cloned. (specified as {'name'})
% dVector    - (vector) the translation vector for the duplication process 
%              (specified as [dx, dy, dz]).
% nClones    - # of clones to be created.
% Units      - specified as either 'mm', 'meter', 'in' or anything else 
%              defined in HFSS.
% [dupBoundaries] - (optional, boolean) set to false if you wish NOT to 
%                   duplicate boundaries along with the geometry.
% 
% Note :
% ------
% If you have used this 3D modeler feature before, then you will probably
% realize that if the original object (to be cloned) has the name 'Name',
% then the cloned objects will have names 'Name1', 'Name2', ... This applies
% to the cloned boundaries and excitations also.
%
% Example :
% ---------
% fid = fopen('myantenna.vbs', 'wt');
% ... 
%
% ----------------------------------------------------------------------------
% varargin - specify 'true' (default) to duplicate boundaries or 'false'
%            otherwise
function hfssDuplicateAlongLineVar(fid, ObjectList, dVector, nClones, Units, ...
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
fprintf(fid, 'oEditor.DuplicateAlongLine _\n');
fprintf(fid, 'Array("NAME:Selections", _\n');


% Object Selections.
fprintf(fid, '"Selections:=", "%s", _\n', ObjectList);
% for iObj = 1:nObjects
% 	fprintf(fid, '%s, ', ObjectList{iObj});
% 	if (iObj ~= nObjects)
% 		fprintf(fid, ',');
%     end
% end
fprintf(fid, '"NewPartsModelFlag:=", _\n');
fprintf(fid, '"Model"), _\n');

dVector = reshape(dVector, length(dVector), 1);
if iscell(dVector)
    1;
else
    dVector = mat2cell(dVector,[1,1,1],1);
end

fprintf(fid, 'Array("NAME:DuplicateToAlongLineParameters", _\n');
fprintf(fid, '"CreateNewObjects:=", _\n');
fprintf(fid, 'true, _\n');
if isnumeric(dVector{1,1})
    fprintf(fid, '"XComponent:=", "%f%s", _\n', dVector{1,1}, Units);
else
    fprintf(fid, '"XComponent:=", "%s", _\n', dVector{1,1});
end
    
if isnumeric(dVector{2,1})
    fprintf(fid, '"YComponent:=", "%f%s", _\n', dVector{2,1}, Units);
else
    fprintf(fid, '"YComponent:=", "%s", _\n', dVector{2,1});
end
  
if isnumeric(dVector{3,1})
   fprintf(fid, '"ZComponent:=", "%f%s", _\n', dVector{3,1}, Units);
else
     fprintf(fid, '"ZComponent:=", "%s", _\n', dVector{3,1});
end
    
if ischar(nClones)
    fprintf(fid, '"NumClones:=", %s), _\n', nClones);
else
    fprintf(fid, '"NumClones:=", %d), _\n', nClones);
end

%   "DuplicateAssignments:=",  _
%   false), Array("CreateGroupsForNewObjects:=", false)


% Duplicate Boundaries with Geometry or not.
fprintf(fid, 'Array("NAME:Options", _\n');
if (dupBoundaries)
    fprintf(fid, '"DuplicateAssignments:=", true), _\n');
	fprintf(fid, ' Array("CreateGroupsForNewObjects:=", true)\n');
else
    fprintf(fid, '"DuplicateAssignments:=", false), _\n');
	fprintf(fid, ' Array("CreateGroupsForNewObjects:=", false)\n');
end

% oEditor.DuplicateAlongLine Array("NAME:Selections", "Selections:=", "TSV_1", "NewPartsModelFlag:=",  _
%   "Model"), Array("NAME:DuplicateToAlongLineParameters", "CreateNewObjects:=", true, "XComponent:=",  _
%   "0mm", "YComponent:=", "0.27mm", "ZComponent:=", "0mm", "NumClones:=", "3"), Array("NAME:Options", "DuplicateAssignments:=",  _
%   false), Array("CreateGroupsForNewObjects:=", false)
