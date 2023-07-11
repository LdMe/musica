export default {
    swagger: "2.0",
    info: {
      title: "API de canciones",
      version: "1.0.0"
    },
    basePath: "/api",
    components:{
      securitySchemes:{
        bearerAuth:{
          type: "http",
          scheme: "bearer",
          bearerFormat: "JWT"
        }
      }
    },
    paths: {
      "/cancion": {
        get: {
          summary: "Obtener todas las canciones",
          description: "Función que obtiene todas las canciones. Requiere autenticación",
          security: [
            {
              bearerAuth: []
            }
          ],
          parameters: [
            {
              name: "Authorization",
              in: "header",
              required: true,
              description: "Introduzca el token JWT: 'Bearer `token`'",
              type: "string"
            }

          ],
          bearerAuth: {
            type: "apiKey",
            name: "Authorization",
            in: "header",
            description: "Introduzca el token JWT"
          },
          responses: {
            "200": {
              "description": "Respuesta exitosa"
            },
            "400": {
              "description": "Error en la solicitud"
            },
            "401": {
              "description": "No está autorizado"
            }
          }
        }
      },
      "/cancion/{id}": {
        get: {
          summary: "Obtener una canción",
          description: "Función que obtiene una canción. Requiere autenticación",
          security: [
            {
              bearerAuth: []
            }
          ],
          parameters: [
            {
              name: "id",
              in: "path",
              required: true,
              description: "Introduzca el id de la canción",
              type: "integer"
            },
            {
              name: "Authorization",
              in: "header",
              required: true,
              description: "Introduzca el token JWT: 'Bearer `token`'",
              type: "string"
            }
          ],
          bearerAuth: {
            type: "apiKey",
            name: "Authorization",
            in: "header",
            description: "Introduzca el token JWT"
          },
          responses: {
            "200": {
              "description": "Respuesta exitosa"
            },
            "400": {
              "description": "Error en la solicitud"
            },
            "401": {
              "description": "No está autorizado"
            }
          }
        }
      },
      "/login": {
        post: {
          summary: "Login",
          description: "Función que permite loguearse. Devuelve un token JWT",
          parameters: [
            {
              name: "username",
              in: "formData",
              required: true,
              description: "Introduzca el nombre de usuario",
              type: "string"
            },
            {
              name: "password",
              in: "formData",
              required: true,
              description: "Introduzca la contraseña",
              type: "string"
            }
          ],
          responses: {
            "200": {
              "description": "Respuesta exitosa"
            },
            "400": {
              "description": "Error en la solicitud"
            },
            "401": {
              "description": "No está autorizado"
            }
          }
        }
      }
    }
  }