\alias{gtkTextBufferBeginUserAction}
\name{gtkTextBufferBeginUserAction}
\title{gtkTextBufferBeginUserAction}
\description{Called to indicate that the buffer operations between here and a
call to \code{\link{gtkTextBufferEndUserAction}} are part of a single
user-visible operation. The operations between
\code{\link{gtkTextBufferBeginUserAction}} and
\code{\link{gtkTextBufferEndUserAction}} can then be grouped when creating
an undo stack. \code{\link{GtkTextBuffer}} maintains a count of calls to
\code{\link{gtkTextBufferBeginUserAction}} that have not been closed with
a call to \code{\link{gtkTextBufferEndUserAction}}, and emits the 
"begin-user-action" and "end-user-action" signals only for the 
outermost pair of calls. This allows you to build user actions 
from other user actions.}
\usage{gtkTextBufferBeginUserAction(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkTextBuffer}}}}
\details{The "interactive" buffer mutation functions, such as
\code{\link{gtkTextBufferInsertInteractive}}, automatically call begin/end
user action around the buffer operations they perform, so there's
no need to add extra calls if you user action consists solely of a
single call to one of those functions.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
