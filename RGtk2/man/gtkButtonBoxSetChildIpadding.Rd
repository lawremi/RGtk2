\alias{gtkButtonBoxSetChildIpadding}
\name{gtkButtonBoxSetChildIpadding}
\title{gtkButtonBoxSetChildIpadding}
\description{
Changes the amount of internal padding used by all buttons in a given button
box.
\strong{WARNING: \code{gtk_button_box_set_child_ipadding} is deprecated and should not be used in newly-written code. Use the style properties
\code{"child-internal-pad-x/-y"} instead.}
}
\usage{gtkButtonBoxSetChildIpadding(object, ipad.x, ipad.y)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkButtonBox}}.}
\item{\verb{ipad.x}}{the horizontal padding that should be used by each button in \code{widget}.}
\item{\verb{ipad.y}}{the vertical padding that should be used by each button in \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
