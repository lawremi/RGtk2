\alias{gtkIconFactoryLookupDefault}
\name{gtkIconFactoryLookupDefault}
\title{gtkIconFactoryLookupDefault}
\description{Looks for an icon in the list of default icon factories.  For
display to the user, you should use \code{\link{gtkStyleLookupIconSet}} on
the \code{\link{GtkStyle}} for the widget that will display the icon, instead of
using this function directly, so that themes are taken into
account.}
\usage{gtkIconFactoryLookupDefault(stock.id)}
\arguments{\item{\verb{stock.id}}{an icon name}}
\value{[\code{\link{GtkIconSet}}] a \code{\link{GtkIconSet}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
