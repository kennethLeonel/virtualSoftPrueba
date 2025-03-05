#!/bin/bash

[ -z "$BASH_VERSION" ] && { echo "Error: Usa Bash para ejecutar este script." >&2; exit 1; }

echo "🔢 Iniciando cálculos..."

num1=$(( RANDOM % 100 + 1 ))
num2=$(( RANDOM % 100 + 1 ))

echo "📌 Números: $num1, $num2"
echo "✅ Suma: $(( num1 + num2 ))"
echo "✅ Resta: $(( num1 - num2 ))"
echo "✅ Multiplicación: $(( num1 * num2 ))"
echo "✅ Módulo: $(( num2 == 0 ? 0 : num1 % num2 ))"

echo "🔵 $num1 es $( ((num1 % 2)) && echo "IMPAR" || echo "PAR" )"
echo "🔵 $num2 es $( ((num2 % 2)) && echo "IMPAR" || echo "PAR" )"

[[ "$num1" -gt "$num2" ]] && echo "📊 $num1 > $num2" || [[ "$num1" -lt "$num2" ]] && echo "📉 $num1 < $num2" || echo "⚖️ Iguales"

exit 0