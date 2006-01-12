\alias{gtkInitCheck}
\name{gtkInitCheck}
\title{gtkInitCheck}
\description{This function does the same work as \code{\link{gtkInit}} with only 
a single change: It does not terminate the program if the GUI can't be 
initialized. Instead it returns \code{FALSE} on failure.}
\usage{gtkInitCheck(args = .GtkInitArgs)}
\details{This way the application can fall back to some other means of communication 
with the user - for example a curses or command line interface.  }
\value{[logical]  \code{TRUE} if the GUI has been successfully initialized, 
              \code{FALSE} otherwise.}
\note{
This function is deprecated. You should use \code{GDK_PRIORITY_REDRAW} instead.
This function is deprecated. You should use \code{G_PRIORITY_HIGH} instead.
This function is deprecated. You should use \code{G_PRIORITY_DEFAULT_IDLE} instead.
This function is deprecated. You should use \code{G_PRIORITY_LOW} instead.
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
