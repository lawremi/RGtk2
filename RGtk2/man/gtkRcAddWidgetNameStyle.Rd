\alias{gtkRcAddWidgetNameStyle}
\name{gtkRcAddWidgetNameStyle}
\title{gtkRcAddWidgetNameStyle}
\description{
Adds a \code{\link{GtkRcStyle}} that will be looked up by a match against
the widget's pathname. This is equivalent to a:
 \code{widget PATTERN style STYLE}
statement in a RC file.
\strong{WARNING: \code{gtk_rc_add_widget_name_style} is deprecated and should not be used in newly-written code. Use \code{\link{gtkRcParseString}} with a suitable string instead.}
}
\usage{gtkRcAddWidgetNameStyle(object, pattern)}
\arguments{
\item{\verb{object}}{the \code{\link{GtkRcStyle}} to use for widgets matching \code{pattern}}
\item{\verb{pattern}}{the pattern}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
