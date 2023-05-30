<div align="justify">

# Sistema de gestión empresarial: Odoo

## Índice
- [¿Qué es Odoo?](#¿qué-es-odoo)

### Primera parte:
- [Descarga e instala Odoo.](#descarga-e-instala-odoo)
- [Crea un sitio web.](#crea-un-sitio-web)
- [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#¿cómo-editamos-nuestra-página-web-edítala-y-diséñala-a-tu-gusto)
- [Crea tu propio módulo de Odoo.](#crea-tu-propio-módulo-de-odoo)

### Segunda parte:
- [¿Cuáles son las principales características y funcionalidades del ERP de Odoo?](#¿cuáles-son-las-principales-características-y-funcionalidades-del-erp-de-odoo)
- [¿Cómo puede el ERP de Odoo ayudar a las empresas a mejorar su eficiencia operativa?](#¿cómo-puede-el-erp-de-odoo-ayudar-a-las-empresas-a-mejorar-su-eficiencia-operativa)
- [¿Qué módulos y aplicaciones adicionales ofrece Odoo para complementar su funcionalidad de ERP?](#¿qué-módulos-y-aplicaciones-adicionales-ofrece-odoo-para-complementar-su-funcionalidad-de-erp)
- [¿Cuáles son las ventajas de utilizar el ERP de Odoo en comparación con otros sistemas similares en el mercado?](#¿cuáles-son-las-ventajas-de-utilizar-el-erp-de-odoo-en-comparación-con-otros-sistemas-similares-en-el-mercado)
- [¿Cuáles son los requisitos técnicos para implementar el ERP de Odoo en una empresa y qué consideraciones se deben tener en cuenta antes de iniciar la implementación?](#¿cuáles-son-los-requisitos-técnicos-para-implementar-el-erp-de-odoo-en-una-empresa-y-qué-consideraciones-se-deben-tener-en-cuenta-antes-de-iniciar-la-implementación)

### Tercera parte:
- [Descargar e instalar usando docker o MV el ERP Odoo.](#descargar-e-instalar-usando-docker-o-mv-el-erp-odoo)
- [Crea el usuario y la base de datos principal.](#crea-el-usuario-y-la-base-de-datos-principal)
- [Crea un sitio web.](#crea-un-sitio-web-1)
- [¿Cómo editamos nuestra página web?](#¿cómo-editamos-nuestra-página-web)
- [Instala y prueba el módulo de foro (Forum) desde la sección Apps.](#instala-y-prueba-el-módulo-de-foro-forum-desde-la-sección-apps)
- [Desinstala el módulo de foro.](#desinstala-el-módulo-de-foro)

## ¿Qué es Odoo?
Odoo es un sistema integrado de gestión empresarial (ERP) de código abierto y una plataforma de aplicaciones empresariales. Ofrece una amplia gama de módulos y funcionalidades que abarcan diversas áreas de una empresa, como ventas, compras, inventario, fabricación, contabilidad, recursos humanos y más.

Una de las características distintivas de Odoo es su enfoque modular, lo que significa que puedes elegir los módulos específicos que necesitas para adaptar el sistema a los requerimientos de tu empresa. Además, ofrece una gran flexibilidad y capacidad de personalización, lo que te permite ajustar el sistema según tus necesidades empresariales particulares. El sistema permite automatizar procesos, gestionar inventarios, realizar seguimiento de ventas, administrar proyectos, generar informes financieros, controlar la producción, gestionar el servicio al cliente y mucho más.

<div align="center">
<img src="img\odoo-logo.png" width="750">
</div>

## Primera parte

## Descarga e instala Odoo.
Para la instalación de Odoo en Windows, debemos acceder a este enlace: https://www.odoo.com/es_ES/page/download y rellenar los campos con nuestros datos. Una vez hecho esto, descargaremos el _"Odoo community"_ para Windows, la versión gratuita de este ERP.

<div align='center'>
<img src="img\OdooW1.png" width="750">
</div>
  
Una vez hecho esto, ya tendremos el instalador en nuestra carpeta de descargas. Lo ejecutaremos y seguiremos el básico procedimiento de instalación de cualquier aplicación. Como puede ser la elección del idioma, la aceptación de las políticas de empresa... etc. Eso sí, a la hora de instalarla, hay que marcar la opción de integrar la base datos PostgreSQL, la cual podremos modificar durante el proceso de instalación. Aunque recomiendo no variar sus datos si no se tienen los conocimientos adecuados y suficientes.
<div align='center'>
<img src="img\OdooW3.png" width="">
<img src="img\OdooW2.png" width="491">
</div>

## Crea un sitio web.
Para crear nuestro propio sitio web, deberemos ir al apartado de aplicaciones situado en la barra izquierda de la interfaz web. Una vez dentro, instalaremos el módulo *Sitio web*.
  
<div align='center'>
<img src="img\OdooW7.png" width="750">
</div>
  
Esta acción de activar el módulo anterior, nos dirigirá a una página donde comenzará el proceso de creación de nuestra propia página web. Totalmente guiado y con elecciones básicas que tomar, es bastante intuitivo y sencillo de seguir. 

En primer lugar, determinaremos la función principal de nuestra página web. Acto seguido, tendremos la posibilidad de elegir la paleta de colores que usaremos, así como otras funciones y características que tendrá nuestra web. 

<div align='center'>
<img src="img\OdooW8.png" width="750">
</div>
<div align='center'>
<img src="img\OdooW9.png" width="750">
</div>
 
Una vez hecho esto, Odoo empezará a crear nuestra web desde cero con los datos que le hemos proporcionado, siguiendo un estilo que previamente podremos elegir.

<div align='center'>
<img src="img\OdooW10.png" width="">
</div>

## ¿Cómo editamos nuestra página web?
Para poder editarla, tenemos que desplazarnos hacia la esquina superior izquierda de la pantalla y ahí nos aparecerá de forma clara un botón donde clickar para modificarla. Una vez pulsado, nos aparecerá una barra superior tal y como podemos ver en la imagen. En ésta, hemos de volver a cliclar sobre editar, pero ahora en la esquina superior derecha. De esta manera se nos abrirá el menú de edición a la derecha de nuestras pantallas, el cual, variará dependiendo de la zona que estemos interesados en cambiar.

Además, si deseamos instalar módulos nuevos, bastará con acceder a nuestra zona de aplicaciones en el menú desplegable superior de la izquierda, y desde ahí será  tan sencillo como integrar aquellos que deseemos.
  
<div align='center'>
<img src="img\OdooW11.png" width="">
</div>  
  
## Crea tu propio módulo de Odoo.
Para crear nuestro propio módulo desde la **terminal**, tendremos que seguir una serie de pasos:

1. Abrir la terminal en modo **admnistrador*.
2. Abrir la carpeta **server* de Odoo tal y como se muestra en la siguiente imagen.
3. Crear una carpeta. Le podremos poner el nombre que deseemos, en nuestro caso, la llamé *module_addons*.
3. Escribir el siguiente comando: 
  ```
  "C:\Program Files\Odoo 16.0.20210517\python\python.exe" odoo-bin scaffold custom_module custom_addons
  ```
Gracias a este comando, podremos crear nuestro módulo en la carpeta seleccionada.
  
<div align='center'>
<img src="img\OdooW4.png" width="">
</div>


Una vez realizado este paso, deberemos abriremos **Sublime Text** para poder añadir la carpera que creamos anteriormente en la configuración de Odoo. 
Esto, lo haremos en el archivo *odoo.conf* en *addons_path*. 
  
<div align='center'>
<img src="img\OdooW5.png" width="">
</div>

Finalmente, sólo nos quedará reiniciar los servicios de **Odoo** y **PostgreSQL** además de nuestra sesión web. De esta forma, en nuestra lista de aplicaciones ahora aparecerá nuestro nuevo módulo.
  
<div align='center'>
<img src="img\OdooW6.png" width="">
</div> 











































## Segunda parte
### ¿Cuáles son las principales características y funcionalidades del ERP de Odoo?
Entre sus muchas características y funcionalidades, lo más destacable de Odoo es que permite gestionar todo el ciclo de vida de varias aplicaciones o aspectos disponibles en una página web, como pueden ser los siguientes:

1. Gestión de ventas
2. Gestión de compras
3. Gestión de inventario
4. Gestión de proyectos
5. Gestión de recursos humanos

En todos ellos, el control en todo momento es máximo, por ejemplo: Para el quinto elemento ("Gestión de recursos humanos), Odoo proporciona herramientas para gestionar el ciclo de vida de los empleados, incluyendo la gestión de contratos, seguimiento de asistencia, registro de tiempos, gestión de nóminas y reclutamiento.

Además de todo esto, cabe resaltar la alta escalabilidad y personalización presente en todo momento en la herramienta, que puede ser adaptada en cualquier momento en cuestión de minutos.

### ¿Cómo puede el ERP de Odoo ayudar a las empresas a mejorar su eficiencia operativa?

El ERP de Odoo puede ayudar a las empresas a mejorar su eficiencia operativa de varias maneras. Aquí, citaremos las tres principales:

En primer lugar, al disponer de todas las herramientas necesarias en un mismo lugar, Odoo nos evita el tener que depender de otras  aplicaciones externas. Todo se puede hacer con Odoo.

Además, gracias a la automatización de varias de sus funciones, Odoo nos ahorra mucho tiempo y es capaz de reducir nuestros errores en una gran cantidad.

Finalmente, este ERP, también nos proporciona informes y análisis en tiempo real sobre diferentes aspectos de la empresa. Lo  que nos permite tener más datos fiables para una mejor toma de decisiones.
### ¿Qué módulos y aplicaciones adicionales ofrece Odoo para complementar su funcionalidad de ERP?
La plataforma cuenta con una amplia gama de opciones para adaptarse a diferentes necesidades empresariales y sectores industriales. Los usuarios pueden seleccionar y personalizar los módulos que mejor se ajusten a sus requerimientos, lo que permite una solución ERP altamente adaptable y escalable.

Entre sus principales módulos, podemos encontrar algunos como:

- Comercio electrónico: Permite crear y gestionar tiendas en línea. Incluye características como catálogo de productos, carrito de compras, pasarelas de pago, gestión de envíos, promociones y gestión de clientes.

- Punto de venta (POS): Permite la gestión de ventas en tiendas físicas, con funciones como ventas en efectivo, gestión de cajas registradoras, escaneo de productos, generación de recibos e integración con hardware de punto de venta.

- Forum: Permite crear y gestionar foros en línea, donde los usuarios pueden intercambiar ideas, hacer preguntas y participar en conversaciones. Ofrece categorías, publicación de mensajes, búsqueda avanzada, suscripciones y moderación. Es una herramienta colaborativa para facilitar la comunicación y el intercambio de conocimientos.
### ¿Cuáles son las ventajas de utilizar el ERP de Odoo en comparación con otros sistemas similares en el mercado?
Como bien mencionamos en apartados anteriores, las ventajas y funcionalidades de Odoo son muchas, muy variadas y además distintivas en comparación con otros sistemas similares en el mercado, como pueden ser:

1. Modularidad y personalización: Odoo se basa en un enfoque modular, lo que significa que los usuarios pueden seleccionar los módulos específicos que necesitan y personalizarlos según sus requisitos comerciales. Esto permite una implementación más flexible y adaptada a las necesidades de cada empresa.

2. Actualizaciones regulares y mejoras continuas: Odoo realiza actualizaciones regulares y ofrece mejoras continuas en su sistema. 

3. Bajo costo de implementación y licencia: En comparación con otros sistemas ERP en el mercado, Odoo tiende a tener un costo de implementación y licencia más bajo. Esto lo hace más accesible para pequeñas y medianas empresas que buscan una solución ERP integral sin incurrir en grandes gastos.

4. Comunidad activa y soporte: Odoo cuenta con una gran comunidad de usuarios y desarrolladores que contribuyen activamente con módulos, soluciones y mejoras. Lo que ayuda a resolver problemas rápidamente y mantenerse actualizado con las últimas funcionalidades.

5. Interfaz intuitiva y fácil de usar: Odoo cuenta con una interfaz de usuario sencilla y moderna, lo que facilita su uso tanto para usuarios experimentados como para aquellos que sean más  nuevos.

6. Integración completa:  Odoo proporciona una suite completa de aplicaciones empresariales totalmente integradas.

### ¿Cuáles son los requisitos técnicos para implementar el ERP de Odoo en una empresa y qué consideraciones se deben tener en cuenta antes de iniciar la implementación?
Para implementar el ERP de Odoo en una empresa, hay algunos requisitos técnicos y consideraciones importantes que deben tenerse en cuenta. 

Para implementar el ERP de Odoo en una empresa, hay algunos requisitos técnicos y consideraciones importantes que deben tenerse en cuenta. A continuación, se detallan algunos de ellos:

__Requisitos técnicos:__

- Servidor: Se requiere un servidor para alojar la instalación de Odoo. Puede ser un servidor físico o virtual.

- Sistema operativo: Odoo es compatible con varios sistemas operativos, incluyendo Linux (como Ubuntu, Debian, CentOS), Windows y macOS. Se debe seleccionar el sistema operativo adecuado y configurarlo según las recomendaciones de Odoo.

- Base de datos: Odoo utiliza una base de datos para almacenar y gestionar la información. Es compatible con diferentes bases de datos, como PostgreSQL, MySQL, SQLite y Oracle. Se debe seleccionar y configurar la base de datos adecuada para la implementación de Odoo.

- Conectividad: Se requiere una conexión a Internet estable y rápida para acceder a la instancia de Odoo y garantizar la comunicación con los usuarios y servicios externos.

__Consideraciones antes de la implementación:__

- Análisis de requerimientos: Antes de iniciar la implementación, es necesario conocer que módulos y funcionalidades de Odoo son necesarios y cómo se deben configurar.

- Personalización y configuración: Odoo es altamente personalizable y puede adaptarse a los procesos y flujos de trabajo específicos de la empresa. Es importante tener al menos una idea de como debe ser la interfaz de la web a implementar.

- Capacitación y formación: Es recomendable capacitar a los usuarios clave y al personal involucrado en la implementación de Odoo.

- Planificación de la migración de datos: En muchas ocasiones, la empresa contará con datos existentes en sistemas anteriores, por tanto, se debe planificar la migración de esos datos a Odoo.

- Soporte técnico y mantenimiento: Antes de iniciar la implementación, es importante considerar cómo se brindará el soporte técnico y el mantenimiento continuo del sistema. Esto puede implicar tener un equipo interno de soporte o contar con un proveedor externo de servicios.
## Tercera parte
### Descargar e instalar usando docker o MV el ERP Odoo.

En este caso, para la instalación de Odoo´usaré la máquina virtual cedida por la profesora en este enlace: https://bitnami.com/stack/odoo/virtual-machine. Simplemente deberemos descargar la OVA tal y como aparece en la imagen, para seguidamente, importarla desde VirtualBox.

<div align="center">
<img src="img\vm1.png" width="500">
</div>

Para este paso simplemente debemos situarnos sobre la pestaña superior _herramientas_ y seleccionar la opción de importar. Una vez ahí elegiremos el la máquina virtual que deseamos incluir dentro de nuestro VirtualBox y le daremos a importar.

<div align="center">
<img src="img\vm2.png" width="750">
</div>

### Crea el usuario y la base de datos principal.
Una vez realizado estos dos sencillos pasos, simplemente iniciaremos la máquina virtual y nos aparecerá una interfaz como la de la imagen inferior. Una vez llegado a este punto, sólo tendremos que loguearnos con el nombre de usuario _"bitnami"_ y password _"bitnami"_, tal y como se nos indica en la propia terminal. La máquina virtual ya viene configurtada para disponer desde un inicio de todo lo necesario.

<div align="center">
<img src="img\vm3.png" width="750">
</div>
<div align="center">
<img src="img\vm4.png" width="750">
</div>

Para el  siguiente paso, accederemos a la interfaz visual propia de Odoo. Para esto, necesitamos escribir en el navegador la dirección IP que nos aparece en el párrafo amarillo de la terminal y tal y como se nos indica, iniciar sesión el usuario y contraseña dados en el mismo.
<div align="center">
<img src="img\vm5.png" width="">
</div>

### Crea un sitio web.
A estas alturas, ya nos enncontramos dentro de nuestra propia sesión web de Odoo. De esta forma, tal y cómo explicamos en el primer punto de esta actividad, sólo queda repetir los pasos ya conocidos para la creación de nuerstra página web, esta vez, basada en viajes y hoteles.
<div align="center">
<img src="img\vm6.png" width="750">
</div>
<div align="center">
<img src="img\vm7.png" width="750">
</div>
<div align="center">
<img src="img\vm8.png" width="750">
</div>
<div align="center">
<img src="img\vm9.png" width="750">
</div>

En este punto del montaje de la  web, donde decidimos que tipo de aplicaciones usaremos, cabe resaltar la activación de _"Forum"_, la  cual veremos más adelante.
<div align="center">
<img src="img\vm10.png" width="750">
</div>
Así luce nuestra web sin haber modificado nada aún.
<div align="center">
<img src="img\websinmodificar11.png" width="750">
</div>

### ¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.
Para poder editarla, tenemos que desplazarnos hacia la esquina superior izquierda de la pantalla y ahí nos aparecerá de forma clara un botón donde clickar para modificarla. Una vez pulsado, nos aparecerá una barra superior tal y como podemos ver en la imagen. En ésta, hemos de volver a cliclar sobre editar, pero ahora en la esquina superior derecha. De esta manera se nos abrirá el menú  de edición a la derecha de nuestras pantallas, el cual, variará dependiendo de la zona que estemos interesados en cambiar.

<div align="center">
<img src="img\edit arriba izquierda luego va este12.png" width="750">
</div>
<div align="center">
<img src="img\web_modificada13.png" width="750">
</div>
Para este caso, he decidido aumentar el tamaño del contenedor principal, además de cambiar el fondo de éste, añadiendo un vídeo en lugar de una foto. Asimismo, también he cambiado el texto, el tamaño de la barra de navegación supeior y le he añadido un nuevo logo.

### Instala y prueba el módulo de foro (Forum) desde la sección Apps.
Como mencionábamos antes, en mi caso, no me aparecía la opción de instalar _Forum_ debido a que había sido integrado desde la creación de la aplicación. No he podido indagar en su uso debido a que el servidor que aloja mi web lleva caído desde hace varios horas. Espero que se pueda arreglar lo antes posible.
<div align="center">
<img src="img\web_modificada14.png" width="133">
<img src="img\forum15.png" width="700">
</div> 

### Desinstala el módulo de foro
Para desinstalar el módulo _Forum_, basta con entrar en la zona de _"apps"_ de nuestro Odoo, buscarla y sobre los tres puntos tal y como mostramos en imagen, seleccionar la opción de desinstalar.
<div align="center">
<img src="img\forum16.png" width="562" >
</div>

</div>