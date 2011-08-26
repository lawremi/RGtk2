\alias{gtkEntryGetLayoutOffsets}
\name{gtkEntryGetLayoutOffsets}
\title{gtkEntryGetLayoutOffsets}
\description{Obtains the position of the \code{\link{PangoLayout}} used to render text
in the entry, in widget coordinates. Useful if you want to line
up the text in an entry with some other text, e.g. when using the
entry to implement editable cells in a sheet widget.}
\usage{gtkEntryGetLayoutOffsets(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{Also useful to convert mouse events into coordinates inside the
\code{\link{PangoLayout}}, e.g. to take some action if some part of the entry text
is clicked.
  
Note that as the user scrolls around in the entry the offsets will
change; you'll need to connect to the "notify::scroll-offset"
signal to track this. Remember when using the \code{\link{PangoLayout}}
functions you need to convert to and from pixels using
\code{pangoPixels()} or \verb{PANGO_SCALE}.
  
Keep in mind that the layout text may contain a preedit string, so
\code{\link{gtkEntryLayoutIndexToTextIndex}} and
\code{\link{gtkEntryTextIndexToLayoutIndex}} are needed to convert byte
indices in the layout to byte indices in the entry contents.}
\value{
A list containing the following elements:
\item{\verb{x}}{location to store X offset of layout, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{y}}{location to store Y offset of layout, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
