\alias{gtkRcAddWidgetNameStyle}
\name{gtkRcAddWidgetNameStyle}
\title{gtkRcAddWidgetNameStyle}
\description{
Adds a \verb{\link{GtkRcStyle}} that will be looked up by a match against
the widget's pathname. This is equivalent to a:
\code{
widget PATTERN style STYLE
}
statement in a RC file.
\strong{WARNING: \code{gtk_rc_add_widget_name_style} is deprecated and should not be used in newly-written code.}
}
\usage{gtkRcAddWidgetNameStyle(object, pattern)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkRcStyle}}] the \verb{\link{GtkRcStyle}} to use for widgets matching \code{pattern}}
\item{\verb{pattern}}{[character] the pattern}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
