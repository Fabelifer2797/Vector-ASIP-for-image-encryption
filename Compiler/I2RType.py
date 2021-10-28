import numpy as np

def CMPI():
    return "100011100"


class I2Rtype:
    #Switch para el caso de Lectura de I2Rtype
    def I2RT(n):
        switcher ={
            "CMPI": CMPI(),

        }
        return switcher.get(n)
