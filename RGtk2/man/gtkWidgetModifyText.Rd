\alias{gtkWidgetModifyText}
\name{gtkWidgetModifyText}
\title{gtkWidgetModifyText}
\description{Sets the text color for a widget in a particular state.  All other
style values are left untouched. The text color is the foreground
color used along with the base color (see \code{\link{gtkWidgetModifyBase}})
for widgets such as \verb{\link{GtkEntry}} and \verb{\link{GtkTextView}}. See also
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyText(object, state, color = NULL)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{state}}{[\code{\link{GtkStateType}}]  the state for which to set the text color}
\item{\verb{color}}{[\verb{\link{GdkColor}}]  the color to assign (does not need to be allocated),
        or \code{NULL} to undo the effect of previous calls to
        of \code{\link{gtkWidgetModifyText}}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
