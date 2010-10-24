\alias{gtkToggleButtonSetInconsistent}
\name{gtkToggleButtonSetInconsistent}
\title{gtkToggleButtonSetInconsistent}
\description{If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a toggle button, and the
current values in that range are inconsistent, you may want to
display the toggle in an "in between" state. This function turns on
"in between" display.  Normally you would turn off the inconsistent
state again if the user toggles the toggle button. This has to be
done manually, \code{\link{gtkToggleButtonSetInconsistent}} only affects
visual appearance, it doesn't affect the semantics of the button.}
\usage{gtkToggleButtonSetInconsistent(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToggleButton}}}
\item{\verb{setting}}{\code{TRUE} if state is inconsistent}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
