#!/usr/bin/env python3

import subprocess

def test_createusers():

    # Run the command sudo createusers.bash -i userinfo.csv
    result = subprocess.Popen(['sudo', 'createusers.bash', '-i', 'userinfo.csv'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    output = result.stdout.read()

    # Check the exit code
    #assert result.returncode == 0

    print(result.returncode)

test_createusers()