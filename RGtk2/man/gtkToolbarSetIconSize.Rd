\alias{gtkToolbarSetIconSize}
\name{gtkToolbarSetIconSize}
\title{gtkToolbarSetIconSize}
\description{
This function sets the size of stock icons in the toolbar. You
can call it both before you add the icons and after they've been
added. The size you set will override user preferences for the default
icon size.
\strong{WARNING: \code{gtk_toolbar_set_icon_size} is deprecated and should not be used in newly-written code. Applications should respect the user preferences for
  the size of icons in toolbars.  
This function sets the size of stock icons in the toolbar. You
can call it both before you add the icons and after they've been
added. The size you set will override user preferences for the default
icon size.  }
}
\usage{gtkToolbarSetIconSize(object, icon.size)}
\arguments{
\item{\code{object}}{[\code{\link{GtkToolbar}}]  A \code{\link{GtkToolbar}}}
\item{\code{icon.size}}{[\code{\link{GtkIconSize}}]  The \code{\link{GtkIconSize}} that stock icons in the toolbar shall have.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
