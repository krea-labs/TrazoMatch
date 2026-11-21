/* Mostrar el nombre artístico del artista, el nombre de la obra y la paleta de colores 
de las obras que usen una paleta de colores que contenga rojo y azul. */

SELECT nombreArtístico, T_Obra.nombreObra, T_Obra.paletaColores FROM T_Artista
INNER JOIN T_Portafolio ON T_Artista.idArtista = T_Portafolio.idArtista
INNER JOIN T_Obra ON T_Portafolio.idPortafolio = T_Obra.idPortafolio
WHERE T_Obra.paletaColores LIKE '%rojo%' 
AND T_Obra.paletaColores LIKE '%azul%';