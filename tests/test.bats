#!/usr/bin/env bats

# Verifica que el script se ejecuta sin errores
@test "El script se ejecuta sin errores" {
  run bash script.sh
  [ "$status" -eq 0 ]
}

# Verifica que el script imprime la línea de inicio
@test "El script imprime mensaje de inicio" {
  run bash script.sh
  [[ "$output" =~ "🔢 Iniciando cálculos..." ]]
}

# Verifica que genera dos números y los muestra
@test "Genera dos números aleatorios" {
  run bash script.sh
  [[ "$output" =~ "📌 Números: " ]]
}

# Verifica que imprime los resultados de las operaciones
@test "Realiza suma, resta y multiplicación" {
  run bash script.sh
  [[ "$output" =~ "✅ Suma:" ]]
  [[ "$output" =~ "✅ Resta:" ]]
  [[ "$output" =~ "✅ Multiplicación:" ]]
}

# Verifica la detección de números pares o impares
@test "Detecta par o impar correctamente" {
  run bash script.sh
  [[ "$output" =~ "🔵" ]]
}

# Verifica la comparación entre los números
@test "Compara correctamente los números" {
  run bash script.sh
  [[ "$output" =~ "📊" || "$output" =~ "📉" || "$output" =~ "⚖️" ]]
}