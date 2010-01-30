\alias{gtkTextViewGetWindow}
\name{gtkTextViewGetWindow}
\title{gtkTextViewGetWindow}
\description{Retrieves the \verb{\link{GdkWindow}} corresponding to an area of the text view;
possible windows include the overall widget window, child windows
on the left, right, top, bottom, and the window that displays the
text buffer. Windows are \code{NULL} and nonexistent if their width or
height is 0, and are nonexistent before the widget has been
realized.}
\usage{gtkTextViewGetWindow(object, win)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkTextView}}]  a \verb{\link{GtkTextView}}}
\item{\verb{win}}{[\code{\link{GtkTextWindowType}}]  window to get}
}
\value{[\verb{\link{GdkWindow}}]  a \verb{\link{GdkWindow}}, or \code{NULL}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
