***Settings***
Library  Collections

***Variables***
&{pessoa}   nome=Augusto  sobrenome=Vieira  idade=28  sexo=m  cidade=SP  tel=983905834
@{lista_frutas}     abacaxi     morango     laranja     banana      kiwi


***Keywords***
imprimir pessoa
    Log To Console  \n\nImprimindo pessoa: ${pessoa}\n

criando meu dicionario
    &{criando_pessoa}  Create Dictionary  nome=Augusto  sobrenome=Vieira  idade=28  sexo=m  cidade=SP  tel=983905834
    Set Test Variable  &{criando_pessoa}

imprimir este dicionario
    Log To Console  \n\nImprimindo pessoa: &{criando_pessoa}\n

imprimir lista de lista de frutas
    Log To Console  \n\nImprimindo nossa lista de frutas: \n${lista_frutas}\n