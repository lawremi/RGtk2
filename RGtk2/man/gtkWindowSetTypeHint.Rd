\alias{gtkWindowSetTypeHint}
\name{gtkWindowSetTypeHint}
\title{gtkWindowSetTypeHint}
\description{By setting the type hint for the window, you allow the window
manager to decorate and handle the window in a way which is
suitable to the function of the window in your application.}
\usage{gtkWindowSetTypeHint(object, hint)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWindow}}}
\item{\verb{hint}}{the window type}
}
\details{This function should be called before the window becomes visible.
  \code{\link{gtkDialogNewWithButtons}} and other convenience functions in GTK+
will sometimes call \code{\link{gtkWindowSetTypeHint}} on your behalf.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
