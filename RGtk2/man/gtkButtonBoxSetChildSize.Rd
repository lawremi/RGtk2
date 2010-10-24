\alias{gtkButtonBoxSetChildSize}
\name{gtkButtonBoxSetChildSize}
\title{gtkButtonBoxSetChildSize}
\description{
Sets a new default size for the children of a given button box.
\strong{WARNING: \code{gtk_button_box_set_child_size} is deprecated and should not be used in newly-written code. Use the style properties
  "child-min-width"
  and
  "child-min-height"
  instead.}
}
\usage{gtkButtonBoxSetChildSize(object, min.width, min.height)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkButtonBox}}}
\item{\verb{min.width}}{a default width for buttons in \code{widget}}
\item{\verb{min.height}}{a default height for buttons in \code{widget}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
