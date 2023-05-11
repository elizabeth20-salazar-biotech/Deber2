# Pedir al usuario el nombre del archivo
echo "Ingrese el nombre del archivo:"
read archivo

# Contar el número de filas en el archivo
num_filas=$(wc -l < "$archivo")

# Mostrar el número de filas
echo "El número de filas en el archivo es: $num_filas"

# Inicializar variables para el número máximo de filas y columnas
max_filas=0
max_columnas=0

# Realizar el proceso para cada fila
for ((i=1; i<=num_filas; i++))
do
  # Obtener la fila actual
  fila=$(head -n $i "$archivo" | tail -n 1)

  # Eliminar espacios y saltos de línea
  sin_espacios=$(echo "$fila" | tr -d '[:space:]')

  # Contar el número de columnas
  num_columnas=$(echo -n "$sin_espacios" | wc -c)

  # Actualizar el número máximo de columnas si es necesario
  if ((num_columnas > max_columnas))
  then
    max_columnas=$num_columnas
  fi

  # Actualizar el número máximo de filas si es necesario
  if ((i > max_filas))
  then
    max_filas=$i
  fi
done

# Mostrar el número máximo de filas y columnas
echo "El número máximo de filas es: $max_filas"
echo "El número máximo de columnas es: $max_columnas"

