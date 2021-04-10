  
addpath(genpath('.'))

% Analyze sample marmoset data
load('sampleData_marmosetLFP.mat')
results = NeuroPattGUI(sampleLFP, sampleFs);

% Generate video 
vidName = 'testVideo';
vidFps = 20;
resizeScale = 2;
saveVelocityFieldVideo(results.filteredSignal, results.velocityFields, vidName, vidFps, results.Fs, resizeScale, true)