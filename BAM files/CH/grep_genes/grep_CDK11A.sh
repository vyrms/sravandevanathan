
BAMFOLDER=/scratch/06059/ozadamh/dba/run_june_3_2019/pipeline/sorted/

SUBFOLDERS=`ls $BAMFOLDER`

ARGUMENT="1:1702383-1724837"
GNAME="CDK11A"

for s in $SUBFOLDERS;
do
echo $s;
bamfile=${BAMFOLDER}/${s}/${s}_sorted.bam
output_file=${GNAME}/${s}_${GNAME}.bam
output_pre=${GNAME}/${s}_${GNAME}_pre.bam
samtools view -b ${bamfile} ${ARGUMENT}  | samtools sort  > ${output_file}
samtools index  ${output_file}
done
