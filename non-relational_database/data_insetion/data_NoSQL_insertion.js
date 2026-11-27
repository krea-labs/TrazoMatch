// TrazoMatch - Non-relational Database Insertion Script
const db = db.getSiblingDB("TrazoMatch_NoSQL_DB");

// Insert new company document into the C_Empresa collection
db.C_Empresa.insertOne({
    "_id": "1",
    "nombre": "MiraiArt INC",
    "razonsocial": "MiraiArt INC",
    "nombreComercial": "MiraiArt",
    "ruc": "123456789",
    "correo": "info@miraiart.com",
    "nombreRepresentante": "Saori Tanaka",
    "correoRepresentante": "saori.tanaka@miraiart.com",
    "encargos": [
        {

            "idEncargo": "1",
            "idArtista": "1",
            "nombreArtístico": "JPDrawings",
            "dni": "12345678",
            "correo": "juan.perez@example.com",
            "nombreEncargo": "Retrato Personalizado",
            "descripciónEncargo": "Encargo de un retrato digital personalizado basado en una fotografía proporcionada por el cliente.",
            "estado": "En progreso",
        },
        {

            "idEncargo": "2",
            "idArtista": "2",
            "nombreArtístico": "Artista1",
            "dni": "87654321",
            "correo": "artista1@example.com",
            "nombreEncargo": "Pintura Abstracta",
            "descripciónEncargo": "Encargo de una pintura abstracta en canvas.",
            "estado": "En progreso",
        }
    ],

    "reseñas": [
        {
            "idArtista": "1",
            "idReseña": "1",
            "empresa": "Editorial Fantasía",
            "comentario": "Excelente trabajo, muy satisfecha con el resultado.",
            "puntuación": 5
        },
    ]

})