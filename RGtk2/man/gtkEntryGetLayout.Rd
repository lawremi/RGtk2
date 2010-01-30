\alias{gtkEntryGetLayout}
\name{gtkEntryGetLayout}
\title{gtkEntryGetLayout}
\description{Gets the \verb{\link{PangoLayout}} used to display the entry.
The layout is useful to e.g. convert text positions to
pixel positions, in combination with \code{\link{gtkEntryGetLayoutOffsets}}.}
\usage{gtkEntryGetLayout(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkEntry}}]  a \verb{\link{GtkEntry}}}}
\details{Keep in mind that the layout text may contain a preedit string, so
\code{\link{gtkEntryLayoutIndexToTextIndex}} and
\code{\link{gtkEntryTextIndexToLayoutIndex}} are needed to convert byte
indices in the layout to byte indices in the entry contents.  }
\value{[\verb{\link{PangoLayout}}]  the \verb{\link{PangoLayout}} for this entry}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
