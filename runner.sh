
REPO_URL="https://github.com/Highkam/Docker-Codes"
REPO_NAME="Docker-Codes"

# Clonar el repositorio
git clone "$REPO_URL"

# Verificar si el repositorio fue clonado correctamente
if [ ! -d "$REPO_NAME" ]; then
    echo "Error: No se pudo clonar el repositorio."
    exit 1
fi

# Entrar en la carpeta del repositorio
cd "$REPO_NAME"

# Recorrer cada subcarpeta dentro del repositorio
for dir in */ ; do
    # Verificar si es un directorio y contiene un Dockerfile
    if [ -d "$dir" ] && [ -f "$dir/Dockerfile" ]; then
        IMAGE_NAME=$(basename "$dir" | tr '[:upper:]' '[:lower:]')
        echo "Construyendo imagen para $IMAGE_NAME..."
        docker build -t "$IMAGE_NAME" "$dir"
    else
        echo "Saltando $dir (no contiene un Dockerfile)"
    fi
done
for dir in */ ; do
    # Verificar si es un directorio y contiene un Dockerfile esto para correr las imagenes
    if [ -d "$dir" ] && [ -f "$dir/Dockerfile" ]; then
        IMAGE_NAME=$(basename "$dir" | tr '[:upper:]' '[:lower:]')
	docker run --privileged --rm "$IMAGE_NAME"
    fi
done
echo "Proceso completado."



