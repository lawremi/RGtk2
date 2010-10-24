\alias{gtkActionSetAlwaysShowImage}
\name{gtkActionSetAlwaysShowImage}
\title{gtkActionSetAlwaysShowImage}
\description{Sets whether \code{action}'s menu item proxies will ignore the
\verb{"gtk-menu-images"} setting and always show their image, if available.}
\usage{gtkActionSetAlwaysShowImage(object, always.show)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkAction}}}
\item{\verb{always.show}}{\code{TRUE} if menuitem proxies should always show their image}
}
\details{Use this if the menu item would be useless or hard to use
without their image.
  Since 2.20}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
