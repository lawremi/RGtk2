\alias{gtkTextViewGetBuffer}
\name{gtkTextViewGetBuffer}
\title{gtkTextViewGetBuffer}
\description{Returns the \code{\link{GtkTextBuffer}} being displayed by this text view.
The reference count on the buffer is not incremented; the caller
of this function won't own a new reference.}
\usage{gtkTextViewGetBuffer(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextView}}}}
\value{[\code{\link{GtkTextBuffer}}] a \code{\link{GtkTextBuffer}}. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
