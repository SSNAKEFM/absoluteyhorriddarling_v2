# Flutters Cube

Un mod experimental para **The Binding of Isaac: Repentance**

## Características

El mod añade el objeto coleccionable:

> **FLutters Cube**

Actualmente, el objeto modifica las estadísticas del jugador:

- Multiplicador de daño: `0.4`
- Lágrimas: `+0.8`
- Velocidad: `+0.3`

El objeto aparece no automáticamente, usar mods como [Da Rules]( https://steamcommunity.com/sharedfiles/filedetails/?id=2403871374.
) para spawnearlo con el nombre "Flutters Cube"

## Requisitos

- The Binding of Isaac: Repentance
- Acceso a la carpeta de mods del juego

## Instalación

1. Descarga o clona este repositorio.
2. Copia la carpeta del proyecto dentro de:

   ```text
   Documents/My Games/Binding of Isaac Repentance/mods/
   ```

3. Comprueba que los archivos principales estén dentro de la carpeta del mod:

   ```text
   Absolutey-Horrid-Darling-V2/
   ├── main.lua
   ├── items.xml
   └── README.md
   ```

4. Abre The Binding of Isaac: Repentance.
5. Activa el mod desde el menú de mods si es necesario.
6. Inicia una partida nueva para probarlo.

## Estructura del proyecto

### `main.lua`

Contiene la lógica principal del mod:

- Registra el mod.
- Obtiene el ID del objeto mediante su nombre.
- Aplica sus bonificaciones usando el sistema de caché de estadísticas.

### `items.xml`

Define la información del objeto coleccionable para que el juego pueda reconocerlo.

## Estado del proyecto

Este proyecto se encuentra en desarrollo. Las estadísticas y el comportamiento del objeto pueden cambiar mientras se agregan nuevas funciones.

## Objetivos futuros

- Coherencia con la temática del mod.
- Sonidos personalizados.
- Apariciones dentro del juego.
- Publicación dentro de la plataforma de Steam Workshop

## Créditos

MOD creado originalmente por **[RemixSAA](https://steamcommunity.com/profiles/76561199357380669)** y modificado por **ShadeeDX** como práctica de programación en Lua.

## Licencia

Este proyecto es un trabajo personal y educativo. The Binding of Isaac y sus elementos pertenecen a sus respectivos propietarios.
