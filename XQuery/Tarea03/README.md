# XQuery

_Actividad XML - XQuery 2._

### Ejercicio 2

Dado el siguiente documento XML realiza las siguientes consultas con XQuery:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<videojuego>
  <titulo>Valorant</titulo>
  <genero>Juego de disparos en primera persona</genero>
  <plataforma>PC</plataforma>
  <desarrollador>Riot Games</desarrollador>
  <fechaLanzamiento>2 de junio de 2020</fechaLanzamiento>
  <agentes>
    <agente>
      <nombre>Jett</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4s">Cuchillo Arrojadizo</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0s">Vientos Ligeros</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="6s">Tormenta de Cuchillos</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Brimstone</nombre>
      <habilidadPrimaria tipo="Daño" duracion="6s">Granada Incendiaria</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0s">Estímulo de Combate</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="4s">Incendiario Orbital</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Viper</nombre>
      <habilidadPrimaria tipo="Daño" duracion="8s">Nube Venenosa</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="6s">Pantalla Tóxica</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="12s">Recolección Táctica</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Phoenix</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4s">Bola Curva de Fuego</habilidadPrimaria>
      <habilidadSecundaria tipo="Curación" duracion="0s">Escudo Curativo</habilidadSecundaria>
      <habilidadUltimate tipo="Daño" duracion="6s">Explosión Cósmica</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Sage</nombre>
      <habilidadPrimaria tipo="Curación" duracion="0s">Orbe de Curación</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="4s">Muro de Hielo</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="5s">Resurrección</habilidadUltimate>
    </agente>
    <agente>
      <nombre>Cypher</nombre>
      <habilidadPrimaria tipo="Daño" duracion="4s">Trampa Cibernética</habilidadPrimaria>
      <habilidadSecundaria tipo="Daño" duracion="7s">Cámara Espía</habilidadSecundaria>
      <habilidadUltimate tipo="Curación" duracion="0s">Ataque de Neurona</habilidadUltimate>
    </agente>
  </agentes>
</videojuego>
```
### 1.	Muestra el título del videojuego.
```
let $title := //titulo
return $title

- - - Output - - -
<titulo>Valorant</titulo>
```
### 2.	Muestra la plataforma del videojuego.
```
let $platform := //plataforma
return $platform

- - - Output - - -
<plataforma>PC</plataforma>
```
### 3.	Muestra el nombre de todos los agentes.
```
for $nombre in //agente/nombre
return $nombre

- - - Output - - -
<nombre>Jett</nombre>
<nombre>Brimstone</nombre>
<nombre>Viper</nombre>
<nombre>Phoenix</nombre>
<nombre>Sage</nombre>
<nombre>Cypher</nombre>
```
### 4.	Muestra el nombre y la habilidad ultimate de todos los agentes.
```
for $nombre in //agente
return $nombre | $nombre/habilidadUltimate

- - - Output - - -
<nombre>Jett</nombre>
<habilidadUltimate tipo="Daño" duracion="6s">Tormenta de Cuchillos</habilidadUltimate>
<nombre>Brimstone</nombre>
<habilidadUltimate tipo="Daño" duracion="4s">Incendiario Orbital</habilidadUltimate>
<nombre>Viper</nombre>
<habilidadUltimate tipo="Curación" duracion="12s">Recolección Táctica</habilidadUltimate>
<nombre>Phoenix</nombre>
<habilidadUltimate tipo="Daño" duracion="6s">Explosión Cósmica</habilidadUltimate>
<nombre>Sage</nombre>
<habilidadUltimate tipo="Curación" duracion="5s">Resurrección</habilidadUltimate>
<nombre>Cypher</nombre>
<habilidadUltimate tipo="Curación" duracion="0s">Ataque de Neurona</habilidadUltimate>
```
### 5.	Muestra los nombres de los agentes cuya habilidad primaria es "Incendiaria".
```
for $nombre in //agente
where contains ($nombre/habilidadPrimaria, "Incendiaria")
return $nombre/nombre

