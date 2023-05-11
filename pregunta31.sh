# Pedir al usuario el nombre del archivo
echo "Ingrese el nombre del archivo:"
read archivo

# Contar el número de filas en el archivo
num_filas=$(wc -l < "$archivo")

# Mostrar el número de filas
echo "El número de filas en el archivo es: $num_filas"

# Pedir al usuario el nombre del archivo
echo "Ingrese el nombre del archivo:"
read archivo

# Obtener la primera fila del archivo
primera_fila=$(head -n 1 "$archivo")

# Eliminar espacios y saltos de línea
sin_espacios=$(echo "$primera_fila" | tr -d '[:space:]')

# Contar el número de caracteres
num_columnas=$(echo -n "$sin_espacios" | wc -c)

# Mostrar el número de columnas
echo "El número de columnas en la primera fila del archivo es: $num_columnas"

