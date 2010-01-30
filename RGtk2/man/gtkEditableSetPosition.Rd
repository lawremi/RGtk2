\alias{gtkEditableSetPosition}
\name{gtkEditableSetPosition}
\title{gtkEditableSetPosition}
\description{Sets the cursor position.}
\usage{gtkEditableSetPosition(object, position)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkEditable}}] a \verb{\link{GtkEditable}} widget.}
\item{\verb{position}}{[integer] the position of the cursor. The cursor is displayed
           before the character with the given (base 0) index
           in the widget. The value must be less than or
           equal to the number of characters in the widget.
           A value of -1 indicates that the position should
           be set after the last character in the entry.
           Note that this position is in characters, not in
           bytes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
