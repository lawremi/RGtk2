\alias{gtkFontSelectionSetFontName}
\name{gtkFontSelectionSetFontName}
\title{gtkFontSelectionSetFontName}
\description{Sets the currently-selected font.  Note that the \code{fontsel} needs to know the
screen in which it will appear for this to work; this can be guaranteed by
simply making sure that the \code{fontsel} is inserted in a toplevel window before
you call this function.}
\usage{gtkFontSelectionSetFontName(object, fontname)}
\arguments{
\item{\code{object}}{[\code{\link{GtkFontSelection}}]  a \code{\link{GtkFontSelection}}}
\item{\code{fontname}}{[character]  a font name like "Helvetica 12" or "Times Bold 18"}
}
\value{[logical]  \code{TRUE} if the font could be set successfully; \code{FALSE} if no such
font exists or if the \code{fontsel} doesn't belong to a particular screen yet.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
