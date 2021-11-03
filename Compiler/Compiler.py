import numpy as np
from Registers import Reg
from AType import Atype
from IRDType import IRDtype
from F2RType import F2Rtype
from I2RType import I2Rtype
from F3RType import F3Rtype


# Decimal to Binario
def decimalToBinary(n):
    return bin(n).replace("0b", "")



#Función principal de compilador
def compiler(texto, datos, largo):
    for i in range(largo):
        instruction = ""
        print(datos[i][0])
     # Atype
        if (datos[i][0] == "JMP"):
            instruction = instruction + Atype.AT("JMP")
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "JGT"):
            instruction = instruction + Atype.AT("JGT")
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "JEQ"):
            instruction = instruction + Atype.AT("JEQ")
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
     # F2R type
        if (datos[i][0] == "MOVRS"):
            instruction = instruction + F2Rtype.F2RT("MOVRS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            instruction = instruction + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "MOVRV"):
            instruction = instruction + F2Rtype.F2RT("MOVRV")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            instruction = instruction + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "LDRS"):
            instruction = instruction + F2Rtype.F2RT("LDRS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            instruction = instruction + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "LDRV"):
            instruction = instruction + F2Rtype.F2RT("LDRV")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            instruction = instruction + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "STALL"):
            instruction = instruction + F2Rtype.F2RT("STALL")
            RD =  Reg.registros("RX")
            RF1 =  Reg.registros(datos[i][1])
            instruction = instruction + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
    # F3R type
        if (datos[i][0] == "CMPR"):
            instruction = instruction + F3Rtype.F3RT("CMPR")
            RD =  Reg.registros("RX")
            RF1 =  Reg.registros(datos[i][1])
            RF2 =  Reg.registros(datos[i][2])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "STRS"):
            instruction = instruction + F3Rtype.F3RT("STRS")
            RD =  Reg.registros("RX")
            RF1 =  Reg.registros(datos[i][1])
            RF2 =  Reg.registros(datos[i][2])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "STRV"):
            instruction = instruction + F3Rtype.F3RT("STRV")
            RD =  Reg.registros("RX")
            RF1 =  Reg.registros(datos[i][1])
            RF2 =  Reg.registros(datos[i][2])
            instruction = instruction + RF2 + RF1 + RD
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "XORVS"):
            instruction = instruction + F3Rtype.F3RT("XORVS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "RCRVS"):
            instruction = instruction + F3Rtype.F3RT("RCRVS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "LCRVS"):
            instruction = instruction + F3Rtype.F3RT("LCRVS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "ADDS"):
            instruction = instruction + F3Rtype.F3RT("ADDS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "ADDV"):
            instruction = instruction + F3Rtype.F3RT("ADDV")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "SUBS"):
            instruction = instruction + F3Rtype.F3RT("SUBS")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        if (datos[i][0] == "SUBV"):
            instruction = instruction + F3Rtype.F3RT("SUBV")
            RD =  Reg.registros(datos[i][1])
            RF1 =  Reg.registros(datos[i][2])
            RF2 =  Reg.registros(datos[i][3])
            instruction = instruction + RF2 + RF1 + RD 
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        # I2R type
        if (datos[i][0] == "CMPI"):
            instruction = instruction + I2Rtype.I2RT("CMPI")
            print (instruction)
            texto.write(instruction)
            texto.write('\n')
        # IRD type
        if (datos[i][0] == "MOVI"):
            instruction = instruction + IRDtype.IRDT("MOVI")
            a = datos[i][2]
            if (len(a) < 2):
                Inm = decimalToBinary(int(a)).zfill(19)
                RD =  Reg.registros(datos[i][1])
                instruction = instruction + Inm + RD
                print(instruction)
                texto.write(instruction)
                texto.write('\n')
            else:
                if(a[1] == "X"):
                    Inm = a.replace("0X", "")
                    Inm = decimalToBinary(int(Inm)).zfill(19)
                    RD =  Reg.registros(datos[i][1])
                    instruction = instruction + Inm + RD
                    print(instruction)
                    texto.write(instruction)
                    texto.write('\n')
                else:
                    Inm = decimalToBinary(int(a)).zfill(19)
                    RD =  Reg.registros(datos[i][1])
                    instruction = instruction + Inm + RD
                    print(instruction)
                    texto.write(instruction)
                    texto.write('\n')


    texto.close

        



        
# txt XOR en lista        
datosXOR = []
with open("xor.txt", "r") as fname:
	for lineas1 in fname:
		datosXOR.append(lineas1.split())
largoXOR = len(datosXOR)
textoXOR = open("XORBinario.txt","w") 


#txt Corrimiento en lista
datosCorrimiento = []
with open("corrimiento.txt", "r") as fname:
	for lineas2 in fname:
		datosCorrimiento.append(lineas2.split())
largoCorrimiento = len(datosCorrimiento)
textoCorrimiento = open("CorrimientoBinario.txt","w") 


# txt RC5-mod en lista        
datosRC5 = []
with open("RC5-mod.txt", "r") as fname:
	for lineas3 in fname:
		datosRC5.append(lineas3.split())
largoRC5 = len(datosRC5)
textoRC5 = open("RC5Binario.txt","w") 

compiler(textoCorrimiento, datosCorrimiento, largoCorrimiento)
compiler(textoXOR, datosXOR, largoXOR)
compiler(textoRC5, datosRC5, largoRC5)