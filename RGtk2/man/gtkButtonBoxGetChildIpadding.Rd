\alias{gtkButtonBoxGetChildIpadding}
\name{gtkButtonBoxGetChildIpadding}
\title{gtkButtonBoxGetChildIpadding}
\description{
Gets the default number of pixels that pad the buttons in a given button box.
\strong{WARNING: \code{gtk_button_box_get_child_ipadding} is deprecated and should not be used in newly-written code. Use the style properties
  "child-internal-pad-x"
  and
  "child-internal-pad-y"
  instead.}
}
\usage{gtkButtonBoxGetChildIpadding(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkButtonBox}}.}}
\value{
A list containing the following elements:
\item{\verb{ipad.x}}{the horizontal padding used by buttons in \code{widget}.}
\item{\verb{ipad.y}}{the vertical padding used by buttons in \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
