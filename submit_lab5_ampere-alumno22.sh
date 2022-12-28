#!/bin/bash
#
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno22/lab1/fastq
#SBATCH -J git
#SBATCH --ntasks-per-node=1 # a maximum count of tasks per node 
#SBATCH --cpus-per-task=4
#SBATCH --mail-type=NONE
#SBATCH --mail-user=MAIL@um.es

ficheros=(Sample1.fastq Sample2.fastq Sample3.fastq Sample4.fastq)

for sample in "${ficheros[@]}";
do
	srun -n1 -c4 ./file-cut.sh $sample 
done
