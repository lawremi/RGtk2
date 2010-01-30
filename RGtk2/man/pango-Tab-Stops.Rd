\alias{pango-Tab-Stops}
\alias{PangoTabArray}
\alias{PangoTabAlign}
\name{pango-Tab-Stops}
\title{Tab Stops}
\description{Structures for storing tab stops}
\section{Methods and Functions}{
\code{\link{pangoTabArrayNew}(initial.size, positions.in.pixels)}\cr
\code{\link{pangoTabArrayNewWithPositions}(size, positions.in.pixels, ...)}\cr
\code{\link{pangoTabArrayCopy}(object)}\cr
\code{\link{pangoTabArrayGetSize}(object)}\cr
\code{\link{pangoTabArrayResize}(object, new.size)}\cr
\code{\link{pangoTabArraySetTab}(object, tab.index, alignment, location)}\cr
\code{\link{pangoTabArrayGetTab}(object, tab.index)}\cr
\code{\link{pangoTabArrayGetTabs}(object)}\cr
\code{\link{pangoTabArrayGetPositionsInPixels}(object)}\cr
}
\section{Detailed Description}{Functions in this section are used to deal with \verb{\link{PangoTabArray}} objects
that can be used to set tab stop positions in a \verb{\link{PangoLayout}}.}
\section{Structures}{\describe{\item{\verb{PangoTabArray}}{
A \verb{\link{PangoTabArray}} struct contains a list
of tab stops. Each tab stop has an alignment and a position.

}}}
\section{Enums and Flags}{\describe{\item{\verb{PangoTabAlign}}{
A \code{\link{PangoTabAlign}} specifies where a tab stop appears relative to the text.

\describe{\item{\verb{left}}{the tab stop appears to the left of the text.}}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Tab-Stops.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
