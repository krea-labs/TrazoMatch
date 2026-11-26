use("TrazoMatch");

db.C_Artista.insertOne({
    "_id": "1",
    "nombre": "Juan",
    "apellido": "Perez",
    "nombreArtístico": "JPDrawings",
    "dni": "12345678",
    "correo": "juan.perez@example.com",
    "contraseña": "securepassword",
    "telefono": "+51 1234567890",
    "biografía": "Artista autodidacta especializado en ilustración digital y cómic.",
    "estáVerificado": true,
    "redesSociales": {
        "instagram": "https://www.instagram.com/jpdrawings",
        "behance": "https://www.behance.net/jpdrawings",
        "twitter": "https://twitter.com/jpdrawings"
    },
    "portafolios": [
        {
            "idPortafolio": "1",
            "nombrePortafolio": "Ilustraciones Digitales",
            "descripción": "Colección de ilustraciones digitales realizadas en los últimos 2 años.",
            "obras": [
                {
                    "idObra": "1",
                    "nombreObra": "Paisaje Fantástico",
                    "descripciónObra": "Ilustración de un paisaje fantástico con montañas flotantes y criaturas mágicas.",
                    "fechaCreación": "2023-05-15",
                    "técnica": "Digital",
                    "dimensiones": "1920x1080 px",
                    "precio": 150.00,
                    "disponibilidad": true,
                },
                {
                    "idObra": "2",
                    "nombreObra": "Retrato de Mujer",
                    "descripciónObra": "Retrato digital de una mujer con estilo realista.",
                    "fechaCreación": "2023-06-10",
                    "técnica": "Digital",
                    "dimensiones": "1080x1350 px",
                    "precio": 100.00,
                    "disponibilidad": false,
                }
            ]
        },
        {
            "idPortafolio": "2",
            "nombrePortafolio": "Cómics",
            "descripción": "Serie de cómics cortos con temática de ciencia ficción.",
            "obras": [
                {
                    "idObra": "3",
                    "nombreObra": "Aventura Espacial",
                    "descripciónObra": "Cómic corto sobre una tripulación espacial enfrentando desafíos en un planeta desconocido.",
                    "fechaCreación": "2023-07-20",
                    "técnica": "Manga",
                    "dimensiones": "800x1200 px",
                    "precio": 200.00,
                    "disponibilidad": true,
                }
            ]
        }
    ],
    "encargos": [
        {
            "idEncargo": "1",
            "nombreEncargo": "Retrato Personalizado",
            "descripciónEncargo": "Encargo de un retrato digital personalizado basado en una fotografía proporcionada por el cliente.",
            "estado": "En progreso",
        },
        {
            "idEncargo": "2",
            "nombreEncargo": "Ilustración de Portada",
            "descripciónEncargo": "Encargo para crear una ilustración de portada para un libro de fantasía.",
            "estado": "Completado",
        }
    ],
    "reseñas": [
        {
            "idReseña": "1",
            "empresa": "Editorial Fantasía",
            "comentario": "Excelente trabajo, muy satisfecha con el resultado.",
            "puntuación": 5
        },
        {
            "idReseña": "2",
            "empresa": "Cliente Particular",
            "comentario": "El retrato quedó increíble, superó mis expectativas.",
            "puntuación": 4
        }
    ]
})