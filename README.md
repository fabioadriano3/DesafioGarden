## Configuração do framework

* * Criação de ambiente de desenvolvimento:
* `python3 -m venv venv; source venv/bin/activate`
* * Instalação de dependências:
* `pip install -r dependencias.txt`

* * Ou instalação e configuração fora de ambiente de desenvolvimento (env):
* `brew install python3`
* `sudo easy_install pip`
* `pip3 install robotframework`
* `pip3 install --upgrade robotframework-requests`
* `pip3 install robotframework-zoomba`
* `pip3 install robotframework-debuglibrary`
* `pip3 install robotframework-extendedrequestslibrary`
* `pip3 install robotframework-jsonlibrary`

## Comandos para rodar o teste

* * "-a (TODOS OS TESTES) -t (TESTES POR TAGS) -f (TESTES POR FEATURES - SQUADS)"
* * "EXEMPLO POR FEATURE/SQUAD: ./teste.sh -f pravite"
* * "EXEMPLO POR TAG: ./teste.sh -t aplicar_envelope"

* * Executar todos os testes
- robot -d <caminho dos relatórios> <pasta com os testes>
ou
- ./teste.sh

* * Executar todos os testes dentro de uma pasta
- robot -d <caminho dos relatórios> <pasta com os testes>
- Exemplo: `robot -d ./robot-atfa-base-binv-base-testesmobile/Reports ./robot-atfa-base-binv-base-testesmobile/Testes/Login`
ou
- ./teste.sh -f guardar

* * Executar um teste usando tags
- robot -d <caminho dos relatórios> -i <tag do teste> <pasta com os testes>
- Exemplo: `robot -d ./robot-atfa-base-binv-base-testesmobile/Reports -i login_valido ./robot-atfa-base-binv-base-testesmobile/Testes/Login`
ou
- ./teste.sh -t soma_prazos_investidos

* * Executar os testes colocando um nome para o cenário no relatório
- robot -M "Nome do cenário" -d <caminho dos relatórios> <pasta com os testes>
- Exemplo: `robot -M "Login" -d ./robot-atfa-base-binv-base-testesmobile/Reports -i login_valido ./robot-atfa-base-binv-base-testesmobile/Testes/Login`