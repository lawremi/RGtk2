\alias{gtkFontSelectionSetFontName}
\name{gtkFontSelectionSetFontName}
\title{gtkFontSelectionSetFontName}
\description{Sets the currently-selected font. }
\usage{gtkFontSelectionSetFontName(object, fontname)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkFontSelection}}}
\item{\verb{fontname}}{a font name like "Helvetica 12" or "Times Bold 18"}
}
\details{Note that the \code{fontsel} needs to know the screen in which it will appear 
for this to work; this can be guaranteed by simply making sure that the 
\code{fontsel} is inserted in a toplevel window before you call this function.}
\value{[logical] \code{TRUE} if the font could be set successfully; \code{FALSE} if no
such font exists or if the \code{fontsel} doesn't belong to a particular
screen yet.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
