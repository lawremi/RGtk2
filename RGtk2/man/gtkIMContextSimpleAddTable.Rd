\alias{gtkIMContextSimpleAddTable}
\name{gtkIMContextSimpleAddTable}
\title{gtkIMContextSimpleAddTable}
\description{Adds an additional table to search to the input context.
Each row of the table consists of \code{max.seq.len} key symbols
followed by two \verb{integer} interpreted as the high and low
words of a \verb{gunicode} value. Tables are searched starting
from the last added.}
\usage{gtkIMContextSimpleAddTable(object, data, max.seq.len, n.seqs)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkIMContextSimple}}}
\item{\verb{data}}{the table}
\item{\verb{max.seq.len}}{Maximum length of a sequence in the table
(cannot be greater than \verb{GTK_MAX_COMPOSE_LEN})}
\item{\verb{n.seqs}}{number of sequences in the table}
}
\details{The table must be sorted in dictionary order on the
numeric value of the key symbol fields. (Values beyond
the length of the sequence should be zero.)}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
