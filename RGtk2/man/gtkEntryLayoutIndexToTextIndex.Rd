\alias{gtkEntryLayoutIndexToTextIndex}
\name{gtkEntryLayoutIndexToTextIndex}
\title{gtkEntryLayoutIndexToTextIndex}
\description{Converts from a position in the entry contents (returned
by \code{\link{gtkEntryGetText}}) to a position in the
entry's \code{\link{PangoLayout}} (returned by \code{\link{gtkEntryGetLayout}},
with text retrieved via \code{\link{pangoLayoutGetText}}).}
\usage{gtkEntryLayoutIndexToTextIndex(object, layout.index)}
\arguments{
\item{\code{object}}{[\code{\link{GtkEntry}}]  a \code{\link{GtkEntry}}}
\item{\code{layout.index}}{[integer]  byte index into the entry layout text}
}
\value{[integer]  byte index into the entry contents}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
