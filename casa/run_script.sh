#!/bin/bash
#Must have https://bitbucket.org/M_Janssen/casaeht and casaeht/bin in PATH.
set -e

### input for the data that is to be processed ###
year=2017

track=a

band=lo

rawdata=/path/to/2017EHT-rev7/FITS-IDI/correlator/output/

### where to process the data ###
workdir0=/scratch/

### dockertag for rPicard software ###
dockertag=30e6ca14fb50275013c668285a3b476f9bc85436_91da63236db34f3a31b5309b18ac159128f28a35



#If $rawdata points to a copy of the EHT correlator directory structure:
singularity_data_production $year $track $band $dockertag $workdir0 $workdir0 $rawdata 11GB 50GB unorganized

#If $rawdata points to an organized directory where only the FITS-IDI files for the specified track and band are present:
#singularity_data_production $year $track $band $dockertag $workdir0 $workdir0 $rawdata 11GB 50GB
