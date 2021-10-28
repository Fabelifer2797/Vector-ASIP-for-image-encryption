import numpy as np

def MOVI():
    return "100000100"


class IRDtype:
    #Switch para el caso de Lectura de IRDtype
    def IRDT(n):
        switcher ={
            "MOVI": MOVI(),

        }
        return switcher.get(n)

 