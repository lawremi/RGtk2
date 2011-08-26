\alias{gtkEntryGetLayout}
\name{gtkEntryGetLayout}
\title{gtkEntryGetLayout}
\description{Gets the \code{\link{PangoLayout}} used to display the entry.
The layout is useful to e.g. convert text positions to
pixel positions, in combination with \code{\link{gtkEntryGetLayoutOffsets}}.}
\usage{gtkEntryGetLayout(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{Keep in mind that the layout text may contain a preedit string, so
\code{\link{gtkEntryLayoutIndexToTextIndex}} and
\code{\link{gtkEntryTextIndexToLayoutIndex}} are needed to convert byte
indices in the layout to byte indices in the entry contents.}
\value{[\code{\link{PangoLayout}}] the \code{\link{PangoLayout}} for this entry. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
