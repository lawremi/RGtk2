\alias{gtkWidgetSetStyle}
\name{gtkWidgetSetStyle}
\title{gtkWidgetSetStyle}
\description{Sets the \code{\link{GtkStyle}} for a widget (\code{widget->style}). You probably don't
want to use this function; it interacts badly with themes, because
themes work by replacing the \code{\link{GtkStyle}}. Instead, use
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetSetStyle(object, style = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{style}}{a \code{\link{GtkStyle}}, or \code{NULL} to remove the effect of a previous
\code{\link{gtkWidgetSetStyle}} and go back to the default style. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
