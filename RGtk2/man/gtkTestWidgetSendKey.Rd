\alias{gtkTestWidgetSendKey}
\name{gtkTestWidgetSendKey}
\title{gtkTestWidgetSendKey}
\description{This function will generate keyboard press and release events in
the middle of the first GdkWindow found that belongs to \code{widget}.
For \code{GTK_NO_WINDOW} widgets like GtkButton, this will often be an
input-only event window. For other widgets, this is usually widget->window.
Certain caveats should be considered when using this function, in
particular because the mouse pointer is warped to the key press
location, see \code{\link{gdkTestSimulateKey}} for details.}
\usage{gtkTestWidgetSendKey(widget, keyval, modifiers)}
\arguments{
\item{\verb{widget}}{Widget to generate a key press and release on.}
\item{\verb{keyval}}{A Gdk keyboard value.}
\item{\verb{modifiers}}{Keyboard modifiers the event is setup with.}
}
\details{Since 2.14}
\value{[logical] wether all actions neccessary for the key event simulation were carried out successfully.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
