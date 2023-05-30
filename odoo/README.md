<div align="justify">

# Sistema de gestión empresarial: Odoo

## Índice
- [¿Qué es Odoo?](#¿qué-es-odoo)

### Primera parte:
- [Descarga e instala Odoo.](#paso1windows)
- [Crea el usuario y la base de datos principal.](#paso2windows)
- [Crea un sitio web.](#paso3windows)
- [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#paso4windows)
- [Instala y prueba otro módulo que consideres interesante.](#paso5windows)
- [Crea tu propio módulo de Odoo.](#paso6windows)

### Segunda parte:
- [¿Cuáles son las principales características y funcionalidades del ERP de Odoo?](#caracteristicas)
- [¿Cómo puede el ERP de Odoo ayudar a las empresas a mejorar su eficiencia operativa?](#ERP)
- [¿Qué módulos y aplicaciones adicionales ofrece Odoo para complementar su funcionalidad de ERP?](#módulos)
- [¿Cuáles son las ventajas de utilizar el ERP de Odoo en comparación con otros sistemas similares en el mercado?](#ventajas)
- [¿Cuáles son los requisitos técnicos para implementar el ERP de Odoo en una empresa y qué consideraciones se deben tener en cuenta antes de iniciar la implementación?](#requisitos)

### Tercera parte:
- [Descargar e instalar usando docker o MV el ERP Odoo.](#paso1mv)
- [Crea el usuario y la base de datos principal.](#paso2mv)
- [Crea un sitio web.](#paso3mv)
- [¿Cómo editamos nuestra página web? Edítala y diséñala a tu gusto.](#paso4mv)
- [Instala y prueba el módulo de foro (Forum) desde la sección Apps.](#paso5mv)
- [Desinstala el módulo de foro.](#paso6mv)
- [Instala y prueba otro módulo que consideres interesante.](#paso7mv)

## ¿Qué es Odoo?
Odoo es un sistema integrado de gestión empresarial (ERP) de código abierto y una plataforma de aplicaciones empresariales. Ofrece una amplia gama de módulos y funcionalidades que abarcan diversas áreas de una empresa, como ventas, compras, inventario, fabricación, contabilidad, recursos humanos y más.

Una de las características distintivas de Odoo es su enfoque modular, lo que significa que puedes elegir los módulos específicos que necesitas para adaptar el sistema a los requerimientos de tu empresa. Además, ofrece una gran flexibilidad y capacidad de personalización, lo que te permite ajustar el sistema según tus necesidades empresariales particulares. El sistema permite automatizar procesos, gestionar inventarios, realizar seguimiento de ventas, administrar proyectos, generar informes financieros, controlar la producción, gestionar el servicio al cliente y mucho más.

<div align="center">
<img src="img\odoo-logo.png" width="900">
</div>

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