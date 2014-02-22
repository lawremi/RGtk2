\alias{pangoLayoutIsEllipsized}
\name{pangoLayoutIsEllipsized}
\title{pangoLayoutIsEllipsized}
\description{Queries whether the layout had to ellipsize any paragraphs.}
\usage{pangoLayoutIsEllipsized(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{This returns \code{TRUE} if the ellipsization mode for \code{layout}
is not \code{PANGO_ELLIPSIZE_NONE}, a positive width is set on \code{layout},
and there are paragraphs exceeding that width that have to be
ellipsized.  
  Since 1.16}
\value{[logical] \code{TRUE} if any paragraphs had to be ellipsized, \code{FALSE}
otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
