\alias{gtkTestSpinButtonClick}
\name{gtkTestSpinButtonClick}
\title{gtkTestSpinButtonClick}
\description{This function will generate a \code{button} click in the upwards or downwards
spin button arrow areas, usually leading to an increase or decrease of
spin button's value.}
\usage{gtkTestSpinButtonClick(spinner, button, upwards)}
\arguments{
\item{\verb{spinner}}{valid GtkSpinButton widget.}
\item{\verb{button}}{Number of the pointer button for the event, usually 1, 2 or 3.}
\item{\verb{upwards}}{\code{TRUE} for upwards arrow click, \code{FALSE} for downwards arrow click.}
}
\details{Since 2.14}
\value{[logical] wether all actions neccessary for the button click simulation were carried out successfully.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
