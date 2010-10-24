\alias{gtkMenuSetAccelGroup}
\name{gtkMenuSetAccelGroup}
\title{gtkMenuSetAccelGroup}
\description{Set the \code{\link{GtkAccelGroup}} which holds global accelerators for the menu.
This accelerator group needs to also be added to all windows that
this menu is being used in with \code{\link{gtkWindowAddAccelGroup}}, in order
for those windows to support all the accelerators contained in this group.}
\usage{gtkMenuSetAccelGroup(object, accel.group)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkMenu}}.}
\item{\verb{accel.group}}{. \emph{[  \acronym{allow-none}  ]}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
