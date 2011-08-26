\alias{gtkEditableSetPosition}
\name{gtkEditableSetPosition}
\title{gtkEditableSetPosition}
\description{Sets the cursor position in the editable to the given value.}
\usage{gtkEditableSetPosition(object, position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEditable}}}
\item{\verb{position}}{the position of the cursor}
}
\details{The cursor is displayed before the character with the given (base 0) 
index in the contents of the editable. The value must be less than or 
equal to the number of characters in the editable. A value of -1 
indicates that the position should be set after the last character 
of the editable. Note that \code{position} is in characters, not in bytes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
