<p align="center">
<img src ="https://raw.githubusercontent.com/primitivorm/latino/master/logo/banner-300x.png" /><br>http://lenguaje-latino.org/
</p>

<img src ="doc/debian.png" />

## Dependencias para instalar en DEBIAN
Antes de instalar latino, vamos a instalar todos paquetes necesarios: 

```
# Debian/Ubuntu o basados
sudo apt-get update && apt-get install bison flex cmake gcc g++ libjansson-dev libcurl4-openssl-dev libhiredis-dev redis-server curl libgtk-3-dev libreadline-dev libpthread-stubs0-dev
```


## INSTALAR

```bash
 git clone --recursive https://github.com/primitivorm/latino
 cd latino
 git submodule update --init --recursive
 cmake .
 make
 sudo make install
```

Ó aún más simple:
```bash
 sudo ./configure
 sudo make install
```


Instalación en Ubuntu, DEBIAN, Mint o derivativos:

```bash
 # Versión 0.8.11
  # Descargar para sistemas de 32 bits(i386)
  wget https://github.com/primitivorm/latino/releases/download/v0.8.11/latino-0.8.11-Linux_i386.deb
  # Descargar para sistemas de 64 bits(amd64)
  wget https://github.com/primitivorm/latino/releases/download/v0.8.11/latino-0.8.11-Linux_amd64.deb
```


###Documentacion (borrador)
1. https://robincoello.gitbooks.io/latino/content/inicio.html
2. http://lenguaje-latino.org/doc/index.php


### COMPILAR

---

|Requiere | Versión | SO |
| :---    |    ---: |:---|
| bison   |    3.04 |Linux|
| flex    |  2.5.39 |Linux|
| cmake   |   3.3.1 |Linux|
| gcc     |   4.9.3 |Linux|
| g++     |   4.9.3 |Linux|
| libjansson-dev |   2.9   |Linux|
| libcurl4-openssl-dev |  |Linux|
| libhiredis-dev |  |Linux|
| redis-server |  |Linux|
| curl    | 7.47.0 |Linux|
| libgtk-3-dev |  3.0 | Linux |
| libreadline-dev libpthread-stubs0-dev |   | Linux |

--

### DESINSTALAR

#### 1- Opción
```bash
# Si instalaste con `sudo make install`:
sudo ./uninstall.sh
```

#### 2- Opción

Puedes ver un video de como proceder aca https://youtu.be/Q5xGm_Bp22k

Pirmero debes saber donde esta instalado

 ```bash
 whereis latino
 ```

 Te dará algo parecido a esto:

 ```bash
 latino: /usr/local/bin/latino

 ```

 Ahora que sabemos dónde está solamente lo borramos:
 ```bash
 sudo rm /usr/local/bin/latino

 ```

#### 3- Opción

 **Sólo debian/ubuntu. si instalaste paquete deb
 ```bash
 # Ubuntu 16.x.x en adelante
 sudo apt remove latino
 # Ubuntu 14.x.x hacía atrás
 sudo apt-get remove latino
 

## Ayuda en nuestro foro 

http://lenguaje-latino.org/foro/debian/


####Cualquier aportación o sugerencia es bienvenida.