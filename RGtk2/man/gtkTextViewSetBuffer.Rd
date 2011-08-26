\alias{gtkTextViewSetBuffer}
\name{gtkTextViewSetBuffer}
\title{gtkTextViewSetBuffer}
\description{Sets \code{buffer} as the buffer being displayed by \code{text.view}. The previous
buffer displayed by the text view is unreferenced, and a reference is
added to \code{buffer}. If you owned a reference to \code{buffer} before passing it
to this function, you must remove that reference yourself; \code{\link{GtkTextView}}
will not "adopt" it.}
\usage{gtkTextViewSetBuffer(object, buffer)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkTextView}}}
\item{\verb{buffer}}{a \code{\link{GtkTextBuffer}}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
