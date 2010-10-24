\alias{gtkMenuSetTitle}
\name{gtkMenuSetTitle}
\title{gtkMenuSetTitle}
\description{Sets the title string for the menu.  The title is displayed when the menu
is shown as a tearoff menu.  If \code{title} is \code{NULL}, the menu will see if it is
attached to a parent menu item, and if so it will try to use the same text as
that menu item's label.}
\usage{gtkMenuSetTitle(object, title)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenu}}}
\item{\verb{title}}{a string containing the title for the menu.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
