\alias{gtkDialogRun}
\name{gtkDialogRun}
\title{gtkDialogRun}
\description{Blocks in a recursive main loop until the \code{dialog} either emits the
response signal, or is destroyed. If the dialog is destroyed during the call
to \code{\link{gtkDialogRun}}, gtk\_dialog\_returns \code{GTK_RESPONSE_NONE}.
Otherwise, it returns the response ID from the "response" signal emission.
Before entering the recursive main loop, \code{\link{gtkDialogRun}} calls
\code{\link{gtkWidgetShow}} on the dialog for you. Note that you still
need to show any children of the dialog yourself.}
\usage{gtkDialogRun(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkDialog}}]  a \code{\link{GtkDialog}}}}
\details{During \code{\link{gtkDialogRun}}, the default behavior of "delete\_event" is
disabled; if the dialog receives "delete\_event", it will not be
destroyed as windows usually are, and \code{\link{gtkDialogRun}} will return
\code{GTK_RESPONSE_DELETE_EVENT}. Also, during \code{\link{gtkDialogRun}} the dialog will be
modal. You can force \code{\link{gtkDialogRun}} to return at any time by
calling \code{\link{gtkDialogResponse}} to emit the "response"
signal. Destroying the dialog during \code{\link{gtkDialogRun}} is a very bad
idea, because your post-run code won't know whether the dialog was
destroyed or not.
  
After \code{\link{gtkDialogRun}} returns, you are responsible for hiding or
destroying the dialog if you wish to do so.
  
Typical usage of this function might be:
\preformatted{
 result <- dialog$run()
 if (result == GtkResponseType["accept"])
	 do_application_specific_something()
 else do_nothing_since_dialog_was_cancelled()
 dialog$destroy()
}
  
Note that even though the recursive main loop gives the effect of a
modal dialog (it prevents the user from interacting with other 
windows in the same window group while the dialog is run), callbacks 
such as timeouts, IO channel watches, DND drops, etc, \emph{will} 
be triggered during a \code{\link{gtkDialogRun}} call.  }
\value{[integer]  response ID}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
