import random
import string
__version__ = '1.0.0'
class ConvertString(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    def split_text_and_convert_string_to_float(self,separator,text):
        print(f"\nTexto: {text}\n")
        text_split = text.split(separator)
        print(f"\nTexto após split: {text_split}\n")
        tamanho = len(text_split)
        for x in range (tamanho):
            text_for_float=text_split[x]
            print(f"\nTexto separado do indice {x}: {text_for_float}\n")
            if "Objetivo" in text_for_float: #Tratar o tipo de investimento Reserva
                text_for_float=text_split[0]
                text_for_float = text_for_float.split(', R$\xa0')
                text_for_float = text_for_float[1]
                print(f"\nTexto separado 1: {text_for_float}\n")
            else:
                text_for_float=text_split[1]
                print(f"\nTexto separado 2: {text_for_float}\n")

        print(f"\nTexto que será convertido: {text_for_float}\n")
        if text_for_float.find("."):#verifica se maior que centena
            text_for_float_split = text_for_float.split(',')#separa os centavos
            print(f"\nTexto para conversão: {text_for_float_split}\n")
            text_for_float_split_1 = text_for_float_split[0]#casas antes da vírgula
            # text_for_float_split_2 = text_for_float_split[1]#casas após a vírgula

            text_for_float = text_for_float_split_1.replace('.','')#tira o ponto dos números antes da vírgula
            
            # number_float_2 = int(text_for_float_split_2)#converte os centavos para float
            # number_cents = number_float_2/100#transforma em centavos novamente
            # number_cents = round(number_cents+0.5)#arredonda para cima
            # print(f"\nCentavos: {number_cents}\n")
            number_float_1 = float(text_for_float)#converte a parte antes da vírgula para float
            # number_float = number_float_1 + number_cents#soma milhar e centavos
            number_float = number_float_1
        else:
            text_for_float = text_for_float.replace(',','.')
            print(f"\nTexto para conversão 2: {text_for_float}\n")
            number_float = float(text_for_float)
        return number_float