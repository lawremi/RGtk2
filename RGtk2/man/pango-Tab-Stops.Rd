\alias{pango-Tab-Stops}
\alias{PangoTabArray}
\alias{PangoTabAlign}
\name{pango-Tab-Stops}
\title{Tab Stops}
\description{Structures for storing Tab Stops}
\section{Methods and Functions}{
\link{pangoTabArrayNew}(initial.size, positions.in.pixels)
\link{pangoTabArrayNewWithPositions}(size, positions.in.pixels, ...)
\link{pangoTabArrayCopy}(object)
\link{pangoTabArrayGetSize}(object)
\link{pangoTabArrayResize}(object, new.size)
\link{pangoTabArraySetTab}(object, tab.index, alignment, location)
\link{pangoTabArrayGetTab}(object, tab.index)
\link{pangoTabArrayGetTabs}(object)
\link{pangoTabArrayGetPositionsInPixels}(object)
}
\section{Structures}{\describe{\item{\code{PangoTabArray}}{
A \code{PangoTabArray} struct contains a list
of tab stops. Each tab stop has an alignment and a position.

}}}
\section{Enums and Flags}{\describe{\item{\code{enum PangoTabAlign}}{
A \code{\link{PangoTabAlign}} specifies where a tab stop appears relative to the text.

\describe{\item{\code{PANGO_TAB_LEFT (left)}}{the tab stop appears to the left of the text.}}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Tab-Stops.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
