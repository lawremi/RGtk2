\alias{gtkClipboardSetWithData}
\name{gtkClipboardSetWithData}
\title{gtkClipboardSetWithData}
\description{Virtually sets the contents of the specified clipboard by providing
a list of supported formats for the clipboard data and a function
to call to get the actual data when it is requested.}
\usage{gtkClipboardSetWithData(object, targets, get.func, user.data = NULL)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkClipboard}}}
\item{\verb{targets}}{array containing information about the available forms for the
clipboard data}
\item{\verb{get.func}}{function to call to get the actual clipboard data}
\item{\verb{user.data}}{user data to pass to \code{get.func} and \code{clear.func}.}
}
\value{[logical] \code{TRUE} if setting the clipboard data succeeded. If setting
the clipboard data failed the provided callback functions
will be ignored.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
