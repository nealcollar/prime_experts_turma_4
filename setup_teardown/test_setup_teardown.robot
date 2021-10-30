***Settings***
Resource    ./resource.robot
Suite Setup       estou execuntando antes de tudo e todos
Suite Teardown    estou execuntando depois de tudo e todos
Test Setup        estou execuntando antes do teste
Test Teardown     estou execuntando depois do teste

***Test Cases***
Cenario: brincando com setups e teardowns
    [Setup]     estou execuntando antes do teste2
    Log To Cosole  \n\nExecutando meu cenario !!!\n
    [Teardown]  estou execuntando depois do teste2