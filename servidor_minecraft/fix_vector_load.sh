#!/bin/bash
echo "🧠 Cargando extensiones SQLite en el orden correcto..."

# Asegurarse de que las carpetas existan
mkdir -p ./config/sqlite_vector/loaded

# Copiar las extensiones en orden correcto
cp ./config/sqlite_vector/sqlite-vec/vector0.so ./config/sqlite_vector/loaded/01_vector0.so
cp ./config/sqlite_vector/sqlite-vss/vss0.so ./config/sqlite_vector/loaded/02_vss0.so

# Ejecutar el servidor Fabric
java -jar fabric-server-launch.jar nogui
