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
                <hr>
                <h2>Mis recetas de cocina canaria</h2>
                <p>Listado de mis recetas de cocina favoritas, características y modo de elaboración, ordenado alfabéticamente.</p>
                <p>Nombre de la receta:</p>
                <p>Tipo de receta:</p>
                <p>Dificultad:</p>
                <p>Tiempo de elaboración:</p>
                <p>Esta receta puedes elaborarla en un/a:</p>
                <p>Calorías:</p>
                <tr class="upper">
                    <th>Nombre del ingrediente</th>
                    <th>Cantidad necesaria</th>
                </tr>
                <tr class="lower">
                    <th></th>
                </tr>
            </div>
        </body>