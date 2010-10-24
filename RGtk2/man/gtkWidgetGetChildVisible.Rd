\alias{gtkWidgetGetChildVisible}
\name{gtkWidgetGetChildVisible}
\title{gtkWidgetGetChildVisible}
\description{Gets the value set with \code{\link{gtkWidgetSetChildVisible}}.
If you feel a need to use this function, your code probably
needs reorganization. }
\usage{gtkWidgetGetChildVisible(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkWidget}}}}
\details{This function is only useful for container implementations and
never should be called by an application.}
\value{[logical] \code{TRUE} if the widget is mapped with the parent.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
