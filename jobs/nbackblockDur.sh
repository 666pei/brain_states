#!/bin/bash
set -euxo pipefail

$MP -nodisplay -r "addpath(genpath('$BD')); name_root = char('$D'); basedir = char('$BD'); scan = char('$SCAN'); numClusters = [$K]; run([basedir,'code/statedynamics/nbackblockTPDur.m']); exit"

cd $BD'code/statedynamics'
$RP plotnbackblockDur.R $D $K $BD
$RP plotnbackblockDwell.R $D $K $BD
