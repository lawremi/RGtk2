\alias{gtkRadioButtonNewWithMnemonicFromWidget}
\name{gtkRadioButtonNewWithMnemonicFromWidget}
\title{gtkRadioButtonNewWithMnemonicFromWidget}
\description{Creates a new \code{\link{GtkRadioButton}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the button.}
\usage{gtkRadioButtonNewWithMnemonicFromWidget(group = NULL, label, show = TRUE)}
\arguments{
\item{\code{group}}{[\code{\link{GtkRadioButton}}]  widget to get radio group from}
\item{\code{label}}{[character]  the text of the button, with an underscore in front of the
        mnemonic character}
}
\value{[\code{\link{GtkWidget}}]  a new \code{\link{GtkRadioButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
