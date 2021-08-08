#!/bin/bash

# Exit immediately if any cancel operation or failure occurs:
set -e

#tac $1/scripts/recon-all-status.log |egrep -m 2 .
if [[ ! -f $SUBJECTS_DIR/$1/surf/lh.pial  && -f $SUBJECTS_DIR/$1/surf/lh.pial.T1 ]]; then
	cp $SUBJECTS_DIR/$1/surf/lh.pial.T1 $SUBJECTS_DIR/$1/surf/lh.pial
	cp $SUBJECTS_DIR/$1/surf/rh.pial.T1 $SUBJECTS_DIR/$1/surf/rh.pial
	echo Copied
fi 

tkmedit $1 brainmask.mgz -aux T1.mgz -surfs -segmentation aparc+aseg.mgz <<-EOF &
    SetVolumeBrightnessContrast 0 0.35 12
    SetBrushShape 1 0 0
    UpdateBrushInfo 0 0 5 255 1 1
    SetEditBrushConfiguration
    SetCursor 0 125 100 128
    SetZoomLevel 2
    SetTool 2
EOF
