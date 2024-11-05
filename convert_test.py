#!/usr/bin/env python3
import os,sys

# Check to see if the files GitHubLogo.png, tux.png and Ubuntu.png exist in the current directory
files = ["GitHubLogo.png", "tux.png", "Ubuntu.png"]
for file in files:
    if os.path.isfile(file):
        print(f"{file} exists.")
    else:
        print(f"{file} does not exist.")
        sys.exit(1)
