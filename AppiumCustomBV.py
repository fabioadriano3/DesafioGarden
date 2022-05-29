
from AppiumLibrary import AppiumLibrary
from robot.libraries.BuiltIn import BuiltIn


class AppiumCustomBV(AppiumLibrary):
    def get_current_driver(self):
        return BuiltIn().get_library_instance('Zoomba.MobileLibrary')._current_application()


    def inserir_texto_em_textField(self, locator, texto):

        # AppiumLibrary.click_element(self, locator)

        # self._info("Inserindo o texto '%s' no campo '%s'" % (texto, locator))

        for x in texto:
            self.get_current_driver().execute_script('mobile: shell', {
                'command': 'input text',
                'args': [x]
            })