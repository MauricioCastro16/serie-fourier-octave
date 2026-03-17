[![Consultar a DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/MauricioCastro16/serie-fourier-octave)

# Serie de Fourier por Octave

![Octave](https://img.shields.io/badge/GNU%20Octave-5.1+-green.svg)
![SymPy](https://img.shields.io/badge/SymPy-1.4+-orange.svg)

Sistema computacional especializado en análisis de Fourier con capacidades de computación simbólica. Permite calcular series de Fourier para funciones definidas por tramos con visualización interactiva de resultados.

## Características Principales

- Cálculo de series de Fourier para funciones definidas por tramos
- Expansiones de cosenos, senos o series completas
- Integración simbólica exacta de coeficientes
- Visualización interactiva de series parciales y resultados finales
- Interfaz de línea de comandos intuitiva para análisis matemático

## Stack Tecnológico

| Categoría | Tecnología |
|-----------|------------|
| **Lenguajes** | Octave, Python, MATLAB |
| **Frameworks** | SymPy, OctSymPy, mpmath |
| **Software** | GNU Octave |

## Arquitectura

El sistema utiliza GNU Octave como entorno principal con el paquete Symbolic que implementa SymPy para computación simbólica. El código principal procesa funciones definidas por tramos, calcula coeficientes de Fourier mediante integración simbólica exacta y genera visualizaciones interactivas. La comunicación entre Octave y SymPy se realiza a través de componentes Python que manejan el procesamiento simbólico.

## Instalación y Uso

### Prerrequisitos
```bash
# Instalar GNU Octave (versión 5.1 o superior)
sudo apt-get install octave

# Instalar Python y SymPy (versión 1.4 o superior)
sudo apt-get install python3 python3-sympy
```

### Instalación del paquete Symbolic
```bash
# Iniciar Octave
octave

# Instalar paquete Symbolic
pkg install -forge symbolic

# Cargar el paquete
pkg load symbolic
```

### Ejecución del programa
```bash
# Dentro de Octave, ejecutar el script principal
run('Ejecutable.m')
```

### Uso básico
```octave
% Definir variables simbólicas
syms n x

% Calcular serie de Fourier para una función
% Seguir las instrucciones del menú interactivo
% Opciones disponibles:
% 1 - Calcular serie de Fourier
% 2 - Visualizar gráfico de función
% 3 - Salir
```
