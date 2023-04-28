# Tarea01: XQuery
- Para el archivo bailes.xml:

    1. Muestra el nombre de todos los bailes.

    ```
    for $baile in /bailes/baile
    
    return $baile/nombre/text()
    ```

    2. Muestra el nombre y precio de todos los bailes.

    ```
    for $baile in /bailes/baile

    return
    <baile> 
    <nombre>{$baile/nombre/text()}</nombre>
    <precio>{$baile/precio/text()}</precio>
    </baile>
    ```

    3. Muestra el nombre y precio de todos los bailes donde su precio es mayor que 40.

    ```
    for $baile in /bailes/baile
    where $baile/precio > 40

    return <baile>{$baile/nombre/text()} precio: {$baile/precio/text()}</baile>
    ```

    4. Mostrar los bailes ordenados por nombre.

    ```
    for $baile in //bailes/baile
    order by $baile/nombre
    return $baile/nombre/text()
    ```

    5. Mostrar los nombres de los bailes que contienen una a.

    ```
    for $baile in //bailes/baile
    where contains ($baile/nombre,"a")
    return $baile/nombre/text()
    ```

    6. Mostrar el nombre de los bailes donde el apellido del profesor sea Lozano.

    ```
    for $baile in //bailes/baile
    where contains ($baile/profesor,"Lozano")
    return $baile/nombre/text()
    ```

    7. Mostrar todos los bailes, excepto el 3 y 5.
    ```
    for $baile in //bailes/baile
    where $baile[@id != 3 and $baile[@id != 5]]
    return $baile
    ```

    8. Mostrar profesores que den clases de bailes por una cuota mensual.

    ```
    for $profesor in bailes/baile
    where $profesor/precio/@cuota = "mensual"
    return $profesor/profesor/text()
    ```

    9. Mostrar el nombre de los bailes de la sala 1, que se pague con euros y el precio sea menor a 35.

    ```
    for $baile in bailes/baile
    where $baile/sala = 1 and $baile/precio < 35 and $baile/precio/@moneda = "euro"
    return $baile/nombre/text()
    ```
    10. Obtener el precio del baile con el precio más caro.
    ```
    1ª forma:
    for $baile in bailes/baile/precio
    where $baile = max(//precio)
    return $baile/text()

    2ª forma:
    max(for $baile in bailes/baile/precio
    return $baile)

    3ªforma:
    let $baile := /bailes/baile
    return <precio> {max ($baile/precio)}<precio>
    ```

    11. Obtener el precio y el nombre del baile con el precio más caro.
    ```
    for $baile in bailes/baile/precio
    where $baile = max(//precio)
    return $baile/text()|$baile/../nombre/text()
    ```

    12. Obtener el precio del baile con el precio más barato.
    ```
    min(for $baile in bailes/baile/precio
    return $baile)
    ```

    13. Obtener el precio y el nombre del baile con el precio más barato.
    ```
    for $baile in bailes/baile/precio
    where $baile = min(//precio)
    return $baile/text()|$baile/../nombre/text()
    ```

    14. Obtener la suma del precio por el número de plazas de todas las clases. Resultado: 29250.
    ```
    sum(for $baile in bailes/baile
    return $baile/precio * $baile/plazas)
    ```

    15. Obtener el dia, mes y año de los bailes mensuales, tanto del comienzo como del final. 
    ```
    ```

    16. Obtener los bailes que tengan mas de 100 dias de diferencia.
    ```
    ```
    
    17. Obtener la diferencia de dias del comienzo del baile con la fecha actual. 
    ```
    ```
