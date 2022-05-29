from datetime import datetime
from datetime import timedelta
__version__ = '1.0.0'
class ReturnFutureDate(object):
    def calculated_future_date(self, data_da_aplicacao=datetime.today(), periodo_dias=0):
        data_futura = data_da_aplicacao + timedelta(days = periodo_dias)
        print (f"\nData futura:  {data_futura}\n")
        data_futura = data_futura.strftime('%d/%m/%Y')
        return data_futura