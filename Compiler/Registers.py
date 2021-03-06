import numpy as np

#Funciones de registros

def RX():
    return "0000"
def RS1():
    return "0001"
def RS2():
    return "0010"
def RS3():
    return "0011"
def RS4():
    return "0100"
def RS5():
    return "0101"
def RS6():
    return "0110"
def RS7():
    return "0111"
def RS8():
    return "1000"
def RS9():
    return "1001"
def RS10():
    return "1010"
def RS11():
    return "1011"
def RS12():
    return "1100"
def RS13():
    return "1101"
def RS14():
    return "1110"
def RS15():
    return "1111"

def RV0():
    return "0000"
def RV1():
    return "0001"
def RV2():
    return "0010"
def RV3():
    return "0011"
def RV4():
    return "0100"
def RV5():
    return "0101"
def RV6():
    return "0110"
def RV7():
    return "0111"
def RV8():
    return "1000"
def RV9():
    return "1001"
def RV10():
    return "1010"
def RV11():
    return "1011"
def RV12():
    return "1100"
def RV13():
    return "1101"
def RV14():
    return "1110"
def RV15():
    return "1111"

class Reg:

    #Switch para el caso de Lectura de cada Registro
    def registros(n):
        switcher ={
            "RX": RX(),
            "RS1": RS1(),
            "RS2": RS2(),
            "RS3": RS3(),
            "RS4": RS4(),
            "RS5": RS5(),
            "RS6": RS6(),
            "RS7": RS7(),
            "RS8": RS8(),
            "RS9": RS9(),
            "RS10": RS10(),
            "RS11": RS11(),
            "RS12": RS12(),
            "RS13": RS13(),
            "RS14": RS14(),
            "RS15": RS15(),
            "RV0": RV0(),
            "RV1": RV1(),
            "RV2": RV2(),
            "RV3": RV3(),
            "RV4": RV4(),
            "RV5": RV5(),
            "RV6": RV6(),
            "RV7": RV7(),
            "RV8": RV8(),
            "RV9": RV9(),
            "RV10": RV10(),
            "RV11": RV11(),
            "RV12": RV12(),
            "RV13": RV13(),
            "RV14": RV14(),
            "RV15": RV15(),
            "RX,": RX(),
            "RS1,": RS1(),
            "RS2,": RS2(),
            "RS3,": RS3(),
            "RS4,": RS4(),
            "RS5,": RS5(),
            "RS6,": RS6(),
            "RS7,": RS7(),
            "RS8,": RS8(),
            "RS9,": RS9(),
            "RS10,": RS10(),
            "RS11,": RS11(),
            "RS12,": RS12(),
            "RS13,": RS13(),
            "RS14,": RS14(),
            "RS15,": RS15(),
            "RV0,": RV0(),
            "RV1,": RV1(),
            "RV2,": RV2(),
            "RV3,": RV3(),
            "RV4,": RV4(),
            "RV5,": RV5(),
            "RV6,": RV6(),
            "RV7,": RV7(),
            "RV8,": RV8(),
            "RV9,": RV9(),
            "RV10,": RV10(),
            "RV11,": RV11(),
            "RV12,": RV12(),
            "RV13,": RV13(),
            "RV14,": RV14(),
            "RV15,": RV15(),
        }
        return switcher.get(n)