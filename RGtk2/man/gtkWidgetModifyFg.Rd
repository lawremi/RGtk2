\alias{gtkWidgetModifyFg}
\name{gtkWidgetModifyFg}
\title{gtkWidgetModifyFg}
\description{Sets the foreground color for a widget in a particular state.  
All other style values are left untouched. See also
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyFg(object, state, color = NULL)}
\arguments{
\item{\code{object}}{[\code{\link{GtkWidget}}]  a \code{\link{GtkWidget}}}
\item{\code{state}}{[\code{\link{GtkStateType}}]  the state for which to set the foreground color}
\item{\code{color}}{[\code{\link{GdkColor}}]  the color to assign (does not need to be allocated),
        or \code{NULL} to undo the effect of previous calls to
        of \code{\link{gtkWidgetModifyFg}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
