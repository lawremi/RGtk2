\alias{gtkButtonBoxSetChildSize}
\name{gtkButtonBoxSetChildSize}
\title{gtkButtonBoxSetChildSize}
\description{
Sets a new default size for the children of a given button box.
\strong{WARNING: \code{gtk_button_box_set_child_size} is deprecated and should not be used in newly-written code. Use the style properties
\code{"child-min-width/-height"} instead.  
Sets a new default size for the children of a given button box.}
}
\usage{gtkButtonBoxSetChildSize(object, min.width, min.height)}
\arguments{
\item{\code{object}}{[\code{\link{GtkButtonBox}}] a \code{\link{GtkButtonBox}}.}
\item{\code{min.width}}{[integer] a default width for buttons in \code{widget}.}
\item{\code{min.height}}{[integer] a default height for buttons in \code{widget}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
