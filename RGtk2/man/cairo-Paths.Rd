\alias{cairo-Paths}
\alias{cairo_path_t}
\alias{cairo_path_data_type_t}
\name{cairo-Paths}
\title{Paths}
\description{Creating paths and manipulating path data}
\usage{
\link{cairoCopyPath}(cr)
\link{cairoCopyPathFlat}(cr)
\link{cairoAppendPath}(cr, path)
\link{cairoGetCurrentPoint}(cr, x, y)
\link{cairoNewPath}(cr)
\link{cairoClosePath}(cr)
\link{cairoArc}(cr, xc, yc, radius, angle1, angle2)
\link{cairoArcNegative}(cr, xc, yc, radius, angle1, angle2)
\link{cairoCurveTo}(cr, x1, y1, x2, y2, x3, y3)
\link{cairoLineTo}(cr, x, y)
\link{cairoMoveTo}(cr, x, y)
\link{cairoRectangle}(cr, x, y, width, height)
\link{cairoGlyphPath}(cr, glyphs)
\link{cairoTextPath}(cr, utf8)
\link{cairoRelCurveTo}(cr, dx1, dy1, dx2, dy2, dx3, dy3)
\link{cairoRelLineTo}(cr, dx, dy)
\link{cairoRelMoveTo}(cr, dx, dy)
}
\section{Structures}{\describe{\item{\code{cairo_path_t}}{
A data structure for holding a path. This data structure serves as
the return value for \code{cairoCopyPathData()} and
\code{cairoCopyPathDataFlat()} as well the input value for
\code{\link{cairoAppendPath}}.
  
See \code{\link{cairo_path_data_t}} for hints on how to iterate over the
actual data within the path.
  
The num_data member gives the number of elements in the data
array. This number is larger than the number of independent path
portions (defined in \code{\link{cairo_path_data_type_t}}), since the data
includes both headers and coordinates for each portion.  
\strong{\code{cairo_path_t} is a \link{transparent-type}.}

\describe{
\item{\code{status}}{[\code{\link{cairo_status_t}}]  the current error status}
\item{\code{data}}{[\code{\link{cairo_path_data_t}}]  the elements in the path}
\item{\code{numData}}{[integer]  the number of elements in the data list}
}

}}}
\section{Enums and Flags}{\describe{\item{\code{enum cairo_path_data_type_t}}{


\describe{
\item{\code{CAIRO_PATH_MOVE_TO (move-to)}}{\emph{undocumented
}}
\item{\code{CAIRO_PATH_LINE_TO (line-to)}}{\emph{undocumented
}}
\item{\code{CAIRO_PATH_CURVE_TO (curve-to)}}{\emph{undocumented
}}
\item{\code{CAIRO_PATH_CLOSE_PATH (close-path)}}{\emph{undocumented
}}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/cairo/cairo-Paths.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
