#!/bin/bash

# Solicitar al usuario el nombre del archivo
read -p "Ingrese el nombre del archivo: " archivo

# Solicitar al usuario el número de ID (expresión regular)
read -p "Ingrese el número de ID a buscar: " id

# Realizar la búsqueda en el archivo y obtener el número de registro del individuo de interés
registro=$(grep -n "$id" "$archivo" | cut -d: -f1)

# Verificar si se encontró el registro o no
if [ -n "$registro" ]; then
  echo "El número de registro del individuo con el ID $id es: $registro"
else
  echo "No se encontró ningún registro con el ID $id en el archivo $archivo"
fi
