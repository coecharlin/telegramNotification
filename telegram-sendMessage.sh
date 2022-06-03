#!/bin/bash

# Script para enviar mensagem atraves da API do telegram
# Criador: Charles Andrade

# Exemplo: ./telegram-sendMessage.sh Ola Mundo!

GROUP_ID=-356756433
BOT_TOKEN=1440597016:AAHQD1FCpnlzIBSG9L_RjlY0Nq2uKd7HXF8
API_TELEGRAM='https://api.telegram.org/bot'$BOT_TOKEN'/sendMessage'

# Estas 3 verificacoes (se) nao sao necessarias, mas devem ser convenientes
if [ "$1" == "-h" ]; then
  echo "Usage: `basename $0` \"text message\""
  exit 0
fi

if [ -z "$1" ]
  then
    echo "Adicionar texto da mensagem como segundos argumentos"
    exit 0
fi

if [ "$#" -ne 1 ]; then
    echo "Voce pode passar apenas um argumento. Para string com espacos, coloque-o entre aspas"
    
    curl -s -F "text=$1" -F "chat_id=$GROUP_ID" $API_TELEGRAM > /dev/null
