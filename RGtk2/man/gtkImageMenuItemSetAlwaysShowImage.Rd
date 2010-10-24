\alias{gtkImageMenuItemSetAlwaysShowImage}
\name{gtkImageMenuItemSetAlwaysShowImage}
\title{gtkImageMenuItemSetAlwaysShowImage}
\description{If \code{TRUE}, the menu item will ignore the \verb{"gtk-menu-images"} 
setting and always show the image, if available.}
\usage{gtkImageMenuItemSetAlwaysShowImage(object, always.show)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkImageMenuItem}}}
\item{\verb{always.show}}{\code{TRUE} if the menuitem should always show the image}
}
\details{Use this property if the menuitem would be useless or hard to use
without the image.
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
