\alias{gtkToolButtonSetLabel}
\name{gtkToolButtonSetLabel}
\title{gtkToolButtonSetLabel}
\description{Sets \code{label} as the label used for the tool button. The "label" property
only has an effect if not overridden by a non-\code{NULL} "label_widget" property.
If both the "label_widget" and "label" properties are \code{NULL}, the label
is determined by the "stock_id" property. If the "stock_id" property is also
\code{NULL}, \code{button} will not have a label.}
\usage{gtkToolButtonSetLabel(object, label = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolButton}}}
\item{\verb{label}}{a string that will be used as label, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
