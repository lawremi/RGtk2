\alias{gtkLabelGetText}
\name{gtkLabelGetText}
\title{gtkLabelGetText}
\description{Fetches the text from a label widget, as displayed on the
screen. This does not include any embedded underlines
indicating mnemonics or Pango markup. (See \code{\link{gtkLabelGetLabel}})}
\usage{gtkLabelGetText(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkLabel}}}}
\value{[character] the text in the label widget. This is the internal
string used by the label, and must not be modified.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
