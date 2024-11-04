#!/usr/bin/env python3

import subprocess

def test_users1():

    # Run the bash script
    result = subprocess.Popen(['bash', 'users1.bash'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    output = result.stdout.read()

    assert "tstark" in output
    assert "bbanner" in output
    assert "thor" in output
    assert "srogers" in output
    assert "nromanoff" in output

test_users1()