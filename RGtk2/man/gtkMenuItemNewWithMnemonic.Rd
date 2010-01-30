\alias{gtkMenuItemNewWithMnemonic}
\name{gtkMenuItemNewWithMnemonic}
\title{gtkMenuItemNewWithMnemonic}
\description{Creates a new \verb{\link{GtkMenuItem}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the menu item.}
\usage{gtkMenuItemNewWithMnemonic(label, show = TRUE)}
\arguments{\item{\verb{label}}{[character]  The text of the button, with an underscore in front of the
        mnemonic character}}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkMenuItem}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
