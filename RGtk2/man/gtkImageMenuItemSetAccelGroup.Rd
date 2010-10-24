\alias{gtkImageMenuItemSetAccelGroup}
\name{gtkImageMenuItemSetAccelGroup}
\title{gtkImageMenuItemSetAccelGroup}
\description{Specifies an \code{accel.group} to add the menu items accelerator to
(this only applies to stock items so a stock item must already
be set, make sure to call \code{\link{gtkImageMenuItemSetUseStock}}
and \code{\link{gtkMenuItemSetLabel}} with a valid stock item first).}
\usage{gtkImageMenuItemSetAccelGroup(object, accel.group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkImageMenuItem}}}
\item{\verb{accel.group}}{the \code{\link{GtkAccelGroup}}}
}
\details{If you want this menu item to have changeable accelerators then
you shouldnt need this (see \code{\link{gtkImageMenuItemNewFromStock}}).
  Since 2.16}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
