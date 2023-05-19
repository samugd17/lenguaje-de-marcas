Dado el siguiente documento XML realiza las siguientes consultas con XQuery: 
### 1. Escribe una consulta en XQuery para obtener todos los títulos de las películas en inglés.
```
for $title in //titulo/@idioma
where $title = "en"
return $title/..
``` 
### 2. Encuentra la cantidad de películas en la categoría "Acción". 
```
let $peliculas := count(//género = "Acción")
return $peliculas
``` 
### 3. Obtén el título y el director de la película más reciente. 
```
let $año := max(//año)
for $pelicula in //pelicula
where $pelicula/año = $año
return $pelicula/titulo | $pelicula/director
``` 
### 4. Encuentra todas las películas que tengan una duración superior a 120 minutos. 
```
for $pelicula in //pelicula
where $pelicula/duración > 120
return $pelicula
``` 
### 5. Escribe una consulta para calcular el precio promedio de todas las películas. 
```
let $precio_medio := avg(//precio)
return $precio_medio
``` 
### 6. Obtén el título de la película más cara. 
```
let $precio := max(//precio)
for $pelicula in //pelicula
where $pelicula/precio = $precio
return $pelicula/titulo
``` 
### 7. Encuentra todas las películas dirigidas por Christopher Nolan. 
```
for $pelicula in //pelicula
where contains($pelicula/director, "Christopher Nolan")
return $pelicula
``` 
### 8. Obtén el título y el año de lanzamiento de las películas que fueron lanzadas después de 2010 y tienen un precio inferior a 15. 
```
for $pelicula in //pelicula
where $pelicula/año > 2010 and $pelicula/precio < 15
return $pelicula/titulo | $pelicula/año
``` 
### 9. Encuentra el director de la película cuyo título es "Avengers: Endgame". 
```
for $pelicula in //pelicula
where contains($pelicula/titulo, "Avengers: Endgame")
return $pelicula/director
``` 
### 10. Escribe una consulta para obtener todas las películas en orden alfabético según su título. 
```
for $pelicula in //pelicula
order by $pelicula/titulo
return $pelicula
``` 
### 11. Encuentra todas las películas cuyo título comienza con la letra "L". 
```
for $pelicula in //pelicula
where starts-with($pelicula/titulo, "L")
return $pelicula
``` 
### 12. Obtén el número total de películas en la librería. 
```
let $peliculas := count(//pelicula)
return $peliculas
``` 
### 13. Encuentra la película con la duración más larga y muestra su título, duración y año de lanzamiento. 
```
let $duracion := max(//duración)
for $pelicula in //pelicula
where $pelicula/duración = $duracion
return $pelicula/titulo | $pelicula/duración | $pelicula/año
``` 
### 14. Calcula el precio total de todas las películas en la librería y muestra el resultado. 
```
let $precio_total := sum(//precio)
return $precio_total
``` 
### 15. Encuentra todos los géneros distintos presentes en la librería y muestra la cantidad de películas para cada género. 
```
for $genero in distinct-values(//pelicula/género)
return <genero>{$genero}({count($genero)})</genero>

Otra forma:
for $genero in distinct-values(//pelicula/género)
return <genero>{$genero}<cantidad>{count($genero)}</cantidad></genero>
``` 
### 16. Crea una variable que almacene el número total de películas en la librería. Luego, muestra el título y el precio de las películas cuyo precio es mayor que el promedio de todos los precios. 
```
let $total := count(//pelicula)
for $pelicula in //pelicula
where $pelicula/precio > avg(//precio)
return <pelicula>{$pelicula/titulo | $pelicula/precio}</pelicula>
``` 
### 17. Escribe una consulta para encontrar el género con la película más corta y muestra el título y la duración de esa película. 
```
let $duracion_minima := min(//duración)
for $pelicula in //pelicula
where $pelicula/duración = $duracion_minima
return $pelicula/titulo | $pelicula/duración
``` 
### 18. Encuentra todas las películas cuyo título contiene la palabra "der" y muestra el título y el director. 
```
for $pelicula in //pelicula
where contains($pelicula/titulo, "der")
return $pelicula/titulo | $pelicula/director
``` 
### 19. Escribe una consulta para obtener el título y el director de las tres películas más recientes en orden descendente de año de lanzamiento. 
```
for $pelicula in //pelicula
order by $pelicula/año descending
return $pelicula/titulo | $pelicula/director
``` 
### 20. Encuentra todos los directores que han dirigido películas en más de un género y muestra el nombre de cada director junto con los géneros en los que ha trabajado. 
```
for $pelicula in //pelicula
return $pelicula/director | $pelicula/género
``` 