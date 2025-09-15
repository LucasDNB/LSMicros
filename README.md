# Label Studio Image Recognition Project

Este proyecto te permite desplegar Label Studio en Render.com para anotación de imágenes, usando una base de datos PostgreSQL gratuita y almacenamiento gratuito para imágenes.

## 1. Requisitos previos
- Cuenta gratuita en [Render.com](https://render.com/)
- Cuenta gratuita en [Cloudinary](https://cloudinary.com/) (opcional, para almacenar imágenes)
- Servicio gratuito de base de datos PostgreSQL en Render.com

## 2. Estructura del proyecto
- `Dockerfile`: Para desplegar Label Studio en Render.com
- `render.yaml`: Configuración de Render.com
- `.env.example`: Variables de entorno necesarias

## 3. Despliegue en Render.com
1. Haz fork o sube este repositorio a GitHub.
2. Entra a Render.com > New Web Service > Conecta tu repo.
3. Elige Docker como entorno.
4. Configura las variables de entorno según `.env.example`.
5. Si usas PostgreSQL de Render, crea un servicio de base de datos y copia la URL en `DATABASE_URL`.
6. Si usas Cloudinary, pon tu URL en `CLOUDINARY_URL`.

## 4. Configuración de la base de datos
- Usa el servicio gratuito de PostgreSQL de Render.com.
- Copia la URL de conexión y pégala en la variable `DATABASE_URL`.

## 5. Configuración de almacenamiento de imágenes
- Puedes subir imágenes directamente a Label Studio o usar Cloudinary.
- Si usas Cloudinary, pon la URL en `CLOUDINARY_URL`.

## 6. Uso
- Accede a la URL pública de Render.com.
- Crea un proyecto de reconocimiento de imágenes en Label Studio.
- Sube imágenes o enlaza imágenes desde Cloudinary.
- Anota y exporta los datos cuando termines.

---

### Archivos incluidos:
- `Dockerfile`
- `render.yaml`
- `.env.example`
- Este `README.md`

---

¿Listo para crear los archivos de configuración?
