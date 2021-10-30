***Settings***
Library    RequestsLibrary

***Variables***
${url}                      https://gorest.co.in
${recurso}                  /public
${end_point}                /v1/users/5266
&{Headers}                  Accept=application/json     Content-Type=application/json
${resposta}

***Keywords***
Criar uma requisição GET para lista de ususarios
    ${url_completa}     Catenate  ${url}${recurso}${end_point}
    ${resposta_get}=    GET    url=${url_completa}    headers=${Headers}
    Set Test Variable       ${resposta}     ${resposta_get.json()}


Imprimir a lista de usuarios
    Log To Console  \n\n${resposta}\n\n

