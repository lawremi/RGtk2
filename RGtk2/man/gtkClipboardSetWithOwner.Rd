\alias{gtkClipboardSetWithOwner}
\name{gtkClipboardSetWithOwner}
\title{gtkClipboardSetWithOwner}
\description{Virtually sets the contents of the specified clipboard by providing
a list of supported formats for the clipboard data and a function
to call to get the actual data when it is requested.}
\usage{gtkClipboardSetWithOwner(object, targets, get.func, owner = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{targets}}{array containing information about the available forms for the
clipboard data}
\item{\verb{get.func}}{function to call to get the actual clipboard data}
\item{\verb{owner}}{an object that "owns" the data. This object will be passed
to the callbacks when called.}
}
\details{The difference between this function and \code{\link{gtkClipboardSetWithData}}
is that instead of an generic \code{user.data} pointer, a \code{\link{GObject}} is passed
in.}
\value{[logical] \code{TRUE} if setting the clipboard data succeeded. If setting
the clipboard data failed the provided callback functions
will be ignored.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
