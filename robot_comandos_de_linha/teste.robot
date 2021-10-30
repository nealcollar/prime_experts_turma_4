***Test Cases***
Cenario: entendendo como o robot funciona por linha de comando
    [Tags]  Login   chamando_robot
    Log To Console  \n\nOla pessoal da Turma 4\n

rodando mais de um teste
    Log To Console  \n\nExecutei mais um teste galera !!! \n


recebendo um valor pelo terminal
    [Tags]  recebendo_valor
    Log To Console  \n\nOLá ${valor_do_terminal}!!!!\n