- - - Output - - -
<nombre>Brimstone</nombre>
```
### 6.	Muestra los nombres de los agentes cuya habilidad ultimate es "Fénix".
```
< CORREGIR>
```
### 7.	Muestra las habilidades primarias de los agentes cuyo nombre empieza por "J".
```
for $habilidad in //agente
where starts-with($habilidad/nombre, "C")
return $habilidad/habilidadPrimaria

- - - Output - - -
<habilidadPrimaria tipo="Daño" duracion="4s">Trampa Cibernética</habilidadPrimaria>
```
### 8.	Muestra los nombres de los agentes cuyas habilidades primarias empiezan por "Bola".
```
for $habilidad in //agente
where starts-with($habilidad/habilidadPrimaria, "Bola")
return $habilidad/nombre

- - - Output - - -
<nombre>Phoenix</nombre>
```
### 9. Muestra los nombres de todos los agentes en orden alfabético.
```
for $nombre in //agente/nombre
order by $nombre
return $nombre

- - - Output - - -
<nombre>Brimstone</nombre>
<nombre>Cypher</nombre>
<nombre>Jett</nombre>
<nombre>Phoenix</nombre>
<nombre>Sage</nombre>
<nombre>Viper</nombre>
```
### 10. Muestra las habilidades primarias y secundarias de los agentes cuyo nombre contiene la letra "y".
```
for $nombre in //agente
where contains ($nombre/nombre, "y")
return $nombre/habilidadPrimaria | $nombre/habilidadSecundaria

- - - Output - - -
<habilidadPrimaria tipo="Daño" duracion="4s">Trampa Cibernética</habilidadPrimaria>
<habilidadSecundaria tipo="Daño" duracion="7s">Cámara Espía</habilidadSecundaria>
```
### 11. Muestra los nombres de los agentes cuya habilidad ultimate contiene la palabra "Cuchillos".
```
for $nombre in //agente
where contains ($nombre/habilidadUltimate, "Cuchillos")
return $nombre/nombre

- - - Output - - -
<nombre>Jett</nombre>
```
### 12. Muestra las habilidades primarias de los agentes cuyo nombre contiene la letra "o" y la habilidad secundaria contiene la palabra "humo".
```
for $nombre in //agente
where contains ($nombre/nombre, "o") and contains ($nombre/habilidadSecundaria, "Combate")
return $nombre/habilidadPrimaria
<CORREGIR>
```
### 13. Muestra los nombres de los agentes que tienen exactamente tres habilidades.
```
for $agente in /videojuego/agentes/agente
where count($agente/*[contains(local-name(), 'habilidad')]) = 3
return $agente/nombre

- - - Output - - -
<nombre>Jett</nombre>
<nombre>Brimstone</nombre>
<nombre>Viper</nombre>
<nombre>Phoenix</nombre>
<nombre>Sage</nombre>
<nombre>Cypher</nombre>
```
### 14. Muestra los nombres de los agentes cuya habilidad secundaria no es "Granada Cegadora".
```
```
### 15. Muestra las habilidades primarias de los agentes cuyos nombres no contienen la letra "e".
```
```
### 16. Muestra los nombres de los agentes cuyas habilidades primarias contienen la palabra "muro" o la palabra "barrera".
```
```
### 17. Muestra las habilidades ultimates de los agentes en orden alfabético inverso.
```
```
### 18. Muestra los nombres de los agentes cuya habilidad ultimate tiene una duración mayor a 8 segundos.
```
```
### 19. Muestra el nombre del agente con la habilidad ultimate más corta.
```
```
### 20. Muestra los nombres de los agentes que tienen habilidades primarias y secundarias con la misma duración.
```
```
### 21. Muestra el nombre de los agentes que tienen habilidades primarias y secundarias que pertenecen al mismo tipo.
```
```
### 22. Muestra los nombres de los agentes cuyas habilidades primarias son de tipo "Daño" y sus habilidades secundarias son de tipo "Curación".
```
```
### 23. Muestra los nombres de los agentes que tienen habilidades primarias y secundarias que contienen la misma palabra.
```
```
