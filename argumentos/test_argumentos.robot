***Settings***
Resource    ./resource.robot

***Test Cases***
Cenario: criando email por argumentos embutidos
    Dado que eu recebo o nome "augusto" sobrenome "vieira" e a idade "28"
    Quando monto o meu email
    Então imprimo o meu novo email

Cenario: criando email por argumentos
    Dado que eu recebo   sobrenome=vieira   idade=28  nome=augusto
    Quando monto o meu email
    Então imprimo o meu novo email