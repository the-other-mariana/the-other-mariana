#!/bin/bash

# Default values
GITHUB_ACCESS_TOKEN=""
GITHUB_USER=""
GITHUB_REPOSITORY=""
REPO_PATH=""
REPO_BRANCH=""
MERGE_EXTENSION=""

# Parse command-line options
# the letters are the flag names
while getopts "t:u:r:p:b:e:" opt; do
  case $opt in
    t)
      GITHUB_ACCESS_TOKEN="$OPTARG"
      ;;
    u)
      GITHUB_USER="$OPTARG"
      ;;
    r)
      GITHUB_REPOSITORY="$OPTARG"
      ;;
    p)
      REPO_PATH="$OPTARG"
      ;;
    b)
      REPO_BRANCH="$OPTARG"
      ;;
    e)
      MERGE_EXTENSION="$OPTARG"
      ;;
    \?)
      echo "Usage: capture_env_vars.sh [-u GitHubUser] [-r GitHubRepository] [-p RepoPath] [-b RepoBranch] [-e MergeExtension]"
      exit 1
      ;;
  esac
done

# Shift the options out of the command line argument list
shift $((OPTIND-1))

# Print the captured variables
echo "GitHub User: $GITHUB_USER"
echo "GitHub Repository: $GITHUB_REPOSITORY"
echo "Repo Path: $REPO_PATH"
echo "Repo Branch: $REPO_BRANCH"
echo "Merge Extension: $MERGE_EXTENSION"

# will be available to other scripts or processes that are executed 
# within the same shell session after running this script
export GITHUB_ACCESS_TOKEN
export GITHUB_USER
export GITHUB_REPOSITORY
export REPO_PATH
export REPO_BRANCH
export MERGE_EXTENSION