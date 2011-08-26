\alias{gtkRadioButtonNewWithMnemonic}
\name{gtkRadioButtonNewWithMnemonic}
\title{gtkRadioButtonNewWithMnemonic}
\description{Creates a new \code{\link{GtkRadioButton}} containing a label, adding it to the same 
group as \code{group}. The label will be created using 
\code{\link{gtkLabelNewWithMnemonic}}, so underscores in \code{label} indicate the 
mnemonic for the button.}
\usage{gtkRadioButtonNewWithMnemonic(group, label, show = TRUE)}
\arguments{
\item{\verb{group}}{the radio button group}
\item{\verb{label}}{the text of the button, with an underscore in front of the
mnemonic character}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkRadioButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
