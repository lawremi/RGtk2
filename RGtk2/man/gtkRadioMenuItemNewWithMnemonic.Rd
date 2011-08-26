\alias{gtkRadioMenuItemNewWithMnemonic}
\name{gtkRadioMenuItemNewWithMnemonic}
\title{gtkRadioMenuItemNewWithMnemonic}
\description{Creates a new \code{\link{GtkRadioMenuItem}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the menu item.}
\usage{gtkRadioMenuItemNewWithMnemonic(group = NULL, label, show = TRUE)}
\arguments{
\item{\verb{group}}{group the radio menu item is inside}
\item{\verb{label}}{the text of the button, with an underscore in front of the
mnemonic character}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRadioMenuItem}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
