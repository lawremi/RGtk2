\alias{gtkStyleLookupIconSet}
\name{gtkStyleLookupIconSet}
\title{gtkStyleLookupIconSet}
\description{Looks up \code{stock.id} in the icon factories associated with \code{style}
and the default icon factory, returning an icon set if found,
otherwise \code{NULL}.}
\usage{gtkStyleLookupIconSet(object, stock.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{stock.id}}{an icon name}
}
\value{[\code{\link{GtkIconSet}}] icon set of \code{stock.id}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
