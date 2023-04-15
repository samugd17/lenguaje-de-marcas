<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Recetas</title>
			</head>
			<body>
				<div class="v-line">
					<h2>Mis recetas de cocina canaria</h2>
					<p>Listado de mis recetas de cocina favoritas, características y modo de elaboración, ordenado alfabéticamente.</p>
					<xsl:for-each select="recetas/receta">
						<h4>Nombre de la receta:<xsl:value-of select="nombre"/></h4>
						<p>Tipo de receta:<xsl:value-of select="tipo/@definicion"/></p>
						<p>Dificultad:<xsl:value-of select="dificultad"/></p>
						<p>Tiempo de elaboración:<xsl:value-of select="tiempo"/></p>
						<p>Esta receta puedes elaborarla en un/a:<xsl:value-of select="elaboracion"/></p>
						<p>Calorías:<xsl:value-of select="calorias"/></p>
						<p>Listado de ingredientes:<xsl:value-of select="nombre"/></p>
					<table border="1">
						<tr class="upper">
							<th>Nombre del ingrediente</th>
							<th>Cantidad necesaria</th>
						</tr>
					<xsl:for-each select="recetas/receta/ingredientes/ingrediente">
						<tr>
							<td><xsl:value-of select="@nombre"/></td>
							<td><xsl:value-of select="@cantidad"/></td>
						</tr>
					</xsl:for-each>
					</xsl:for-each>
					</table>
				</div>
			</body>
		</html>
    </xsl:template>
</xsl:stylesheet>