\alias{gtkToolButtonSetLabelWidget}
\name{gtkToolButtonSetLabelWidget}
\title{gtkToolButtonSetLabelWidget}
\description{Sets \code{label.widget} as the widget that will be used as the label
for \code{button}. If \code{label.widget} is \code{NULL} the "label" property is used
as label. If "label" is also \code{NULL}, the label in the stock item
determined by the "stock_id" property is used as label. If
"stock_id" is also \code{NULL}, \code{button} does not have a label.}
\usage{gtkToolButtonSetLabelWidget(object, label.widget = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolButton}}}
\item{\verb{label.widget}}{the widget used as label, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
