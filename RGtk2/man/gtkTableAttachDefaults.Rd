\alias{gtkTableAttachDefaults}
\name{gtkTableAttachDefaults}
\title{gtkTableAttachDefaults}
\description{As there are many options associated with \code{\link{gtkTableAttach}}, this convenience function provides the programmer with a means to add children to a table with identical padding and expansion options. The values used for the \code{\link{GtkAttachOptions}} are \code{GTK_EXPAND | GTK_FILL}, and the padding is set to 0.}
\usage{gtkTableAttachDefaults(object, widget, left.attach, right.attach, 
    top.attach, bottom.attach)}
\arguments{
\item{\verb{object}}{The table to add a new child widget to.}
\item{\verb{widget}}{The child widget to add.}
\item{\verb{left.attach}}{The column number to attach the left side of the child widget to.}
\item{\verb{right.attach}}{The column number to attach the right side of the child widget to.}
\item{\verb{top.attach}}{The row number to attach the top of the child widget to.}
\item{\verb{bottom.attach}}{The row number to attach the bottom of the child widget to.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
