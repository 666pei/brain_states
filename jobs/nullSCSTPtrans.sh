#!/bin/bash
set -euxo pipefail

$MP -nodisplay -r "addpath(genpath('$BD')); name_root = char('$D'); basedir = char('$BD'); cd(basedir); numClusters = [$K]; thrsh = [$THRESH]; run([basedir,'code/structp/nullSCSTPtrans.m']); exit"
