\alias{gtkWidgetSetTooltipWindow}
\name{gtkWidgetSetTooltipWindow}
\title{gtkWidgetSetTooltipWindow}
\description{Replaces the default, usually yellow, window used for displaying
tooltips with \code{custom.window}. GTK+ will take care of showing and
hiding \code{custom.window} at the right moment, to behave likewise as
the default tooltip window. If \code{custom.window} is \code{NULL}, the default
tooltip window will be used.}
\usage{gtkWidgetSetTooltipWindow(object, custom.window)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkWidget}}]  a \verb{\link{GtkWidget}}}
\item{\verb{custom.window}}{[\verb{\link{GtkWindow}}]  a \verb{\link{GtkWindow}}, or \code{NULL}}
}
\details{  Since  2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
