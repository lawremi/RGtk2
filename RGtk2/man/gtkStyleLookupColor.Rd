\alias{gtkStyleLookupColor}
\name{gtkStyleLookupColor}
\title{gtkStyleLookupColor}
\description{Looks up \code{color.name} in the style's logical color mappings,
filling in \code{color} and returning \code{TRUE} if found, otherwise
returning \code{FALSE}. Do not cache the found mapping, because
it depends on the \code{\link{GtkStyle}} and might change when a theme
switch occurs.}
\usage{gtkStyleLookupColor(object, color.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{color.name}}{the name of the logical color to look up}
}
\details{Since 2.10}
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if the mapping was found.}
\item{\verb{color}}{the \code{\link{GdkColor}} to fill in}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
