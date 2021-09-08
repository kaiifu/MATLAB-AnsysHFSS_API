% ----------------------------------------------------------------------------
% function hfssInsertSolution(fid, Name, fGHz, [maxDeltaS = 0.02], 
%                             [maxPass = 25])
% hfssInsertSolution(fid, 'Setup1', operating_freq, maxDeltaS, maxPass);
% ----------------------------------------------------------------------------
function hfssInsertSolutionFarField(fid, Name, fGHz, maxDeltaS, maxPass)

% arguments processor.
if (nargin < 3)
	error('Insufficient number of arguments !');
elseif (nargin < 4)
	maxDeltaS = [];
	maxPass = [];
elseif (nargin < 5)
	maxPass = [];
end

% defaults processing.
if isempty(maxDeltaS)
	maxDeltaS = 0.02;
end
if isempty(maxPass)
	maxPass = 25;
end

% create the necessary script.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("AnalysisSetup")\n');
fprintf(fid, 'oModule.InsertSetup "HfssDriven", _\n');
fprintf(fid, 'Array("NAME:%s", _\n', Name);
fprintf(fid, '"AdaptMultipleFreqs:=", false, _\n');
fprintf(fid, '"Frequency:=", "%fGHz", _\n', fGHz);
fprintf(fid, '"maxDeltaS:=", %f, _\n', maxDeltaS);
fprintf(fid, '"PortsOnly:=", false, _\n');
fprintf(fid, '"UseMatrixConv:=", false, _\n');
fprintf(fid, '"MaximumPasses:=", %d, _\n', maxPass);
fprintf(fid, '"MinimumPasses:=", 1, _\n');
fprintf(fid, '"MinimumConvergedPasses:=", 1, _\n');
fprintf(fid, '"PercentRefinement:=", 30, _\n');
fprintf(fid, '"IsEnabled:=", true, _\n');
fprintf(fid, 'Array("NAME:MeshLink", _\n');
fprintf(fid, '"ImportMesh:=", false), _\n');
fprintf(fid, '"BasisOrder:=", 1, _\n');
fprintf(fid, '"DoLambdaRefine:=", true, _\n');
fprintf(fid, '"DoMaterialLambda:=", true, _\n');
fprintf(fid, '"SetLambdaTarget:=", false, _\n');
fprintf(fid, '"Target:=", 0.3333, _\n');
fprintf(fid, '"UseMaxTetIncrease:=", false, _\n');
fprintf(fid, '"PortAccuracy:=", 2, _\n');
fprintf(fid, '"UseABCOnPort:=", false, _\n');
fprintf(fid, '"SetPortMinMaxTri:=", false, _\n');
fprintf(fid, '"UseDomains:=", false, _\n');
fprintf(fid, '"UseIterativeSolver:=", false, _\n');
fprintf(fid, '"SaveRadFieldsOnly:=", false, _\n');
fprintf(fid, '"SaveAnyFields:=", true, _\n');
fprintf(fid, '"IESolverType:=", "Auto", _\n');
fprintf(fid, '"LambdaTargetForIESolver:=", 0.15, _\n');
fprintf(fid, '"UseDefaultLambdaTgtForIESolver:=", true, _\n');
fprintf(fid, '"IE Solver Accuracy:=", "Balanced")\n');
fprintf(fid, '\n');