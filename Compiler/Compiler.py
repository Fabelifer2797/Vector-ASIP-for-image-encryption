from Registros import Reg
from AType import Atype
from IRDType import IRDtype
from F2RType import F2Rtype
from I2RType import I2Rtype
from F3RType import F3Rtype


# Decimal to Binario
def decimalToBinary(n):
    return bin(n).replace("0b", "")

print(Reg.registros("RS15"))
print(Atype.AT("JGT"))
print(IRDtype.IRDT("MOVI"))
print(F2Rtype.F2RT("MOVRV"))
print(I2Rtype.I2RT("CMPI"))
print(F3Rtype.F3RT("SUBV"))
