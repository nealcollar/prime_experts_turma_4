***Variables***
&{Home}                     icone_busca=accessibility_id=Search
...                         campo_texto_busca=search_edit_text


***Keywords***
Buscar o canal “${buscar_canal}”
    [Documentation]   Keyword responsavel por fazer uma busca dentro do youtube app a 
    ...               partir de uma string vinda do teste.
    Wait Until Element Is Visible       ${Home.icone_busca}
    Click Element                       ${Home.icone_busca}
    Wait Until Element Is Visible       ${Home.campo_texto_busca}
    Input Text                          ${Home.campo_texto_busca}       ${buscar_canal}
    Press Keycode                       66