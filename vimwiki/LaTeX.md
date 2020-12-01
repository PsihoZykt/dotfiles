Ltex document structure:

\documentclass{article}
Identifies, how our document will be compiled (article in this case)

#Latex document structure

##\author{My name}
identify your name below document title

##\title{My document name}
identify document title

##\begin{document}
##\end{document}
Borders of our document

# Content of begin/end

##\maketitle
Prints all meta-information (author, title), and make title from this info

## \section{section name}
Print enumarated headers of your documents

##\begin{enumarate\itemize}
##\end{enumarate\iteize}
Defines a enumarated\unumarated list respectively

##\item NameOfItem
Defines an item of list

##label{label name}
##\ref{label name}
Label identifies any section, or item, and we can refer to this label via \ref. So, \ref will be replaces with a number of a section or item

# Text decoration

##Bold
\textbf{Text}

##Italic
\textit{Text}

##Emphasize
\emph{Text}
Emphasize can look exactly like a italic, but it's not guaranteed. Emphasized text can look totally different.

##Underline
\underline{Text}

##Quotes
``  Text ''
Note that you should use different quotes for beginning and engind of the string
