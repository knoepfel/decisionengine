import decisionengine.framework.engine.de_client as de_client

import os
import re
import subprocess

# Unfortunately, because argparse short-circuits the '-h' process, we
# need to run the -h option as a separate process, capturing the
# output for testing.
def test_client_help(capfd):
    this_dir = os.path.dirname(os.path.abspath(__file__))
    de_client_cmd = os.path.join(this_dir, "../de_client.py")
    output = subprocess.run([de_client_cmd, "-h"], stdout=subprocess.PIPE)
    assert re.match(b"usage.*" +
                    b"optional arguments.*" +
                    b"Decision Engine server options.*" +
                    b"Channel-specific options.*" +
                    b"Product-specific options.*" +
                    b"Database reaper options.*",
                    output.stdout,
                    flags=re.DOTALL)

def test_client_with_no_server():
    assert de_client.main(['--status']) == \
        "An error occurred while trying to access a DE server at 'http://localhost:8888'\n" + \
        "Please ensure that the host and port names correspond to a running DE instance."
