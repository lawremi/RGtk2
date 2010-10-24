\alias{gtkEditableSelectRegion}
\name{gtkEditableSelectRegion}
\title{gtkEditableSelectRegion}
\description{Selects a region of text. The characters that are selected are 
those characters at positions from \code{start.pos} up to, but not 
including \code{end.pos}. If \code{end.pos} is negative, then the the 
characters selected are those characters from \code{start.pos} to 
the end of the text.}
\usage{gtkEditableSelectRegion(object, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEditable}}}
\item{\verb{start}}{start of region}
\item{\verb{end}}{end of region}
}
\details{Note that positions are specified in characters, not bytes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
