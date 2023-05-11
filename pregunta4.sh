#Extraccion del nombre de la columna 
cut -d ',' -f 7 Buzzard2015_data.csv | head -n 1
#Obteccion de valores distintos
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort | uniq | wc -l
# Obtener el Mínimo
cut -d ',' -f 7 Buzzard2015_data.csv | tail -n +2 | sort -n | head -n 1
# Obtener el Máximo
cut -d ',' -f 7 ../data/Buzzard2015_data.csv | tail -n +2 | sort -n | tail -n 1
