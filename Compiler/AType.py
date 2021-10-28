import numpy as np

def JMP():
    return "000000000"
def JGT():
    return "000001000"
def JEQ():
    return "000010000"

class Atype:
    #Switch para el caso de Lectura de Atype
    def AT(n):
        switcher ={
            "JMP": JMP(),
            "JGT": JGT(),
            "JEQ": JEQ(),
        }
        return switcher.get(n)

    