\alias{gtkCheckMenuItemSetInconsistent}
\name{gtkCheckMenuItemSetInconsistent}
\title{gtkCheckMenuItemSetInconsistent}
\description{If the user has selected a range of elements (such as some text or
spreadsheet cells) that are affected by a boolean setting, and the
current values in that range are inconsistent, you may want to
display the check in an "in between" state. This function turns on
"in between" display.  Normally you would turn off the inconsistent
state again if the user explicitly selects a setting. This has to be
done manually, \code{\link{gtkCheckMenuItemSetInconsistent}} only affects
visual appearance, it doesn't affect the semantics of the widget.}
\usage{gtkCheckMenuItemSetInconsistent(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkCheckMenuItem}}}
\item{\verb{setting}}{\code{TRUE} to display an "inconsistent" third state check}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
