\alias{gtkStyleGetStyleProperty}
\name{gtkStyleGetStyleProperty}
\title{gtkStyleGetStyleProperty}
\description{Queries the value of a style property corresponding to a
widget class is in the given style.}
\usage{gtkStyleGetStyleProperty(object, widget.type, property.name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkStyle}}}
\item{\verb{widget.type}}{the \code{\link{GType}} of a descendant of \code{\link{GtkWidget}}}
\item{\verb{property.name}}{the name of the style property to get}
}
\details{Since 2.16}
\value{
A list containing the following elements:
\item{\verb{value}}{a \verb{R object} where the value of the property being
queried will be stored}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
