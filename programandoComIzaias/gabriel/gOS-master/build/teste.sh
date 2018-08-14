errorToStdout () { $@ 2>&1 >/dev/null; }
errorToStdout gcc | grep no
