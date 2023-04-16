<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Recetas</title>
    			<link rel="stylesheet" type="text/css" href="recetas.css"/>
			</head>
			<body>
				<div class="initial">Transformación con XSLT
				<p>XML -> HTML</p>
				</div>
				<div class="v-line">
				<div class="no-line">
					<h1>Mis recetas de cocina canaria</h1>
					<p>Listado de mis recetas de cocina favoritas, características y modo de elaboración, ordenado alfabéticamente.</p>
					<xsl:for-each select="recetas/receta">
						<h3>Nombre de la receta: <xsl:value-of select="nombre"/></h3>
						<p>Tipo de receta: <xsl:value-of select="tipo/@definicion"/></p>
						<p>Dificultad: <xsl:value-of select="dificultad"/></p>
						<p>Tiempo de elaboración: <xsl:value-of select="tiempo"/></p>
						<p>Esta receta puedes elaborarla en un/a: <xsl:value-of select="elaboracion"/></p>
						<p>Calorías: <xsl:value-of select="calorias"/></p>
						
						<div class="table_list">
						<div class="table_list_name">Listado de ingredientes de <xsl:value-of select="nombre"/></div>
						<table>
							<tr class="upper">
								<th>Nombre del ingrediente</th>
								<th>Cantidad necesaria</th>
							</tr>									
							<xsl:for-each select="ingredientes/ingrediente">
								<tr style="border:hidden">
									<td><xsl:value-of select="@nombre"/></td>
									<td><xsl:value-of select="@cantidad"/></td>
								</tr>
							</xsl:for-each>
						</table>
						</div>
						<div class ="steps">
						<p class="pasos">Pasos necesarios:</p>

							<xsl:for-each select="pasos/paso">
								<p>Paso número <xsl:value-of select="./@orden"/>:</p>
								<ul>
									<li><xsl:value-of select="."/></li>
								</ul>
							</xsl:for-each>
						</div>
					</xsl:for-each>
				</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
