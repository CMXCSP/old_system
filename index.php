<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/png" href="./imagen/favicons.png" />
		<title>Inicio CSP</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

<header>
    <figure>
      <img src="./imagen/2018_cdmx.svg" alt="logo CDMX 2018" height="80">
      <figcaption>CDMX</figcaption>
    </figure>
    <figure>
      <img src="./imagen/cejur.jpg" alt="logo CEJUR 2018" height="80">
      <figcaption>CEJUR</figcaption>
    </figure> 
</header>

<main>
  <h1><a href="./bitacora/">Bitacora Electronica</a></h1>

  <h3>
  <a href="ftp://10.4.3.122/">Archivo de Dictamenes e informes</a>
  Requiere contrasena
  </h3>

  <figure>
  <a href="./pruebas/calendario/index.php?formulario=fcalen&nomcampo=fecha1">
  <img src="./imagen/cal.jpg" width="50"/>
  <figcaption>Calendario</figcaption>
  </a>
  </figure>

  <section>
  <a href="ftp://10.4.3.122/archivos/20190607_lcccdmx.pdf" title="Ley de Cultura Civica" target="_blank">Ley de Cultura Civica</a>
  <a href="ftp://10.4.3.122/archivos/rlccdf.pdf" title="Reglamento de la Ley de Cultura Civica" target="_blank">Reglamento de la Ley CC</a>
  <a href="ftp://10.4.3.122/archivos/reglamentotracdmx.pdf" title="Nuevo Reglamento de Tránsito Metropolitano" target="_blank">Reglamento de Tránsito Metropolitano</a>
  <a href="ftp://10.4.3.122/archivos/protocolo.pdf" title="Gaceta publicada" target="_blank">Protocolo de Actuacion de PTT</a>
  <a href="/connection/consultasql.php">
  <figure>
  <img src="./imagen/dsql.gif" width="112"/>
  <figcaption>Consultas SQL a CSP</figcaption>
  </figure>
  </section>


  <p>La informacion esta almacenada en el servidor de CSP.</p>

  <figure>
  <a href="./ayuda/">
  <img src="./imagen/salvavida.jpg" width="75"/>
  <figcaption>Ayuda ? </figcaption>
  </a>
  </figure>
</main>

<footer>
  <p>Favor de verificar que el servidor este encendido.</p>

  <figure>
  <img src="./imagen/earmasdf.jpg" alt="Escudo de Armas" width="58"/>
  </figure>

  <address>
  serviciospericialesdejc@yahoo.com
  <?php echo 'CSPS ', $_SERVER['SERVER_NAME']; ?><br />
  </address>

  <figure>
  <img src="./imagen/jc.jpg" alt="Justicia Civica" width="68"/>
  </figure>
</footer>

</body>
</html>