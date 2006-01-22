\alias{gtkButtonBoxGetChildIpadding}
\name{gtkButtonBoxGetChildIpadding}
\title{gtkButtonBoxGetChildIpadding}
\description{
Gets the default number of pixels that pad the buttons in a given button box.
\strong{WARNING: \code{gtk_button_box_get_child_ipadding} is deprecated and should not be used in newly-written code. Use the style properties
\code{"child-internal-pad-x/-y"} instead.  
Gets the default number of pixels that pad the buttons in a given button box.}
}
\usage{gtkButtonBoxGetChildIpadding(object)}
\arguments{\item{\code{object}}{[\code{\link{GtkButtonBox}}] a \code{\link{GtkButtonBox}}.}}
\value{
A list containing the following elements:
\item{\code{ipad.x}}{[integer] the horizontal padding used by buttons in \code{widget}.}
\item{\code{ipad.y}}{[integer] the vertical padding used by buttons in \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
