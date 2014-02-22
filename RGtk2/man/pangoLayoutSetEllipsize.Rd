\alias{pangoLayoutSetEllipsize}
\name{pangoLayoutSetEllipsize}
\title{pangoLayoutSetEllipsize}
\description{Sets the type of ellipsization being performed for \code{layout}.
Depending on the ellipsization mode \code{ellipsize} text is
removed from the start, middle, or end of text so they
fit within the width and height of layout set with
\code{\link{pangoLayoutSetWidth}} and \code{\link{pangoLayoutSetHeight}}.}
\usage{pangoLayoutSetEllipsize(object, ellipsize)}
\arguments{
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{ellipsize}}{[\code{\link{PangoEllipsizeMode}}]  the new ellipsization mode for \code{layout}}
}
\details{If the layout contains characters such as newlines that
force it to be layed out in multiple paragraphs, then whether
each paragraph is ellipsized separately or the entire layout
is ellipsized as a whole depends on the set height of the layout.
See \code{\link{pangoLayoutSetHeight}} for details.  
  Since 1.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
