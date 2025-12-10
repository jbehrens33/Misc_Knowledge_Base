# Motivation

This folder has materials to help one get started in CADES for running streamMetabolizer. Note that the specific set-up described may change as packages or R are updated. 

The starting point for everyone using CADES Baseline should be the user guide, available here: https://docs.cades.olcf.ornl.gov/baseline_user_guide/baseline_user_guide.html. 

# 1. Access CADES

One will first need to get access and approval to work in CADES. It is best to reach out to another member of the WaDE SFA team who already has access (or the CCSI), to learn who to get approval from.

Tip for accessing CADES baseline via R studio: you can access CADES baseline via the "terminal" tab (usually next to the "console" tab). If you are working from a PC, the following will be what you can use to sign-in:
ssh -m hmac-sha2-512 [username]@baseline.ccs.ornl.gov

# 2. Download R (if needed) and R Packages

On the CADES baseline HPC, we've run into issues in the past where older versions of R don't work well with the most updated version of streamMetabolizer. As a result, it is best to work in the version of R that is optimized for the version of streamMetabolizer that is downloaded. 

As of March 2025 that is R version 4.4.3. The version automatically downloaded in CADES is 4.3, which does not seem to meld well. 

## Step 1: install R 
(run each of the lines below, one by one, while working from the log-in node. You MUST be in your home directory.)

wget https://cran.r-project.org/src/base/R-4/R-4.4.3.tar.gz
tar xzf R-4.4.3.tar.gz

cd R-4.4.3

module load openblas

./configure

make -j16

## Step 2: Edit your ~/.bashrc file to include the following (the file should be in your home directory)

export PATH=~/R-4.4.3/bin:$PATH

## Step 3: Reload your ~/.bashrc file

source ~/.bashrc

## Step 4: Install the neccesary packages (code and bash script available in "LoadingPackages")

Once you have R ready to run in your folder (steps 1-3), it is now time to load in the R packages needed for streamMetabolizer. 

This will take time and computing resources, so do NOT download them via the log-in node. 

Rather, you should submit a job (sbatch DownloadPackages_2025-03-26.sh). Code and the bash script is available in the folder titled "LoadingPackages".

# 3. Working in HPC environments

Here's a great cheat sheet of common commands for navigating the HPC environment: https://www.git-tower.com/blog/command-line-cheat-sheet/. 

I highly recommend using github to move data/code between your desktop and the cluster. Check the GitHub-Tips page for further tips: https://github.com/jbehrens33/WADE_Metabolism_HPC/blob/main/_Settingup-CADES/GitHub-Tips. 
