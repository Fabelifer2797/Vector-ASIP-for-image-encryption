import numpy as np

#Funciones de registros

def R0():
    return "0000"
def R1():
    return "0001"
def R2():
    return "0010"
def R3():
    return "0011"
def R4():
    return "0100"
def R5():
    return "0101"
def R6():
    return "0110"
def R7():
    return "0111"
def R8():
    return "1000"
def R9():
    return "1001"
def R10():
    return "1010"
def R11():
    return "1011"
def R12():
    return "1100"
def R13():
    return "1101"
def R14():
    return "1110"
def R15():
    return "1111"

#Switch para el caso de Lectura de cada Registro
def registros(n):
    switcher ={
        "R0": R0(),
        "R1": R1(),
        "R2": R2(),
        "R3": R3(),
        "R4": R4(),
        "R5": R5(),
        "R6": R6(),
        "R7": R7(),
        "R8": R8(),
        "R9": R9(),
        "R10": R10(),
        "R11": R11(),
        "R12": R12(),
        "R13": R13(),
        "R14": R14(),
        "R15": R15(),
    }
    return switcher.get(n)

