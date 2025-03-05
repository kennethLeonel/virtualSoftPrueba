#!/usr/bin/env bats

# Verifica que el script se ejecuta sin errores
@test "El script se ejecuta sin errores" {
  run bash script.sh
  [ "$status" -eq 0 ]
}