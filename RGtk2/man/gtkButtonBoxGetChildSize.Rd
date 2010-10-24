\alias{gtkButtonBoxGetChildSize}
\name{gtkButtonBoxGetChildSize}
\title{gtkButtonBoxGetChildSize}
\description{
Retrieves the current width and height of all child widgets in a button box.
\code{min.width} and \code{min.height} are filled with those values, respectively.
\strong{WARNING: \code{gtk_button_box_get_child_size} is deprecated and should not be used in newly-written code. Use the style properties
\code{"child-min-width/-height"} instead.}
}
\usage{gtkButtonBoxGetChildSize(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkButtonBox}}.}}
\value{
A list containing the following elements:
\item{\verb{min.width}}{the width of the buttons contained by \code{widget}.}
\item{\verb{min.height}}{the height of the buttons contained by \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
