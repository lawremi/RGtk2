\alias{gtkWidgetGetModifierStyle}
\name{gtkWidgetGetModifierStyle}
\title{gtkWidgetGetModifierStyle}
\description{Returns the current modifier style for the widget. (As set by
\code{\link{gtkWidgetModifyStyle}}.) If no style has previously set, a new
\code{\link{GtkRcStyle}} will be created with all values unset, and set as the
modifier style for the widget. If you make changes to this rc
style, you must call \code{\link{gtkWidgetModifyStyle}}, passing in the
returned rc style, to make sure that your changes take effect.}
\usage{gtkWidgetGetModifierStyle(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{Caution: passing the style back to \code{\link{gtkWidgetModifyStyle}} will
normally end up destroying it, because \code{\link{gtkWidgetModifyStyle}} copies
the passed-in style and sets the copy as the new modifier style,
thus dropping any reference to the old modifier style. Add a reference
to the modifier style if you want to keep it alive.}
\value{[\code{\link{GtkRcStyle}}] the modifier style for the widget. If you want to keep a pointer to value this
around, \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
