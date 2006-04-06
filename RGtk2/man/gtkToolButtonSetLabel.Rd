\alias{gtkToolButtonSetLabel}
\name{gtkToolButtonSetLabel}
\title{gtkToolButtonSetLabel}
\description{Sets \code{label} as the label used for the tool button. The "label" property
only has an effect if not overridden by a non-\code{NULL} "label\_widget" property.
If both the "label\_widget" and "label" properties are \code{NULL}, the label
is determined by the "stock\_id" property. If the "stock\_id" property is also
\code{NULL}, \code{button} will not have a label.}
\usage{gtkToolButtonSetLabel(object, label = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolButton}}]  a \code{\link{GtkToolButton}}}
\item{\code{label}}{[character]  a string that will be used as label, or \code{NULL}.}
}
\details{  Since  2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
