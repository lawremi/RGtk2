\alias{gtkRcAddWidgetClassStyle}
\name{gtkRcAddWidgetClassStyle}
\title{gtkRcAddWidgetClassStyle}
\description{
Adds a \code{\link{GtkRcStyle}} that will be looked up by a match against
the widget's class pathname. This is equivalent to a:
\code{widget_class PATTERN style STYLE}
statement in a RC file.
\strong{WARNING: \code{gtk_rc_add_widget_class_style} is deprecated and should not be used in newly-written code. Use \code{\link{gtkRcParseString}} with a suitable string instead.}
}
\usage{gtkRcAddWidgetClassStyle(object, pattern)}
\arguments{
\item{\verb{object}}{the \code{\link{GtkRcStyle}} to use for widgets matching \code{pattern}}
\item{\verb{pattern}}{the pattern}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
