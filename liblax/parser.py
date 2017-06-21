from tokenize import generate_tokens as split
from tokenize import NUMBER, NAME, STRING, OP, untokenize
from StringIO import StringIO
from liblax.symbols import *

def build(data):
    result = []
    for num, val, _, _, _  in split(StringIO(data).readline):
        if num == NUMBER: 
            result.extend([(NAME, 'Num'), (OP, '('),
                           (STRING, str(val)), (OP, ')')])
        else:
            result.append((num, val))
    return untokenize(result)

def run(data):
    return eval(build(data))

