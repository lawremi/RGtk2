\alias{gtkRadioButtonNewWithMnemonicFromWidget}
\name{gtkRadioButtonNewWithMnemonicFromWidget}
\title{gtkRadioButtonNewWithMnemonicFromWidget}
\description{Creates a new \code{\link{GtkRadioButton}} containing a label. The label
will be created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores
in \code{label} indicate the mnemonic for the button.}
\usage{gtkRadioButtonNewWithMnemonicFromWidget(group = NULL, label, 
    show = TRUE)}
\arguments{
\item{\verb{group}}{widget to get radio group from or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{label}}{the text of the button, with an underscore in front of the
mnemonic character}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRadioButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
