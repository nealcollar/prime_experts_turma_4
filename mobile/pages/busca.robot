***Variables***
&{Resultados_busca}         canais_sugeridos=channel_item

***Keywords***
Selecionar o canal na lista de busca
    Wait Until Element Is Visible       ${Resultados_busca.canais_sugeridos}
    Click Element                       ${Resultados_busca.canais_sugeridos}
