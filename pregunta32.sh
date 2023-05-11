# Pedir al usuario el nombre del archivo
echo "Ingrese el nombre del archivo:"
read archivo

# Contar el número de filas en el archivo
num_filas=$(wc -l < "$archivo")

# Mostrar el número de filas
echo "El número de filas en el archivo es: $num_filas"

# Realizar el proceso para cada fila
for ((i=1; i<=num_filas; i++))
do
  # Obtener la fila actual
  fila=$(head -n $i "$archivo" | tail -n 1)

  # Eliminar espacios y saltos de línea
  sin_espacios=$(echo "$fila" | tr -d '[:space:]')

  # Contar el número de columnas
  num_columnas=$(echo -n "$sin_espacios" | wc -c)

  # Mostrar el número de columnas para la fila actual
  echo "Número de columnas en la fila $i: $num_columnas"
done
