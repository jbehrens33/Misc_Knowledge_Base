# Set-up

It's best to create a respository in github where you will be move things. Make a separate, unique folder (with the same name as the repository) on both your desktop computer and HPC cluster.

I really like using github Desktop to manage git on my desktop (https://desktop.github.com/download/). You have to work through command line on the HPC cluster.

# Cloning a repository

Cloning a respository into your CADES HPC is pretty simple. First, find the folder that you want the repository to be stored in (it could be your main folder). Then run:

git clone [link to repository]

If this is your first time using git on the HPC and the repository you are cloning is private, you may need to sign-in (it will prompt you). If the repository is open, it should work without issue.

I haven't verified it, but this could be a starting point for tips on how to clone: https://centers.hpc.mil/users/docs/advancedTopics/Using_Git_for_HPC.html. 

# Overview of functions

In general, this is a wonderful guide: https://gwcbi.github.io/HPC/github.html. 

An example for moving things from your github repository to the HPC is the following:

## Step 1: Load github
module load git

## Step 2: Pull the most recent version of your github repository
git pull origin main

## Step 3: Check the status (can do anytime)
git status

## Step 4: Send a commit (add the file, create the commit - with whatever message you like, and push to github)
git add .

git commit -m "message" 

git push origin main

## Step 5: I like to always end with git status to make sure it worked
git status


