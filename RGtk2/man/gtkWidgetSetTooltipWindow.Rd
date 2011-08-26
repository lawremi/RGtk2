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
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{custom.window}}{a \code{\link{GtkWindow}}, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
}
\details{If the custom window should have the default theming it needs to
have the name "gtk-tooltip", see \code{\link{gtkWidgetSetName}}.
  Since 2.12}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
