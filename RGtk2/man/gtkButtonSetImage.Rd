\alias{gtkButtonSetImage}
\name{gtkButtonSetImage}
\title{gtkButtonSetImage}
\description{Set the image of \code{button} to the given widget. Note that
it depends on the \verb{"gtk-button-images"} setting whether the
image will be displayed or not, you don't have to call
\code{\link{gtkWidgetShow}} on \code{image} yourself.}
\usage{gtkButtonSetImage(object, image)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkButton}}}
\item{\verb{image}}{a widget to set as the image for the button}
}
\details{Since 2.6}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
