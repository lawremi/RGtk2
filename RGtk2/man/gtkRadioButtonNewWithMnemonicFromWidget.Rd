\alias{gtkRadioButtonNewWithMnemonicFromWidget}
\name{gtkRadioButtonNewWithMnemonicFromWidget}
\title{gtkRadioButtonNewWithMnemonicFromWidget}
\description{Creates a new \verb{\link{GtkRadioButton}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the button.}
\usage{gtkRadioButtonNewWithMnemonicFromWidget(group = NULL, label, show = TRUE)}
\arguments{
\item{\verb{group}}{[\verb{\link{GtkRadioButton}}]  widget to get radio group from or \code{NULL}}
\item{\verb{label}}{[character]  the text of the button, with an underscore in front of the
        mnemonic character}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRadioButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
