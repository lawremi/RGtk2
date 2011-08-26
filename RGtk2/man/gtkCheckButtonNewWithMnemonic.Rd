\alias{gtkCheckButtonNewWithMnemonic}
\name{gtkCheckButtonNewWithMnemonic}
\title{gtkCheckButtonNewWithMnemonic}
\description{Creates a new \code{\link{GtkCheckButton}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the check button.}
\usage{gtkCheckButtonNewWithMnemonic(label, show = TRUE)}
\arguments{\item{\verb{label}}{The text of the button, with an underscore in front of the
mnemonic character}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkCheckButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
