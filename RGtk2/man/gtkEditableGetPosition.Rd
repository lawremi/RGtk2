\alias{gtkEditableGetPosition}
\name{gtkEditableGetPosition}
\title{gtkEditableGetPosition}
\description{Retrieves the current cursor position.}
\usage{gtkEditableGetPosition(object)}
\arguments{\item{\verb{object}}{[\verb{\link{GtkEditable}}] a \verb{\link{GtkEditable}} widget.}}
\value{[integer] the position of the cursor. The cursor is displayed
           before the character with the given (base 0) index
           in the widget. The value will be less than or
           equal to the number of characters in the widget.
           Note that this position is in characters, not in
           bytes.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
