\alias{pangoLayoutGetEllipsize}
\name{pangoLayoutGetEllipsize}
\title{pangoLayoutGetEllipsize}
\description{Gets the type of ellipsization being performed for \code{layout}.
See \code{\link{pangoLayoutSetEllipsize}}}
\usage{pangoLayoutGetEllipsize(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{  Since 1.6}
\value{[\code{\link{PangoEllipsizeMode}}]  the current ellipsization mode for \code{layout}.
Use \code{\link{pangoLayoutIsEllipsized}} to query whether any paragraphs
were actually ellipsized.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
