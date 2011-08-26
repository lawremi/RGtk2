\alias{gtkWidgetModifyText}
\name{gtkWidgetModifyText}
\title{gtkWidgetModifyText}
\description{Sets the text color for a widget in a particular state.  All other
style values are left untouched. The text color is the foreground
color used along with the base color (see \code{\link{gtkWidgetModifyBase}})
for widgets such as \code{\link{GtkEntry}} and \code{\link{GtkTextView}}. See also
\code{\link{gtkWidgetModifyStyle}}.}
\usage{gtkWidgetModifyText(object, state, color = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{state}}{the state for which to set the text color}
\item{\verb{color}}{the color to assign (does not need to be allocated),
or \code{NULL} to undo the effect of previous calls to
of \code{\link{gtkWidgetModifyText}}. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
