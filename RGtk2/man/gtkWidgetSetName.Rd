\alias{gtkWidgetSetName}
\name{gtkWidgetSetName}
\title{gtkWidgetSetName}
\description{Widgets can be named, which allows you to refer to them from a
gtkrc file. You can apply a style to widgets with a particular name
in the gtkrc file. See the documentation for gtkrc files (on the
same page as the docs for \code{\link{GtkRcStyle}}).}
\usage{gtkWidgetSetName(object, name)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{name}}{name for the widget}
}
\details{Note that widget names are separated by periods in paths (see 
\code{\link{gtkWidgetPath}}), so names with embedded periods may cause confusion.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
