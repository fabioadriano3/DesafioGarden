class FormatCPF(object):
    def get_formated_cpf(self,cpf):
        fatia_um = cpf[:3]
        fatia_dois = cpf[3:6]
        fatia_tres = cpf[6:9]
        fatia_quatro = cpf[9:]

        cpf_formatado = "{}.{}.{}-{}".format(
            fatia_um,
            fatia_dois,
            fatia_tres,
            fatia_quatro
        )
        return cpf_formatado