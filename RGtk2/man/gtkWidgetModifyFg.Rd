\alias{gtkWidgetModifyFg}
\name{gtkWidgetModifyFg}
\title{gtkWidgetModifyFg}
\description{Sets the foreground color for a widget in a particular state.
All other style values are left untouched. See also
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyFg(object, state, color = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{state}}{the state for which to set the foreground color}
\item{\verb{color}}{the color to assign (does not need to be allocated),
or \code{NULL} to undo the effect of previous calls to
of \code{\link{gtkWidgetModifyFg}}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
