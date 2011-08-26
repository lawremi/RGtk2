\alias{gtkToolbarSetIconSize}
\name{gtkToolbarSetIconSize}
\title{gtkToolbarSetIconSize}
\description{This function sets the size of stock icons in the toolbar. You
can call it both before you add the icons and after they've been
added. The size you set will override user preferences for the default
icon size.}
\usage{gtkToolbarSetIconSize(object, icon.size)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkToolbar}}}
\item{\verb{icon.size}}{The \code{\link{GtkIconSize}} that stock icons in the
toolbar shall have. \emph{[  \acronym{type}   int]}}
}
\details{This should only be used for special-purpose toolbars, normal
application toolbars should respect the user preferences for the
size of icons.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
