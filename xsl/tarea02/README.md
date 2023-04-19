# XPath

### Ejercicio 1:
Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.
```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
    <nombre>IES Puerto de la Cruz –Telesforo Bravo</nombre>
    <web>https://www3.gobiernodecanarias.org/medusa/edublog/iespuertodelacruztelesforobravo/</web>
    <ciclos>
        <ciclo id="ASIR">
            <nombre>Administración de Sistemas Informáticos en Red</nombre>
            <grado>Superior</grado>
            <decretoTitulo año="2009" />
        </ciclo>
        <ciclo id="DAM">
            <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
            <grado>Superior</grado>
            <decretoTitulo año="2010" />
        </ciclo>
        <ciclo id="SMR">
            <nombre>Sistemas Microinformáticos y Redes</nombre>
            <grado>Medio</grado>
            <decretoTitulo año="2008" />
        </ciclo>
    </ciclos>
</ies>
```

- __Nombre del Instituto__:
    ```xml
    <nombre>IES Puerto de la Cruz –Telesforo Bravo</nombre>
    ```

    _XPath:_
    ```
    ies/nombre/
    ```

- __Página web del Instituto__:

    <web>https://www3.gobiernodecanarias.org/medusa/edublog/iespuertodelacruztelesforobravo/</web>

    _XPath:_

    ```
    ies/web
    ```

- __Nombre de los Ciclos Formativos__:

    Administración de Sistemas Informáticos en Red Desarrollo de Aplicaciones Web Sistemas Microinformáticos y Redes

    _XPath:_

    ```
    /ies/ciclos/ciclo/nombre
    ```

- __Siglas por las que se conocen los Ciclos Formativos__:

    id="ASIR" id="DAM" id="SMR"

    _XPath:_

    ```
    /ies/ciclos/ciclo/@id
    ```

- __Años en los que se publicaron los decretos de título de los Ciclos Formativos__:
    
    año="2009" año="2010" año="2008"

    _XPath:_
    ```
    /ies/ciclos/ciclo/decretoTitulo/@año
    ```

- __Ciclos Formativos de Grado Medio (se trata de obtener el elemento <ciclo> completo)__:
    ```xml
    <ciclo id="SMR">
    <nombre>Sistemas Microinformáticos y Redes</nombre>
    <grado>Medio</grado>
    <decretoTitulo año="2008"/></ciclo>
    ```
    _XPath:_
    ```
    /ies/ciclos/ciclo[grado="Medio"]
    ```

- __Nombre de los Ciclos Formativos de Grado Superior__:

    ```xml
    <nombre>Administración de Sistemas Informáticos en Red</nombre>
    <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
    ```
    _XPath:_

    ```
    /ies/ciclos/ciclo[grado="Superior"]/nombre
    ```

- __Nombre de los Ciclos Formativos anteriores a 2010__:

    Administración de Sistemas Informáticos en Red Sistemas Microinformáticos y Redes

    _XPath:_

    ```
    /ies/ciclos/ciclo[decretoTitulo/@año<2010]/nombre
    ```

- __Nombre de los Ciclos Formativos de 2008 o 2010__:

    - Desarrollo de Aplicaciones Multiplataforma 
    - Sistemas Microinformáticos y Redes

    _XPath:_

    ```
    /ies/ciclos/ciclo[decretoTitulo/@año=2008 or decretoTitulo/@año=2010]/nombre
    ```

### Ejercicio 2.
Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
    <modulos>
        <modulo id="0228">
            <nombre>Aplicaciones web</nombre>
            <curso>2</curso>
            <horasSemanales>4</horasSemanales>
            <ciclo>SMR</ciclo>
        </modulo>
        <modulo id="0372">
            <nombre>Gestión de bases de datos</nombre>
            <curso>1</curso>
            <horasSemanales>5</horasSemanales>
            <ciclo>ASIR</ciclo>
        </modulo>
        <modulo id="0373">
            <nombre>Lenguajes de marcas y sistemas de gestión de información</nombre>
            <curso>1</curso>
            <horasSemanales>3</horasSemanales>
            <ciclo>ASIR</ciclo>
            <ciclo>DAW</ciclo>
        </modulo>
        <modulo id="0376">
            <nombre>Implantación de aplicaciones web</nombre>
            <curso>2</curso>
            <horasSemanales>5</horasSemanales>
            <ciclo>ASIR</ciclo>
        </modulo>
    </modulos>
