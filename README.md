# Alta Fidelidad IPO-II

Prototipo navegable de Flutter para las provincias españolas.

## Requisitos previos

### Dependencias obligatorias

- **Flutter SDK**: versión 3.0.0 o superior
  - [Descargar Flutter](https://flutter.dev/docs/get-started/install)
- **Dart SDK**: incluido con Flutter

### Dependencias por plataforma

#### Para iOS
- macOS 11.0 o superior
- Xcode 13.0 o superior
- CocoaPods
- Un dispositivo iOS o el simulador de Xcode

#### Para Android
- Android SDK 21 o superior
- Android Studio o herramientas de línea de comandos
- Un dispositivo Android o emulador

## Configuración inicial

1. Clona el repositorio:
```bash
git clone https://github.com/DanielGallegoMora1/Alta_Fidelidad_IPO-II.git
cd Alta_Fidelidad_IPO-II
```

2. Descarga las dependencias de Flutter:
```bash
flutter pub get
```

3. Verifica tu instalación de Flutter:
```bash
flutter doctor
```

Todos los elementos deben mostrar un tick en verde.

## Ejecución en iOS

### Opción 1: Desde la línea de comandos

1. Abre el simulador de iOS:
```bash
open -a Simulator
```

2. Ejecuta el proyecto:
```bash
flutter run
```

3. Selecciona el dispositivo iOS cuando se solicite.

### Opción 2: Desde Xcode

1. Abre el proyecto:
```bash
open ios/Runner.xcworkspace
```

2. En Xcode, selecciona un simulador o dispositivo iOS.

3. Presiona el botón "Play" o usa `Cmd + R`.

## Ejecución en Android

### Primer uso: genera la plataforma Android

Si es la primera vez que ejecutas en Android, genera los archivos necesarios:
```bash
flutter create --platforms=android .
```

### Opción 1: Desde la línea de comandos

1. Inicia un emulador Android o conecta un dispositivo físico:
```bash
flutter emulators --launch <nombre_emulador>
```

2. Verifica que el dispositivo esté disponible:
```bash
flutter devices
```

3. Ejecuta el proyecto:
```bash
flutter run
```

### Opción 2: Desde Android Studio

1. Abre Android Studio.

2. Selecciona "Open an existing Android Studio project".

3. Navega a `android/` dentro del proyecto y abre la carpeta.

4. Espera a que Gradle finalice la sincronización.

5. Selecciona un dispositivo o emulador en la barra superior.

6. Presiona el botón "Run" (icono verde de reproducción).

## Estructura del proyecto

```
lib/
├── main.dart           # Punto de entrada de la aplicación
├── app.dart            # Configuración de la aplicación
├── core/
│   ├── app_theme.dart  # Tema de Material Design
│   └── routes.dart     # Rutas de navegación
├── features/           # Características principales
│   ├── map/            # Mapa de provincias
│   ├── progress/       # Seguimiento de progreso
│   └── settings/       # Configuración
└── shared/             # Componentes compartidos
    └── widgets/
```

## Notas importantes

- El proyecto utiliza Material Design de Flutter.
- Los activos (imágenes) se encuentran en `assets/images/`.
- Las rutas de navegación están configuradas en `core/routes.dart`.
- Asegúrate de ejecutar `flutter pub get` después de actualizar dependencias.