\alias{gtkWidgetGetReceivesDefault}
\name{gtkWidgetGetReceivesDefault}
\title{gtkWidgetGetReceivesDefault}
\description{Determines whether \code{widget} is alyways treated as default widget
withing its toplevel when it has the focus, even if another widget
is the default.}
\usage{gtkWidgetGetReceivesDefault(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{See \code{\link{gtkWidgetSetReceivesDefault}}.
  Since 2.18}
\value{[logical] \code{TRUE} if \code{widget} acts as default widget when focussed,
\code{FALSE} otherwise}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
