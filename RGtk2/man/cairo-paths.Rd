\alias{cairo-paths}
\alias{CairoPath}
\alias{CairoPathData}
\alias{CairoPathDataType}
\name{cairo-paths}
\title{Paths}
\description{Creating paths and manipulating path data}
\section{Methods and Functions}{
\code{\link{cairoCopyPath}(cr)}\cr
\code{\link{cairoCopyPathFlat}(cr)}\cr
\code{\link{cairoAppendPath}(cr, path)}\cr
\code{\link{cairoHasCurrentPoint}(cr)}\cr
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
\code{\link{cairoPathExtents}(cr)}\cr
}
\section{Detailed Description}{Paths are the most basic drawing tools and are primarily used to implicitly
generate simple masks.}
\section{Structures}{\describe{
\item{\verb{CairoPath}}{
A data structure for holding a path. This data structure serves as
the return value for \code{\link{cairoCopyPath}} and
\code{\link{cairoCopyPathFlat}} as well the input value for
\code{\link{cairoAppendPath}}.
  
See \code{\link{CairoPathData}} for hints on how to iterate over the
actual data within the path.
  
The num_data member gives the number of elements in the data
array. This number is larger than the number of independent path
portions (defined in \code{\link{CairoPathDataType}}), since the data
includes both headers and coordinates for each portion.  
\strong{\verb{CairoPath} is a \link{transparent-type}.}

\describe{
\item{\verb{status}}{[\code{\link{CairoStatus}}]  the current error status}
\item{\verb{data}}{[\code{\link{CairoPathData}}]  the elements in the path}
\item{\verb{numData}}{[integer]  the number of elements in the data list}
}

}
\item{\verb{CairoPathData}}{
\code{\link{CairoPathData}} is used to represent the path data inside a
\code{\link{CairoPath}}.
  
The data structure is designed to try to balance the demands of
efficiency and ease-of-use. A path is represented as a list of
\code{\link{CairoPathData}}, which is a union of headers and points.
  
Each portion of the path is represented by one or more elements in
the list, (one header followed by 0 or more points). The length
value of the header is the number of list elements for the current
portion including the header, (ie. length == 1 + # of points), and
where the number of points for each element type is as follows:
  \preformatted{    \%CAIRO_PATH_MOVE_TO:     1 point
    \%CAIRO_PATH_LINE_TO:     1 point
    \%CAIRO_PATH_CURVE_TO:    3 points
    \%CAIRO_PATH_CLOSE_PATH:  0 points
}  
The semantics and ordering of the coordinate values are consistent
with \code{\link{cairoMoveTo}}, \code{\link{cairoLineTo}}, \code{\link{cairoCurveTo}}, and
\code{\link{cairoClosePath}}.
  
Here is sample code for iterating through a \verb{""}
  \preformatted{
path <- cr$copyPath()$data

for (data in path) {
  switch(CairoPathDataType[attr(data, "type") + 1L],
         "move-to" = do_move_to_things(data[1], data[2]),
         "line-to" = do_line_to_things(data[1], data[2]),
         "curve-to" =  do_curve_to_things(data[1], data[2], data[3], data[4],
           data[5], data[6]),
         "close-path" = do_close_path_things())
}
}  
As of cairo 1.4, cairo does not mind if there are more elements in
a portion of the path than needed.  Such elements can be used by
users of the cairo API to hold extra values in the path data
structure.  For this reason, it is recommended that applications
always use \code{data->header.length} to
iterate over the path data, instead of hardcoding the number of
elements for each element type.  
\strong{\verb{CairoPathData} is a \link{transparent-type}.}

}
}}
\section{Enums and Flags}{\describe{\item{\verb{CairoPathDataType}}{
\code{\link{CairoPathData}} is used to describe the type of one portion
of a path when represented as a \code{\link{CairoPath}}.
See \code{\link{CairoPathData}} for details.  

\describe{
\item{\verb{move-to}}{ A move-to operation}
\item{\verb{line-to}}{ A line-to operation}
\item{\verb{curve-to}}{ A curve-to operation}
\item{\verb{close-path}}{ A close-path operation}
}

}}}
\references{\url{https://www.cairographics.org/manual/cairo-Paths.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
