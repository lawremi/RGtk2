\alias{gtkRcAddClassStyle}
\name{gtkRcAddClassStyle}
\title{gtkRcAddClassStyle}
\description{
Adds a \code{\link{GtkRcStyle}} that will be looked up by a matching against
the class hierarchy of the widget. This is equivalent to a:
\code{class PATTERN style STYLE}
statement in a RC file.
\strong{WARNING: \code{gtk_rc_add_class_style} is deprecated and should not be used in newly-written code. Use \code{\link{gtkRcParseString}} with a suitable string instead.}
}
\usage{gtkRcAddClassStyle(object, pattern)}
\arguments{
\item{\verb{object}}{the \code{\link{GtkRcStyle}} to use for widgets deriving from \code{pattern}}
\item{\verb{pattern}}{the pattern}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
