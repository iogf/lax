from string import ascii_lowercase, ascii_uppercase

ENV = {}

exec('from liblax.core import *', ENV)
for ind in (ascii_lowercase + ascii_uppercase):
    exec('%s = Chk("%s")' % (ind, ind), ENV)





