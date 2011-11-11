#!/usr/bin/env python
import os, sys

def file_to_modue(s):
    if s.endswith('.py'):
        return s[:-3]
    elif s.endswith('.pyc'):
        return s[:-4]
    else:
        return s

def get_modules():
    return set(map(file_to_modue ,sum( [ [ d for d in os.listdir(m) if  os.path.exists(os.path.join(m,d,'__init__.py')) or d.endswith('.py') or d.endswith('.pyc') ] for m in sys.path if os.path.isdir(m)], [])))

for mod in get_modules():
    print(mod)

