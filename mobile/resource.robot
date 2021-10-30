***Settings***
Documentation  Simple example using AppiumLibrary
Library  AppiumLibrary


***Variables***
${url_appium_server}        http://localhost:4723/wd/hub
&{AppiumCapabilities}       platformName=Android
...                         platformVersion=9.0
...                         deviceName=nexus_5_turma_4
...                         automationName=UiAutomator2
...                         appPackage=com.google.android.youtube
...                         appActivity=com.google.android.apps.youtube.app.WatchWhileActivity

&{Home}                     icone_busca=accessibility_id=Search
...                         campo_texto_busca=search_edit_text
...                         icone_home=accessibility_id=Home
...                         icone_trending=accessibility_id=Trending
...                         icone_subscriptions=accessibility_id=Subscriptions
...                         icone_notifications=accessibility_id=Notifications
...                         icone_library=accessibility_id=Library

&{Resultados_busca}         canais_sugeridos=channel_item

&{Canais}                   playlist=accessibility_id=Playlists
...                         lista_playlist=playlist_item


***Keywords***
Abrir o aplicativo no celular
    Open Application    ${url_appium_server}    &{AppiumCapabilities}

Buscar o canal “${buscar_canal}”
    [Documentation]   Keyword responsavel por fazer uma busca dentro do youtube app a 
    ...               partir de uma string vinda do teste.
    Wait Until Element Is Visible       ${Home.icone_busca}
    Click Element                       ${Home.icone_busca}
    Wait Until Element Is Visible       ${Home.campo_texto_busca}
    Input Text                          ${Home.campo_texto_busca}       ${buscar_canal}
    Press Keycode                       66


Selecionar o canal na lista de busca
    Wait Until Element Is Visible       ${Resultados_busca.canais_sugeridos}
    Click Element                       ${Resultados_busca.canais_sugeridos}

Navegar pelo menu Playlist
    Wait Until Element Is Visible       ${Canais.playlist}
    Click Element                       ${Canais.playlist}

Selecionar a primeira playlist do canal
    Wait Until Element Is Visible       ${Canais.lista_playlist}
    @{lista_playlist}                   Get Webelements   ${Canais.lista_playlist}
    Click Element                       ${lista_playlist}[0]

Navegar por todos os botões da barra de Menus(Home, Explorar...) do YouTube
    Wait Until Element Is Visible       ${Home.icone_home}
    Click Element                       ${Home.icone_home}
    Wait Until Element Is Visible       ${Home.icone_trending}
    Click Element                       ${Home.icone_trending}
    Wait Until Element Is Visible       ${Home.icone_subscriptions}
    Click Element                       ${Home.icone_subscriptions}
    Wait Until Element Is Visible       ${Home.icone_library}
    Click Element                       ${Home.icone_library}
    Wait Until Element Is Visible       ${Home.icone_notifications}
    Click Element                       ${Home.icone_notifications}