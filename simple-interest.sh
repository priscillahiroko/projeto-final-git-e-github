#!/bin/bash

# Função para calcular juros simples
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    
    interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    total=$(echo "scale=2; $principal + $interest" | bc)
    
    echo "Principal: $principal"
    echo "Taxa de Juros: $rate%"
    echo "Tempo: $time anos"
    echo "Juros: $interest"
    echo "Total: $total"
}

# Solicitar entrada do usuário
read -p "Digite o principal: " principal
read -p "Digite a taxa de juros (%): " rate
read -p "Digite o tempo (anos): " time

# Chamar função de cálculo
calculate_simple_interest $principal $rate $time
