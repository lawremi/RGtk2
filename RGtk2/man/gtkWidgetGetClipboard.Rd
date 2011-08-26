\alias{gtkWidgetGetClipboard}
\name{gtkWidgetGetClipboard}
\title{gtkWidgetGetClipboard}
\description{Returns the clipboard object for the given selection to
be used with \code{widget}. \code{widget} must have a \code{\link{GdkDisplay}}
associated with it, so must be attached to a toplevel
window.}
\usage{gtkWidgetGetClipboard(object, selection)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{selection}}{a \code{\link{GdkAtom}} which identifies the clipboard
to use. \code{GDK_SELECTION_CLIPBOARD} gives the
default clipboard. Another common value
is \code{GDK_SELECTION_PRIMARY}, which gives
the primary X selection.}
}
\details{Since 2.2}
\value{[\code{\link{GtkClipboard}}] the appropriate clipboard object. If no
clipboard already exists, a new one will
be created. Once a clipboard object has
been created, it is persistent for all time. \emph{[  \acronym{transfer none}  ]}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
