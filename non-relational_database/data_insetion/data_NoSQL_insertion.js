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

})