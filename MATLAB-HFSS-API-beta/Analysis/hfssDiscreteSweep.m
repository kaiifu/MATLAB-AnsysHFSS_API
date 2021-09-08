% ----------------------------------------------------------------------------
% function hfssDiscreteSweep(fid, Name, SolutionName, fStartGHz, ...
%                                fStopGHz)
% hfssDiscreteSweep(fid,'Sweep','Setup1', 26, 29, 0.2);
% Description :
% -------------
% ----------------------------------------------------------------------------
function hfssDiscreteSweep(fid, Name, SolutionName, fStartGHz, ...
                                fStopGHz, fStepGHz)
% arguments processor.
if (nargin < 5)
	error('Insufficient # of arguments');
end
% create script.
fprintf(fid, '\n');
fprintf(fid, 'Set oModule = oDesign.GetModule("AnalysisSetup")\n');

fprintf(fid, 'oModule.InsertFrequencySweep _\n');
fprintf(fid, '"%s", _\n', SolutionName);
fprintf(fid, 'Array("NAME:%s", _\n', Name);
fprintf(fid, '"IsEnabled:=", true, _\n');
fprintf(fid, '"RangeType:=", "LinearStep", _\n');
fprintf(fid, '"RangeStart:=", "%fGHz", _\n', fStartGHz);
fprintf(fid, '"RangeEnd:=", "%fGHz", _\n', fStopGHz);
fprintf(fid, '"RangeStep:=", "%fGHz", _\n', fStepGHz);
fprintf(fid, '"Type:=", "Discrete", _\n');
fprintf(fid, '"SaveFields:=", true, _\n');
fprintf(fid, '"SaveRadFields:=", false, _\n');
fprintf(fid, '"ExtrapToDC:=", false)\n');