#!/bin/bash

echo -e "\nBienvenido al sistema"

echo "Porfavor. Ingrese los siguientes datos del empleado"

echo "Ingrese el nombre"
read nombreEmpleado

echo "Ingrese el ID"
read id

if [ -z "$id" ]; then
    echo "Error: El ID no puede estar vacio"
    exit 1
fi

echo "Ingrese el rol"
read rol

echo "Ingrese el departamento"
read departamento

fecha=$(date)

echo "Almacenando datos del empleado..."

mkdir -p data

if [ -f data/registro-empleado.txt ]; then
    echo "El archivo registro-empleado.txt ya existe"
else
    echo "El archivo registro-empleado.txt no existe, generando nuevo archivo..."
fi

echo "$nombreEmpleado | $id | $rol | $departamento | $fecha" >> data/registro-empleado.txt

echo "Directorio creado $(pwd)/data/registro-empleado.txt"

echo "Registro guardado en el archivo registro-empleados.txt"
