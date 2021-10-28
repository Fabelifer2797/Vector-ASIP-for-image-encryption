import numpy as np


def Fill():
    return "000000000000000"

def MOVRS():
    n = "100001000" + Fill()
    return n

def MOVRV():
    n = "100010001" + Fill()
    return n

def LDRS():
    n = "100101000" + Fill()
    return n

def LDRV():
    n = "100110001" + Fill()
    return n

def STALL():
    n = "010000000" + Fill()
    return n



class F2Rtype:
    #Switch para el caso de Lectura de F2Rtype
    def F2RT(n):
        switcher ={
            "MOVRS": MOVRS(),
            "MOVRV": MOVRV(),
            "LDRS": LDRS(),
            "LDRV": LDRV(),
            "STALL": STALL(),

        }
        return switcher.get(n)