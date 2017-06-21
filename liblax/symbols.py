from string import ascii_lowercase, ascii_uppercase
from liblax.core import *

for ind in (ascii_lowercase + ascii_uppercase):
    exec('%s = Chk("%s")' % (ind, ind))

