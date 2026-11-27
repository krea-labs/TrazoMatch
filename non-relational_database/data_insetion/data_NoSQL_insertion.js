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
})