\alias{gtkWidgetModifyBg}
\name{gtkWidgetModifyBg}
\title{gtkWidgetModifyBg}
\description{Sets the background color for a widget in a particular state.
All other style values are left untouched. See also
\code{\link{gtkWidgetModifyStyle}}. }
\usage{gtkWidgetModifyBg(object, state, color = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{state}}{the state for which to set the background color}
\item{\verb{color}}{the color to assign (does not need to be allocated),
or \code{NULL} to undo the effect of previous calls to
of \code{\link{gtkWidgetModifyBg}}. \emph{[  \acronym{allow-none}  ]}}
}
\details{Note that "no window" widgets (which have the \code{GTK_NO_WINDOW} flag set)
draw on their parent container's window and thus may not draw any 
background themselves. This is the case for e.g. \code{\link{GtkLabel}}. To modify 
the background of such widgets, you have to set the background color 
on their parent; if you want to set the background of a rectangular 
area around a label, try placing the label in a \code{\link{GtkEventBox}} widget 
and setting the background color on that.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
