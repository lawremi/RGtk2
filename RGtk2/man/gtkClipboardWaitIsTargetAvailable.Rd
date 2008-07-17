\alias{gtkClipboardWaitIsTargetAvailable}
\name{gtkClipboardWaitIsTargetAvailable}
\title{gtkClipboardWaitIsTargetAvailable}
\description{Checks if a clipboard supports pasting data of a given type. This
function can be used to determine if a "Paste" menu item should be
insensitive or not.}
\usage{gtkClipboardWaitIsTargetAvailable(object, target)}
\arguments{
\item{\code{object}}{[\code{\link{GtkClipboard}}]  a \code{\link{GtkClipboard}}}
\item{\code{target}}{[\code{\link{GdkAtom}}]     A \code{\link{GdkAtom}} indicating which target to look for.}
}
\details{If you want to see if there's text available on the clipboard, use
\code{\link{gtkClipboardWaitIsTextAvailable}} instead.  

  Since  2.6}
\value{[logical] \code{TRUE} if the target is available, \code{FALSE} otherwise.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
