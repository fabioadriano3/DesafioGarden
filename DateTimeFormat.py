import string
from datetime import datetime
__version__ = '1.0.0'
class DateTimeFormat(object):
    ROBOT_LIBRARY_VERSION = __version__
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    def get_date_in_date_time_format(self,text):
        data_time = datetime.strptime(text, '%d/%m/%Y')
        print(f"\nData convertida de string para datetime: {data_time}\n")
        return data_time
