\alias{gtkExpanderGetLabel}
\name{gtkExpanderGetLabel}
\title{gtkExpanderGetLabel}
\description{Fetches the text from a label widget including any embedded
underlines indicating mnemonics and Pango markup, as set by
\code{\link{gtkExpanderSetLabel}}. If the label text has not been set the
return value will be \code{NULL}. This will be the case if you create an
empty button with \code{\link{gtkButtonNew}} to use as a container.}
\usage{gtkExpanderGetLabel(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkExpander}}}}
\details{Note that this function behaved differently in versions prior to
2.14 and used to return the label text stripped of embedded
underlines indicating mnemonics and Pango markup. This problem can
be avoided by fetching the label text directly from the label
widget.
  Since 2.4}
\value{[character] The text of the label widget. This string is owned
by the widget and must not be modified or freed.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
