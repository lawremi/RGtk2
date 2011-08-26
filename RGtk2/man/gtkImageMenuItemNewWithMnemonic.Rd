\alias{gtkImageMenuItemNewWithMnemonic}
\name{gtkImageMenuItemNewWithMnemonic}
\title{gtkImageMenuItemNewWithMnemonic}
\description{Creates a new \code{\link{GtkImageMenuItem}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the menu item.}
\usage{gtkImageMenuItemNewWithMnemonic(label, show = TRUE)}
\arguments{\item{\verb{label}}{the text of the menu item, with an underscore in front of the
mnemonic character}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkImageMenuItem}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
