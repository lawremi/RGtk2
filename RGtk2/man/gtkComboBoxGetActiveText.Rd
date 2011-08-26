\alias{gtkComboBoxGetActiveText}
\name{gtkComboBoxGetActiveText}
\title{gtkComboBoxGetActiveText}
\description{Returns the currently active string in \code{combo.box} or \code{NULL} if none
is selected.  Note that you can only use this function with combo
boxes constructed with \code{\link{gtkComboBoxNewText}} and with
\code{\link{GtkComboBoxEntry}}s.}
\usage{gtkComboBoxGetActiveText(object)}
\arguments{\item{\verb{object}}{A \code{\link{GtkComboBox}} constructed with \code{\link{gtkComboBoxNewText}}}}
\details{Since 2.6}
\value{[character] a newly allocated string containing the currently active text.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
