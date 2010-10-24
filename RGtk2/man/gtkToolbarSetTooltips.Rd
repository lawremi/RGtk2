\alias{gtkToolbarSetTooltips}
\name{gtkToolbarSetTooltips}
\title{gtkToolbarSetTooltips}
\description{
Sets if the tooltips of a toolbar should be active or not.
\strong{WARNING: \code{gtk_toolbar_set_tooltips} has been deprecated since version 2.14 and should not be used in newly-written code. The toolkit-wide \verb{"gtk-enable-tooltips"} property
is now used instead.}
}
\usage{gtkToolbarSetTooltips(object, enable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkToolbar}}.}
\item{\verb{enable}}{set to \code{FALSE} to disable the tooltips, or \code{TRUE} to enable them.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
