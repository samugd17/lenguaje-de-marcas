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
    ```

    9. Mostrar el nombre de los bailes de la sala 1, que se pague con euros y el precio sea menor a 35.

    ```
    ```