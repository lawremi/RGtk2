\alias{gtkEntrySelectRegion}
\name{gtkEntrySelectRegion}
\title{gtkEntrySelectRegion}
\description{
Selects a region of text. The characters that are selected are 
those characters at positions from \code{start.pos} up to, but not 
including \code{end.pos}. If \code{end.pos} is negative, then the the characters 
selected will be those characters from \code{start.pos} to the end of 
the text.
\strong{WARNING: \code{gtk_entry_select_region} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkEditableSelectRegion}} instead.}
}
\usage{gtkEntrySelectRegion(object, start, end)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{start}}{the starting position}
\item{\verb{end}}{the end position}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
