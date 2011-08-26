\alias{gtkTestWidgetClick}
\name{gtkTestWidgetClick}
\title{gtkTestWidgetClick}
\description{This function will generate a \code{button} click (button press and button
release event) in the middle of the first GdkWindow found that belongs
to \code{widget}.
For \code{GTK_NO_WINDOW} widgets like GtkButton, this will often be an
input-only event window. For other widgets, this is usually widget->window.
Certain caveats should be considered when using this function, in
particular because the mouse pointer is warped to the button click
location, see \code{\link{gdkTestSimulateButton}} for details.}
\usage{gtkTestWidgetClick(widget, button, modifiers)}
\arguments{
\item{\verb{widget}}{Widget to generate a button click on.}
\item{\verb{button}}{Number of the pointer button for the event, usually 1, 2 or 3.}
\item{\verb{modifiers}}{Keyboard modifiers the event is setup with.}
}
\details{Since 2.14}
\value{[logical] wether all actions neccessary for the button click simulation were carried out successfully.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
