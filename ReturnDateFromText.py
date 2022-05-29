import random
import string
import re
__version__ = '1.0.0'
class ReturnDateFromText(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    def get_date_from_text(self,text):
        print(f"\nTexto: {text}\n")
        r = re.compile(r'\d{2}\/\d{2}\/\d{4}')
        data_de_interesse = r.findall(text)
        return data_de_interesse