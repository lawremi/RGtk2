\alias{gtkEntrySetPosition}
\name{gtkEntrySetPosition}
\title{gtkEntrySetPosition}
\description{
Sets the cursor position in an entry to the given value.
\strong{WARNING: \code{gtk_entry_set_position} has been deprecated since version 2.0 and should not be used in newly-written code. Use \code{\link{gtkEditableSetPosition}} instead.}
}
\usage{gtkEntrySetPosition(object, position)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{position}}{the position of the cursor. The cursor is displayed
before the character with the given (base 0) index in the widget.
The value must be less than or equal to the number of characters
in the widget. A value of -1 indicates that the position should
be set after the last character in the entry. Note that this
position is in characters, not in bytes.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
