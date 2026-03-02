# TeX/LaTeX Cheatsheet

## TeX/LaTeX Syntax

```latex
\documentclass{article}                  % Definisce la classe del documento (articolo, libro, etc.)
\usepackage{package_name}                % Carica un pacchetto (es. graphics, amsmath)
\begin{document}                         % Inizio del contenuto del documento
\end{document}                           % Fine del contenuto del documento
\title{Title}                            % Imposta il titolo del documento
\author{Author Name}                     % Imposta l'autore del documento
\date{\today}                            % Imposta la data (es. \today per la data corrente)
\maketitle                               % Mostra il titolo, autore e data
```

## TeX Formatting

```latex
\section{Section Title}                  % Crea una sezione
\subsection{Subsection Title}            % Crea una sottosezione
\subsubsection{Subsubsection Title}      % Crea una sottosottosezione
\paragraph{Paragraph Title}              % Crea un paragrafo
\textbf{Bold Text}                       % Testo in grassetto
\textit{Italic Text}                     % Testo in corsivo
\underline{Underlined Text}              % Testo sottolineato
\emph{Emphasized Text}                   % Testo enfatizzato (corsivo di default)
\texttt{Monospaced Text}                 % Testo in stile monospaziato
```

## TeX Lists

```latex
\begin{itemize}                          % Inizio lista non numerata
  \item Item 1                           % Aggiungi un elemento alla lista
  \item Item 2                           % Aggiungi un altro elemento
\end{itemize}                            % Fine lista

\begin{enumerate}                        % Inizio lista numerata
  \item First item                       % Aggiungi un elemento numerato
  \item Second item                      % Aggiungi un altro elemento numerato
\end{enumerate}                          % Fine lista
```

## TeX Mathematics

```latex
\begin{equation}                         % Inizio ambiente di equazione numerata
  E = mc^2                                % Equazione
\end{equation}                           % Fine equazione

\[
  E = mc^2                                % Equazione non numerata (display math)
\]                                        % Fine equazione

\frac{a}{b}                              % Frazione (a/b)
\sum_{i=1}^{n} i                         % Somma (sommatoria)
\int_{a}^{b} f(x) \, dx                  % Integrale definito
```

## TeX Tables

```latex
\begin{tabular}{|c|c|c|}                  % Inizio tabella con 3 colonne centrato
  \hline                                  % Linea orizzontale
  Header 1 & Header 2 & Header 3 \\        % Intestazioni di colonna
  \hline                                  % Linea orizzontale
  Data 1 & Data 2 & Data 3 \\              % Dati della tabella
  \hline                                  % Linea orizzontale
\end{tabular}                            % Fine tabella
```

## TeX Figures

```latex
\begin{figure}[h]                         % Inizio figura, posizionamento suggerito (here)
  \centering                              % Centra la figura
  \includegraphics[width=\linewidth]{image.png}  % Include una figura (deve essere un file immagine)
  \caption{Figura 1: Descrizione della figura} % Didascalia della figura
  \label{fig:label}                       % Etichetta per il riferimento
\end{figure}                             % Fine figura
```

## TeX References

```latex
\label{sec:introduction}                  % Aggiunge un'etichetta per una sezione
\ref{sec:introduction}                    % Riferimento incrociato alla sezione (mostra numero)
\cite{key}                                % Citazione da bibliografia
```

## TeX Document Structure

```latex
\tableofcontents                         % Crea un indice automatico
\listoffigures                           % Crea una lista di figure
\listoftables                            % Crea una lista di tabelle
```

## TeX Customization

```latex
\newcommand{\name}[args]{definition}      % Definisce un nuovo comando
\renewcommand{\name}[args]{definition}    % Rinnova un comando esistente
```