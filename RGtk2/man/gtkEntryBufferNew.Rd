\alias{gtkEntryBufferNew}
\name{gtkEntryBufferNew}
\title{gtkEntryBufferNew}
\description{Create a new GtkEntryBuffer object.}
\usage{gtkEntryBufferNew(initial.chars = NULL, n.initial.chars = -1)}
\arguments{
\item{\verb{initial.chars}}{initial buffer text, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{n.initial.chars}}{number of characters in \code{initial.chars}, or -1}
}
\details{Optionally, specify initial text to set in the buffer.
  Since 2.18}
\value{[\code{\link{GtkEntryBuffer}}] A new GtkEntryBuffer object.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
