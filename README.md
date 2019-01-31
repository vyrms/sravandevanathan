# DBA
DBA related files
Info of Files containing scripts of pipeline to process RNA seq files from DBA RNA seq related experiments

Initial analysis.R file contains script to perform downstream analysis of data from stringtie transcript abundance tables. These tables are obtained by merging the FPKM columns from the files in ballgown directory in corresponding folders. This merge process was manually done using R. 

Suggestion1: Merging to be done automatically completely to avoid human error. 

Ballgown directory contains respective folders underwhich we have the stringtie generated raw output and we are interested in t_data (transcript abundance) and gene abundance files. 

Modelscript file shows a complete script ready to be submitted to slurm job handler. For generating this complete script, two cat operations were performed.

1)concatenation of input headers and the base script -> running script
2)contatenation of slurm header and the running script -> final complete script

In the modelscript, input has been simplified as 'passed as a cmd line parameter'. Kindly modify script according to location of input files. sourced bashrc files also included in the master branch here named ".bashrc".

Note : Running cutadapt on python3 would significantly increase the speed of the job. Since i was unable to get it working on oyhton3, i wasnt able to use the "processing in multicores" option. It would be great to get cutadapt to work in python3

Folder runscript contains just the base script and slurm header script for reference.

All input files are in an accessible folders in protected locations.
