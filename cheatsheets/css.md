# CSS Cheatsheet

## CSS Syntax

```css
selector {
  property: value;
}
```

## CSS Selectors

| Selector | Description |
|----------|-------------|
| `*` | Seleziona tutti gli elementi |
| `element` | Seleziona tutti gli elementi specificati (es. `p`) |
| `.class` | Seleziona tutti gli elementi con una classe specifica |
| `#id` | Seleziona un elemento con un ID specifico |
| `element, element` | Seleziona più elementi (es. `h1, h2`) |
| `element element` | Seleziona un elemento discendente (es. `div p`) |
| `element > element` | Seleziona un figlio diretto (es. `div > p`) |

## CSS Box Model

```css
width: 100px;             /* Larghezza dell'elemento */
height: 100px;            /* Altezza dell'elemento */
padding: 10px;            /* Spazio interno */
margin: 10px;             /* Spazio esterno */
border: 1px solid black;  /* Bordo */
```

## CSS Positioning

```css
position: static;     /* Posizione predefinita */
position: relative;   /* Posiziona l'elemento rispetto alla sua posizione originale */
position: absolute;   /* Posiziona l'elemento rispetto al suo contenitore più vicino con position: relative */
position: fixed;      /* Posiziona l'elemento rispetto alla finestra del browser */
top: 10px;            /* Distanza dalla parte superiore */
left: 10px;           /* Distanza dalla parte sinistra */
```

## CSS Display & Flexbox

```css
display: block;            /* Elemento a blocco */
display: inline;           /* Elemento in linea */
display: flex;             /* Attiva il layout flessibile */
justify-content: center;   /* Allinea orizzontalmente */
align-items: center;       /* Allinea verticalmente */
flex-direction: row;       /* Direzione degli elementi */
```

## CSS Colors

```css
color: red;                 /* Colore del testo */
background-color: #ff0000; /* Colore di sfondo */
opacity: 0.5;              /* Opacità (da 0 a 1) */
```

## CSS Text & Fonts

```css
font-size: 16px;                 /* Dimensione del carattere */
font-weight: bold;               /* Grassetto */
font-family: Arial, sans-serif;  /* Tipo di carattere */
text-align: center;              /* Allineamento testo */
line-height: 1.5;                /* Altezza della riga */
```

## CSS Borders & Shadows

```css
border: 2px solid black;         /* Bordo solido */
border-radius: 10px;             /* Angoli arrotondati */
box-shadow: 5px 5px 10px gray;   /* Ombra */
```

## CSS Transitions & Animations

```css
transition: all 0.3s ease-in-out;  /* Transizione su tutte le proprietà */
@keyframes example {
  from { opacity: 0; }
  to { opacity: 1; }
}
```

## CSS Grid

```css
display: grid;
grid-template-columns: repeat(3, 1fr);  /* 3 colonne uguali */
grid-gap: 10px;                         /* Spazio tra gli elementi */
```

## CSS Media Queries

```css
@media (max-width: 768px) {
  body { background-color: lightgray; }
}
```