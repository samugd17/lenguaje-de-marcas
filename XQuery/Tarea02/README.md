<div aling="justify">
  
# Tarea02: XQuery

- Dado el siguiente documento XML realiza las siguientes consultas con XQuery:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<bookstore>
  <book category="COOKING">
    <title lang="en">Everyday Italian</title>
    <author>Giada De Laurentiis</author>
    <year>2005</year>
    <price>30.00</price>
  </book>
  <book category="CHILDREN">
    <title lang="en">Harry Potter</title>
    <author>J K. Rowling</author>
    <year>2005</year>
    <price>29.99</price>
  </book>
  <book category="WEB">
    <title lang="en">XQuery Kick Start</title>
    <author>James McGovern</author>
    <author>Per Bothner</author>
    <author>Kurt Cagle</author>
    <author>James Linn</author>
    <author>Vaidyanathan Nagarajan</author>
    <year>2003</year>
    <price>49.99</price>
  </book>
  <book category="WEB">
    <title lang="en">Learning XML</title>
    <author>Erik T. Ray</author>
    <year>2003</year>
    <price>39.95</price>
  </book>
</bookstore> 
```
### 1.	Mostrar los títulos de los libros con la etiqueta "titulo".
```
for $book in bookstore/book/title
return <titulo>{$book/text()}</titulo>
```
### 2.	Mostrar los libros cuyo precio sea menor o igual a 30. Primero incluyendo la condición en la cláusula "where" y luego en la ruta del XPath.
```
for $book in bookstore/book
where $book/price <= 30
return $book

for $book in bookstore/book[price <=30]
return $book
```
### 3.	Mostrar sólo el título de los libros cuyo precio sea menor o igual a 30.
```
for $book in bookstore/book[price <=30]/title
return $book
```
### 4.	Mostrar sólo el título sin atributos de los libros cuyo precio sea menor o igual a 30.
```
for $book in bookstore/book[price <=30]/title/text()
return $book
```
### 5.	Mostrar el título y el autor de los libros del año 2005, y etiquetar cada uno de ellos con "lib2005".
```
for $book in bookstore/book[year = 2005]
return <lib2005>{$book/title | $book/author}</lib2005>
```
### 6.	Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion".
```
for $year in //book/year
return <publicacion>{$year/text()}</publicacion>

let $year := //book/year
return <publicacion>{$year}</publicacion>
```
### 7.	Mostrar los libros ordenados primero por "category" y luego por "title" en una sola consulta.
```
let $category := //book/@category
for $book in //book
order by $book/title
return $book
```
### 8.	Mostrar cuántos libros hay, y etiquetarlo con "total".
```
for $book in bookstore
return <total>{count($book/book)}</total>
```
### 9.	Mostrar los títulos de los libros y al final una etiqueta con el número total de libros.
```
for $book in bookstore
return <book>{$book/book/title}<total>{count($book/book)}</total></book>
```
### 10.	Mostrar el precio mínimo y máximo de los libros.
```
let $price := /bookstore/book
return <prices><max>{max($price/price)}</max><min>{min($price/price)}</min></prices>
```
### 11.	Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA.
```
for $book in /bookstore/book
return <book>{$book/title | $book/price | <iva_price>{$book/price * 0.04 + $book/price}</iva_price>}</book>
```
### 12.	Mostrar la suma total de los precios de los libros con la etiqueta "total".
```
let $total := sum(/bookstore/book/price)
return <total>{$total}</total>
```
### 13.	Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios.
```
let $total := sum(/bookstore/book/price)
let $price := //price
return <books>{$price}<total>{$total}</total></books>
```
### 14.	Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.
```
for $book in //book
let $authors := count($book/author)
return <book>{$book/title}<authors>{$authors}</authors></book>
```
### 15.	Mostrar en la misma etiqueta el título y entre paréntesis el número de autores que tiene ese título.
```
for $book in //book
let $authors := count($book/author)
return <book>{$book/title/text()}({$authors})</book>
```
### 16.	Mostrar los libros escritos en años que terminen en "3".
```
for $book in //book
where ends-with($book/year, "3")
return $book
```
### 17.	Mostrar los libros cuya categoría empiece por "C".
```
for $book in //book
where starts-with($book/@category, "C")
return $book
```
### 18.	Mostrar los libros que tengan una "X" mayúscula o minúscula en el título.
```
for $book in //book
where contains($book/title, "X") or contains($book/title, "x")
return $book
```
### 19.	Mostrar el título y el número de caracteres que tiene cada título, cada uno con su propia etiqueta.
```
for $book in //title
return <books>{$book} <lenght>{string-length($book)}</lenght></books>
```
### 20.	Mostrar todos los años en los que se ha publicado un libro eliminando los repetidos. Etiquétalos con "año".
```
for $year in distinct-values (//year)
return <año>{$year}</año>
```
### 21.	Mostrar todos los autores eliminando los que se repiten y ordenados por el número de caracteres que tiene cada autor.
```
for $author in distinct-values (//author)
order by string-length($author)
return $author
```
### 22.	Mostrar los títulos en una tabla de HTML.
```
<table>
<tr>
{for $title in //book/title
return <td>{$title/text()}</td>}
</tr>
</table>
```

</div>
