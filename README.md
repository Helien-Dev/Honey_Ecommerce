# Honey Ecommerce
# Readme Provisional

Proyecto de ejemplo de ecommerce desarrollado con Django 5.2.4 y PostgreSQL.

## Estructura del proyecto

- **src/**: Código fuente principal
  - **Honey_Bun/**: Configuración principal del proyecto Django
  - **myapp/**: App principal con el modelo `Producto`
  - **browser/**: App para búsqueda y visualización de productos
  - **static/**: Archivos estáticos (JS, CSS, etc.)
  - **template/**: Archivos de plantilla HTML

## Instalación

1. Clona el repositorio.
2. Configura las variables de entorno en `.env` para la base de datos PostgreSQL.
3. Instala las dependencias:
   ```sh
   pip install -r requirements.txt