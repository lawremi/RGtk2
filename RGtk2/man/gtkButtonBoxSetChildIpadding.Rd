\alias{gtkButtonBoxSetChildIpadding}
\name{gtkButtonBoxSetChildIpadding}
\title{gtkButtonBoxSetChildIpadding}
\description{
Changes the amount of internal padding used by all buttons in a given button
box.
\strong{WARNING: \code{gtk_button_box_set_child_ipadding} is deprecated and should not be used in newly-written code. Use the style properties
\code{"child-internal-pad-x/-y"} instead.  
Changes the amount of internal padding used by all buttons in a given button
box.}
}
\usage{gtkButtonBoxSetChildIpadding(object, ipad.x, ipad.y)}
\arguments{
\item{\code{object}}{[\code{\link{GtkButtonBox}}] a \code{\link{GtkButtonBox}}.}
\item{\code{ipad.x}}{[integer] the horizontal padding that should be used by each button in \code{widget}.}
\item{\code{ipad.y}}{[integer] the vertical padding that should be used by each button in \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
