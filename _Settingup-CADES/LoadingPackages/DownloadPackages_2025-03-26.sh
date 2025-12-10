#!/bin/sh
#SBATCH -A cli185
#SBATCH -J downloadRpackages
#SBATCH -o %x-%j.out
#SBATCH -t 1:00:00
#SBATCH -p batch
#SBATCH -N 1
#SBATCH --mem=16GB

# Modules pre-loaded on CADES that help everything run smoothly
module load gcc
module load openblas

# Access the internet to download packages
export all_proxy=socks://proxy.ccs.ornl.gov:3128/
export ftp_proxy=ftp://proxy.ccs.ornl.gov:3128/
export http_proxy=http://proxy.ccs.ornl.gov:3128/
export https_proxy=http://proxy.ccs.ornl.gov:3128/
export no_proxy='localhost,127.0.0.0/8,*.ccs.ornl.gov' 

# To use the updated version of R loaded in your folder
export PATH=~/R-4.4.3/bin:$PATH

# Run the R script
Rscript 2025-03-26_LoadRPackages.R
