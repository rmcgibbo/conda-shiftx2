make
mkdir -p $PREFIX/share/ $PREFIX/bin
cp -r . $PREFIX/share/shiftx2
cat <<EOF > $PREFIX/bin/shiftx2.py
#!/usr/bin/env python
import sys
import os
os.chdir('$PREFIX/share/shiftx2')
os.system(' '.join(['./shiftx2.py'] + sys.argv[1:]))
EOF