</ies>
```

- Nombre de los módulos que se imparten en el Instituto:

    - Aplicaciones web
    - Gestión de bases de datos
    - Lenguajes de marcas y sistemas de gestión de información
    - Implantación de aplicaciones web

    _XPath:_

    ```
    /ies/modulos/modulo/nombre/text()
    ```

- Nombre de los módulos del ciclo ASIR:

    Nota: Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

    - Gestión de bases de datos
    - Lenguajes de marcas y sistemas de gestión de información
    - Implantación de aplicaciones web

    _XPath: En un sólo paso._

    ```
    /ies/modulos/modulo[ciclo="ASIR"]/nombre/text()
    ```

    _XPath: En dos pasos._

    ```
    nsnc
    ```

- Nombre de los módulos que se imparten en el segundo curso de cualquier ciclo:

    Nota: Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

    - Aplicaciones web
    - Implantación de aplicaciones web

    _XPath: En un sólo paso._

    ```
    /ies/modulos/modulo[curso=2]/nombre/text()
    ```

    _XPath: En dos pasos._

    ```
    nsnc
    ```

- Nombre de los módulos de menos de 5 horas semanales:

    Nota: Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

    - Aplicaciones web
    - Lenguajes de marcas y sistemas de gestión de información

    _XPath: En un sólo paso._

    ```
    /ies/modulos/modulo[horasSemanales < 5]/nombre
    ```

    _XPath: En dos pasos._

    ```
    nsnc
    ```

- Nombre de los módulos que se imparten en el primer curso de ASIR:

    Nota: Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

    - Gestión de bases de datos
    - Lenguajes de marcas y sistemas de gestión de información

    _XPath: En un sólo paso._

    ```
    /ies/modulos/modulo[curso=1 and ciclo='ASIR']/nombre/text()
    ```

    _XPath: En dos pasos._

    ```
    /ies/modulos/modulo[curso=1][ciclo='ASIR']/nombre/text()
    ```

- Horas semanales de los módulos de más de 3 horas semanales:

    Nota: Resuelva este ejercicio de dos formas distintas, en un único paso de búsqueda y en dos pasos de búsqueda.

    - 4
    - 5
    - 5

    _XPath: En un sólo paso._

    ```
    /ies/modulos/modulo[horasSemanales > 3]/horasSemanales/text()
    ```

    _XPath: En dos pasos._

    ```
    nsnc
    ```

## Ejercicio 3:
Dado el siguiente documento XML, escriba las expresiones XPath que devuelvan la respuesta deseada

```xml
<?xml version="1.0" encoding="UTF-8"?>
<ies>
    <nombre>IES Puerto de la Cruz –Telesforo Bravo</nombre>
    <web>https://www3.gobiernodecanarias.org/medusa/edublog/iespuertodelacruztelesforobravo/</web>
        <ciclos>
            <ciclo id="ASIR">
                <nombre>Administración de Sistemas Informáticos en Red</nombre>
                <grado>Superior</grado>
                <decretoTitulo año="2009" />
            </ciclo>
            <ciclo id="DAM">
                <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
                <grado>Superior</grado>
                <decretoTitulo año="2010" />
            </ciclo>
            <ciclo id="SMR">
                <nombre>Sistemas Microinformáticos y Redes</nombre>
                <grado>Medio</grado>
                <decretoTitulo año="2008" />
            </ciclo>
        </ciclos>
        <modulos>
                <modulo id="0228">
                    <nombre>Aplicaciones web</nombre>
                    <curso>2</curso>
                    <horasSemanales>4</horasSemanales>
                    <ciclo>SMR</ciclo>
                </modulo>
                <modulo id="0372">
                    <nombre>Gestión de bases de datos</nombre>
                    <curso>1</curso>
                    <horasSemanales>5</horasSemanales>
                    <ciclo>ASIR</ciclo>
                </modulo>
                <modulo id="0373">
                    <nombre>Lenguajes de marcas y sistemas de gestión de información</nombre>
                    <curso>1</curso>
                    <horasSemanales>3</horasSemanales>
                    <ciclo>ASIR</ciclo>
                    <ciclo>DAM</ciclo>
                </modulo>
                <modulo id="0376">
                    <nombre>Implantación de aplicacionesweb</nombre>
                    <curso>2</curso>
                    <horasSemanales>5</horasSemanales>
                    <ciclo>ASIR</ciclo>
                </modulo>
        </modulos>
</ies>
```

- Nombre de los módulos del ciclo "Sistemas Microinformáticos y Redes" (en la expresión final no deben aparecer las siglas SMR):

    - Aplicaciones web

    _XPath:_

    ```
    /ies/modulos/modulo[ciclo='SMR']/nombre/text()
    ```

- Nombre de los ciclos que incluyen el módulo "Lenguajes de marcas y sistemas de gestión de información":

    - Administración de Sistemas Informáticos en Red
    - Desarrollo de Aplicaciones Web

    _XPath:_

    ```
    /ies/ciclos/ciclo[@id=/ies/modulos/modulo[nombre="Lenguajes de marcas y sistemas de gestión de información"]/ciclo]/nombre/text()
    ```

- Nombre de los módulos de ciclos de Grado Superior:

    - Gestión de bases de datos
    - Lenguajes de marcas y sistemas de gestión de información
    - Implantación de aplicaciones web

    _XPath:_

    ```
    /ies/ciclos/ciclo[grado="Superior"]
    /ies/modulos/modulo/nombre -> nombre módulos
    ```

- Nombre de los módulos de ciclos cuyo título se aprobó en 2008:

    - Aplicaciones web

    _XPath:_

    ```
    
    ```

- Grado de los ciclos con módulos de primer curso:

    - Superior
    - Superior

    _XPath:_

    ```
    
    ```