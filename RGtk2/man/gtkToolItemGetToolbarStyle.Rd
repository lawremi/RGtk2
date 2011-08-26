\alias{gtkToolItemGetToolbarStyle}
\name{gtkToolItemGetToolbarStyle}
\title{gtkToolItemGetToolbarStyle}
\description{Returns the toolbar style used for \code{tool.item}. Custom subclasses of
\code{\link{GtkToolItem}} should call this function in the handler of the
GtkToolItem::toolbar_reconfigured signal to find out in what style
the toolbar is displayed and change themselves accordingly }
\usage{gtkToolItemGetToolbarStyle(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkToolItem}}}}
\details{Possibilities are:
\itemize{
\item 
\item 
\item 
\item 
}
  Since 2.4}
\value{[\code{\link{GtkToolbarStyle}}] A \code{\link{GtkToolbarStyle}} indicating the toolbar style used
for \code{tool.item}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
