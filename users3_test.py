#!/usr/bin/env python3

import subprocess

def test_users3():

    # Run the bash script
    result = subprocess.Popen(['bash', 'users3.bash', 'userinfo.csv'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

    output = result.stdout.read()

    assert "tstark" in output
    assert "bbanner" in output
    assert "thor" in output
    assert "srogers" in output
    assert "nromanoff" in output
    assert "Username" in output
    assert "Email" in output
    assert "Full Name" in output
    assert "ironman@avengers.org" in output
    assert "hulk@avengers.org" in output
    assert "thor@avengers.org" in output
    assert "captainamerica@avengers.org" in output
    assert "blackwidow@avengers.org" in output
    assert "Tony Stark" in output
    assert "Bruce Banner" in output
    assert "Thor Odinson" in output
    assert "Steve Rogers" in output
    assert "Natasha Romanoff" in output

test_users3()