\alias{gtkEntrySetWidthChars}
\name{gtkEntrySetWidthChars}
\title{gtkEntrySetWidthChars}
\description{Changes the size request of the entry to be about the right size
for \code{n.chars} characters. Note that it changes the size
\emph{request}, the size can still be affected by
how you pack the widget into containers. If \code{n.chars} is -1, the
size reverts to the default entry size.}
\usage{gtkEntrySetWidthChars(object, n.chars)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{n.chars}}{width in chars}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
