#!/bin/bash

# Especifica el nombre del archivo de entrada y el nombre del archivo de salida
INPUT_FILE="$1"
OUTPUT_FILE="${INPUT_FILE%.*}_nuevo.fastq"

# Cuenta el número de líneas del archivo de entrada
NUM_LINES=$(wc -l < "$INPUT_FILE")

# Calcula el número de líneas que debe tener el archivo de salida
NUM_OUTPUT_LINES=$((NUM_LINES / 22))

# Obtiene las primeras líneas del archivo de entrada y las escribe en el archivo de salida
head -n "$NUM_OUTPUT_LINES" "$INPUT_FILE" > "$OUTPUT_FILE"
wc -l "$OUTPUT_FILE"

