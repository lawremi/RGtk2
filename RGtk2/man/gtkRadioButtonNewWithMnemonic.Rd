\alias{gtkRadioButtonNewWithMnemonic}
\name{gtkRadioButtonNewWithMnemonic}
\title{gtkRadioButtonNewWithMnemonic}
\description{Creates a new \verb{\link{GtkRadioButton}} containing a label, adding it to the same 
group as \code{group}. The label will be created using 
\code{\link{gtkLabelNewWithMnemonic}}, so underscores in \code{label} indicate the 
mnemonic for the button.}
\usage{gtkRadioButtonNewWithMnemonic(group, label, show = TRUE)}
\arguments{
\item{\verb{group}}{[list]  the radio button group}
\item{\verb{label}}{[character]  the text of the button, with an underscore in front of the
        mnemonic character}
}
\value{[\verb{\link{GtkWidget}}]  a new \verb{\link{GtkRadioButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
