\alias{gtkWidgetGetClipboard}
\name{gtkWidgetGetClipboard}
\title{gtkWidgetGetClipboard}
\description{Returns the clipboard object for the given selection to
be used with \code{widget}. \code{widget} must have a \verb{\link{GdkDisplay}}
associated with it, so must be attached to a toplevel
window.}
\usage{gtkWidgetGetClipboard(object, selection)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{selection}}{[\verb{\link{GdkAtom}}]  a \verb{\link{GdkAtom}} which identifies the clipboard
            to use. \code{GDK_SELECTION_CLIPBOARD} gives the
            default clipboard. Another common value
            is \code{GDK_SELECTION_PRIMARY}, which gives
            the primary X selection. }
}
\details{  Since  2.2}
\value{[\verb{\link{GtkClipboard}}]  the appropriate clipboard object. If no
            clipboard already exists, a new one will
            be created. Once a clipboard object has
            been created, it is persistent for all time.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
