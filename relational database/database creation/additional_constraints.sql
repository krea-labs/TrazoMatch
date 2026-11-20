/* Constraint adicional para que cada pago esté relacionado con al menos una licencia o un pago */
CREATE OR ALTER CONSTRAINT CK_Pago_Licencia_Encargo CHECK (
    (idLicencia IS NOT NULL AND idEncargo IS NULL) OR
    (idLicencia IS NULL AND idEncargo IS NOT NULL)
);