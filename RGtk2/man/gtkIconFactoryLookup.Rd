\alias{gtkIconFactoryLookup}
\name{gtkIconFactoryLookup}
\title{gtkIconFactoryLookup}
\description{Looks up \code{stock.id} in the icon factory, returning an icon set
if found, otherwise \code{NULL}. For display to the user, you should
use \code{\link{gtkStyleLookupIconSet}} on the \code{\link{GtkStyle}} for the
widget that will display the icon, instead of using this
function directly, so that themes are taken into account.}
\usage{gtkIconFactoryLookup(object, stock.id)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconFactory}}}
\item{\verb{stock.id}}{an icon name}
}
\value{[\code{\link{GtkIconSet}}] icon set of \code{stock.id}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
