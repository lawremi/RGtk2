\alias{gtkRadioMenuItemNewWithMnemonicFromWidget}
\name{gtkRadioMenuItemNewWithMnemonicFromWidget}
\title{gtkRadioMenuItemNewWithMnemonicFromWidget}
\description{Creates a new GtkRadioMenuItem containing a label. The label will be
created using \code{\link{gtkLabelNewWithMnemonic}}, so underscores in label
indicate the mnemonic for the menu item.}
\usage{gtkRadioMenuItemNewWithMnemonicFromWidget(group = NULL, label, show = TRUE)}
\arguments{
\item{\verb{group}}{[\verb{\link{GtkRadioMenuItem}}]  An existing \verb{\link{GtkRadioMenuItem}}}
\item{\verb{label}}{[character]  the text of the button, with an underscore in front of the
        mnemonic character}
}
\details{The new \verb{\link{GtkRadioMenuItem}} is added to the same group as \code{group}.  

  Since  2.4}
\value{[\verb{\link{GtkWidget}}]  The new \verb{\link{GtkRadioMenuItem}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
