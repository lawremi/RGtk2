\alias{gtkWindowSetSkipPagerHint}
\name{gtkWindowSetSkipPagerHint}
\title{gtkWindowSetSkipPagerHint}
\description{Windows may set a hint asking the desktop environment not to display
the window in the pager. This function sets this hint.
(A "pager" is any desktop navigation tool such as a workspace
switcher that displays a thumbnail representation of the windows
on the screen.)}
\usage{gtkWindowSetSkipPagerHint(object, setting)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{setting}}{\code{TRUE} to keep this window from appearing in the pager}
}
\details{Since 2.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
