\alias{pangoLayoutIsWrapped}
\name{pangoLayoutIsWrapped}
\title{pangoLayoutIsWrapped}
\description{Queries whether the layout had to wrap any paragraphs.}
\usage{pangoLayoutIsWrapped(object)}
\arguments{\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}}
\details{This returns \code{TRUE} if a positive width is set on \code{layout},
ellipsization mode of \code{layout} is set to \code{PANGO_ELLIPSIZE_NONE},
and there are paragraphs exceeding the layout width that have
to be wrapped.  
  Since 1.16}
\value{[logical] \code{TRUE} if any paragraphs had to be wrapped, \code{FALSE}
otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
