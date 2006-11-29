\alias{cairo-Paths}
\alias{CairoPath}
\alias{CairoPathDataType}
\name{cairo-Paths}
\title{Paths}
\description{Creating paths and manipulating path data}
\section{Methods and Functions}{
\code{\link{cairoCopyPath}(cr)}\cr
\code{\link{cairoCopyPathFlat}(cr)}\cr
\code{\link{cairoAppendPath}(cr, path)}\cr
\code{\link{cairoGetCurrentPoint}(cr, x, y)}\cr
\code{\link{cairoNewPath}(cr)}\cr
\code{\link{cairoNewSubPath}(cr)}\cr
\code{\link{cairoClosePath}(cr)}\cr
\code{\link{cairoArc}(cr, xc, yc, radius, angle1, angle2)}\cr
\code{\link{cairoArcNegative}(cr, xc, yc, radius, angle1, angle2)}\cr
\code{\link{cairoCurveTo}(cr, x1, y1, x2, y2, x3, y3)}\cr
\code{\link{cairoLineTo}(cr, x, y)}\cr
\code{\link{cairoMoveTo}(cr, x, y)}\cr
\code{\link{cairoRectangle}(cr, x, y, width, height)}\cr
\code{\link{cairoGlyphPath}(cr, glyphs)}\cr
\code{\link{cairoTextPath}(cr, utf8)}\cr
\code{\link{cairoRelCurveTo}(cr, dx1, dy1, dx2, dy2, dx3, dy3)}\cr
\code{\link{cairoRelLineTo}(cr, dx, dy)}\cr
\code{\link{cairoRelMoveTo}(cr, dx, dy)}\cr
}
\section{Structures}{\describe{\item{\code{CairoPath}}{
A data structure for holding a path. This data structure serves as
the return value for \code{\link{cairoCopyPath}} and
\code{\link{cairoCopyPathFlat}} as well the input value for
\code{\link{cairoAppendPath}}.
  
See \code{\link{CairoPathData}} for hints on how to iterate over the
actual data within the path.
  
The num\_data member gives the number of elements in the data
array. This number is larger than the number of independent path
portions (defined in \code{\link{CairoPathDataType}}), since the data
includes both headers and coordinates for each portion.  
\strong{\code{CairoPath} is a \link{transparent-type}.}

\describe{
\item{\code{status}}{[\code{\link{CairoStatus}}]  the current error status}
\item{\code{data}}{[\code{\link{CairoPathData}}]  the elements in the path}
\item{\code{numData}}{[integer]  the number of elements in the data list}
}

}}}
\section{Enums and Flags}{\describe{\item{\code{CairoPathDataType}}{
\emph{undocumented
}

\describe{
\item{\code{move-to}}{\emph{undocumented
}}
\item{\code{line-to}}{\emph{undocumented
}}
\item{\code{curve-to}}{\emph{undocumented
}}
\item{\code{close-path}}{\emph{undocumented
}}
}

}}}
\references{\url{http://www.cairographics.org/manual/cairo-Paths.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
