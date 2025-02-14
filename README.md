Para ejecutar el contenedor de forma adecuada seguir las siguentes instrucciones:

Para clonar el repositorio, usa el comando:
```bash
git clone https://github.com/Highkam/DockerCode-Main
```
Navega al directorio:
```bash
cd DockerCode-Main
```
Ejecuta el comando Build:

```bash
docker build -t main .
```
Ejecuta el comando Run
```bash
docker run --privileged -d --name main_container main
```
Ejecuta el comando Exec
```bash
docker exec -it main_container bash
```
Ejecuta el script
```bash
./runner.sh
```
