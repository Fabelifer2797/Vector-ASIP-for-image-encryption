import numpy as np


def Fill():
    return "00000000000"

def CMPR():
    n = "100100000" + Fill()
    return n

def STRS():
    n = "100111000" + Fill()
    return n

def STRV():
    n = "101000001" + Fill()
    return n

def XORVS():
    n = "110000010" + Fill()
    return n

def RCRVS():
    n = "110001010" + Fill()
    return n

def LCRVS():
    n = "110010010" + Fill()
    return n    

def ADDS():
    n = "110011000" + Fill()
    return n

def ADDV():
    n = "110100001" + Fill()
    return n

def SUBS():
    n = "110101000" + Fill()
    return n

def SUBV():
    n = "110110001" + Fill()
    return n

class F3Rtype:
    #Switch para el caso de Lectura de F3Rtype
    def F3RT(n):
        switcher ={
            "CMPR": CMPR(),
            "STRS": STRS(),
            "STRV": STRV(),
            "XORVS": XORVS(),
            "RCRVS": RCRVS(),
            "LCRVS": LCRVS(),
            "ADDS": ADDS(),
            "ADDV": ADDV(),
            "SUBS": SUBS(),
            "SUBV": SUBV(),

        }
        return switcher.get(n)