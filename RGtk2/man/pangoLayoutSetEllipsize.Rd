\alias{pangoLayoutSetEllipsize}
\name{pangoLayoutSetEllipsize}
\title{pangoLayoutSetEllipsize}
\description{Sets the type of ellipsization being performed for \code{layout}.
Depending on the ellipsization mode \code{ellipsize} text is
removed from the start, middle, or end of lines so they
fit within the width of layout set with \code{\link{pangoLayoutSetWidth}}.}
\usage{pangoLayoutSetEllipsize(object, ellipsize)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{ellipsize}}{[\code{\link{PangoEllipsizeMode}}]  the new ellipsization mode for \code{layout}}
}
\details{If the layout contains characters such as newlines that
force it to be layed out in multiple lines, then each line
is ellipsized separately.  

  Since  1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
