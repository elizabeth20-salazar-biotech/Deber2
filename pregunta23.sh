#!/bin/bash

# Pedir al usuario el nombre del archivo y el número de ID
echo "Ingrese el nombre del archivo:"
read archivo
echo "Ingrese el número de ID:"
read id

# Obtener los registros de interés
registros=$(tail -n +2 "$archivo" | cut -d ',' -f 1 | sort -n | uniq)

# Iterar sobre cada registro de interés
for registro in $registros
do
  # Contar el número de registros para el ID actual
  num_registros=$(grep -c "^$registro," "$archivo")

  # Mostrar el número de ID y los registros correspondientes
  echo "ID: $registro - Registros: $num_registros"
done
