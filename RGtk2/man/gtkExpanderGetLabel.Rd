\alias{gtkExpanderGetLabel}
\name{gtkExpanderGetLabel}
\title{gtkExpanderGetLabel}
\description{Fetches the text from the label of the expander, as set by
\code{\link{gtkExpanderSetLabel}}. If the label text has not
been set the return value will be \code{NULL}. This will be the
case if you create an empty button with \code{\link{gtkButtonNew}} to
use as a container.}
\usage{gtkExpanderGetLabel(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkExpander}}]  a \code{\link{GtkExpander}}}}
\details{  Since  2.4}
\value{[character]  The text of the label widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
