***Variables***
&{AppiumCapabilities}       platformName=Android
...                         platformVersion=9.0
...                         deviceName=nexus_5_turma_4
...                         automationName=UiAutomator2
...                         appPackage=com.google.android.youtube
...                         appActivity=com.google.android.apps.youtube.app.WatchWhileActivity


***Test Cases***
Testes
    entendendo variaveis


***Keywords***
entendendo variaveis
    Log To Console  vendo como um dicionario é recebido como dicionario: \n\n &{AppiumCapabilities}\n
    
    Log To Console  vendo como um dicionario é recebido como variavel simples: \n\n ${AppiumCapabilities}\n
    
    Log To Console  vendo como um é recebido como variavel simples recebendo uma chave especifica de um dicionario: \n\n ${AppiumCapabilities.platformName}\n