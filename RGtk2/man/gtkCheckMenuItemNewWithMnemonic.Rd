\alias{gtkCheckMenuItemNewWithMnemonic}
\name{gtkCheckMenuItemNewWithMnemonic}
\title{gtkCheckMenuItemNewWithMnemonic}
\description{Creates a new \code{\link{GtkCheckMenuItem}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the menu item.}
\usage{gtkCheckMenuItemNewWithMnemonic(label, show = TRUE)}
\arguments{\item{\verb{label}}{The text of the button, with an underscore in front of the
mnemonic character}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkCheckMenuItem}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
