\alias{gtkTextViewGetWindow}
\name{gtkTextViewGetWindow}
\title{gtkTextViewGetWindow}
\description{Retrieves the \code{\link{GdkWindow}} corresponding to an area of the text view;
possible windows include the overall widget window, child windows
on the left, right, top, bottom, and the window that displays the
text buffer. Windows are \code{NULL} and nonexistent if their width or
height is 0, and are nonexistent before the widget has been
realized.}
\usage{gtkTextViewGetWindow(object, win)}
\arguments{
\item{\code{object}}{[\code{\link{GtkTextView}}]  a \code{\link{GtkTextView}}}
\item{\code{win}}{[\code{\link{GtkTextWindowType}}]  window to get}
}
\value{[\code{\link{GdkWindow}}]  a \code{\link{GdkWindow}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
