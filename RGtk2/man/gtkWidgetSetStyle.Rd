\alias{gtkWidgetSetStyle}
\name{gtkWidgetSetStyle}
\title{gtkWidgetSetStyle}
\description{Sets the \verb{\link{GtkStyle}} for a widget (\code{widget->style}). You probably don't
want to use this function; it interacts badly with themes, because
themes work by replacing the \verb{\link{GtkStyle}}. Instead, use
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetSetStyle(object, style = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{style}}{[\verb{\link{GtkStyle}}]  a \verb{\link{GtkStyle}}, or \code{NULL} to remove the effect of a previous
        \code{\link{gtkWidgetSetStyle}} and go back to the default style}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
