# Analysis Code

## Overview and disclaimers
- run_* scripts loop through a list of subjects for a given script; e.g., run_L1stats.sh loops all subjects through the L1stats.sh script.
- paths to input/output data should work without error, but check package/software installation

## Transfer Data
-Requires access to XNAT server
-Transfers DICOMS to local 

Run [fmriprep][fmriprep] using `bash transferData.sh $sub`

## Scripts used to generate public data
Some files cannot be shared publicly. And some raw source data are in non-standard format. The scripts below helped us go from the raw source data to the standardized public data:
- `prepdata.sh` -- runs [heudiconv](https://github.com/nipy/heudiconv) to convert dicoms to BIDS, defaces structural scans with pydeface, and runs [mriqc](https://mriqc.readthedocs.io/en/latest/index.html)
  - [heuristics.py](https://github.com/DVS-Lab/srndna-trust/blob/main/code/heuristics.py) sets the heuristics for heudiconv
  - [addIntendedFor.py](https://github.com/DVS-Lab/srndna-trust/blob/main/code/addIntendedFor.py) adds the "IntendedFor" field for the fmap files
- Code for stimuli control/presentation and conversion of raw behavioral data to BIDS are in [stimuli](https://github.com/DVS-Lab/srndna-trust/tree/main/stimuli)

Above is wrapped within runBids.sh using `bash runBids.sh $sub`.

## Preprocessing

Run [fmriprep][fmriprep] using `bash fmriprep.sh $sub`.



[fmriprep]: http://fmriprep.readthedocs.io/en/latest/index.html
