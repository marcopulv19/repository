# HTML Cheatsheet

## HTML Document Structure

```html
<!DOCTYPE html>                       <!-- Definisce il tipo di documento -->
<html>                                <!-- Contiene tutto il codice HTML -->
<head>                                <!-- Contiene metadati e collegamenti esterni -->
<title>Title</title>                  <!-- Definisce il titolo della pagina -->
</head>
<body>                                <!-- Contiene il contenuto visibile della pagina -->

</body>
</html>
```

## HTML Text Formatting

```html
<h1>Heading 1</h1>                    <!-- Titolo principale (h1-h6) -->
<p>Paragraph</p>                      <!-- Paragrafo di testo -->
<strong>Bold</strong>                 <!-- Testo in grassetto -->
<em>Italic</em>                       <!-- Testo in corsivo -->
<u>Underlined</u>                     <!-- Testo sottolineato -->
<sup>Superscript</sup>                <!-- Apice -->
<sub>Subscript</sub>                  <!-- Pedice -->
```

## HTML Links & Images

```html
<a href="https://example.com">Link</a>          <!-- Crea un collegamento ipertestuale -->
<img src="image.jpg" alt="Description">        <!-- Inserisce un'immagine -->
```

## HTML Lists

```html
<!-- Lista non ordinata -->
<ul>
  <li>Item 1</li>                     <!-- Elemento della lista -->
  <li>Item 2</li>
</ul>

<!-- Lista ordinata -->
<ol>
  <li>First item</li>
  <li>Second item</li>
</ol>
```

## HTML Tables

```html
<table>                               <!-- Inizio di una tabella -->
  <tr>                                <!-- Inizio di una riga -->
    <th>Header 1</th>                 <!-- Intestazione della colonna -->
    <th>Header 2</th>
  </tr>
  <tr>
    <td>Data 1</td>                   <!-- Dato della tabella -->
    <td>Data 2</td>
  </tr>
</table>
```

## HTML Forms

```html
<form action="submit.php" method="post">    <!-- Inizio del form -->
  <label for="name">Name:</label>
  <input type="text" id="name" name="name"> <!-- Campo di input testo -->
  <input type="submit" value="Submit">      <!-- Pulsante di invio -->
</form>
```

## HTML Multimedia

```html
<video controls>
  <source src="video.mp4" type="video/mp4">
</video>

<audio controls>
  <source src="audio.mp3" type="audio/mpeg">
</audio>
```

## HTML Semantic Elements

```html
<header>                              <!-- Intestazione della pagina -->
<nav>                                 <!-- Navigazione -->
<section>                             <!-- Sezione di contenuto -->
<article>                             <!-- Articolo indipendente -->
<footer>                              <!-- Piè di pagina -->
```

## HTML Meta & SEO

```html
<meta charset="UTF-8">                                                  <!-- Definisce la codifica caratteri -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">  <!-- Responsive design -->
<meta name="description" content="Page description">                    <!-- SEO description -->
<meta name="keywords" content="HTML, Web Development">                  <!-- Parole chiave SEO -->
```