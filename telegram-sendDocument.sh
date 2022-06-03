#!/bin/bash

# Script para enviar arquivos atraves da API do telegram
# Adaptado:     Charles Andrade
# Empresa:      Santana Ferro e Aco

GROUP_ID=-356756433
BOT_TOKEN=1440597016:AAHQD1FCpnlzIBSG9L_RjlY0Nq2uKd7HXF8
API_TELEGRAM='https://api.telegram.org/bot'$BOT_TOKEN'/sendDocument'

curl -F chat_id=$GROUP_ID -F document=@$1 $API_TELEGRAM > /dev/null
