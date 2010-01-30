\alias{gtkTooltipsDataGet}
\name{gtkTooltipsDataGet}
\title{gtkTooltipsDataGet}
\description{
Retrieves any \verb{\link{GtkTooltipsData}} previously associated with the given widget.
\strong{WARNING: \code{gtk_tooltips_data_get} has been deprecated since version 2.12 and should not be used in newly-written code. }
}
\usage{gtkTooltipsDataGet(widget)}
\arguments{\item{\verb{widget}}{[\verb{\link{GtkWidget}}] a \verb{\link{GtkWidget}}.}}
\value{[\verb{\link{GtkTooltipsData}}] a \verb{\link{GtkTooltipsData}} struct, or \code{NULL} if the widget has no tooltip.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
