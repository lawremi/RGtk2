\alias{gtkComboBoxInsertText}
\name{gtkComboBoxInsertText}
\title{gtkComboBoxInsertText}
\description{Inserts \code{string} at \code{position} in the list of strings stored in \code{combo.box}.
Note that you can only use this function with combo boxes constructed
with \code{\link{gtkComboBoxNewText}}.}
\usage{gtkComboBoxInsertText(object, position, text)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkComboBox}} constructed using \code{\link{gtkComboBoxNewText}}}
\item{\verb{position}}{An index to insert \code{text}}
\item{\verb{text}}{A string}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
