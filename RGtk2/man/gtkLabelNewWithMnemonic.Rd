\alias{gtkLabelNewWithMnemonic}
\name{gtkLabelNewWithMnemonic}
\title{gtkLabelNewWithMnemonic}
\description{Creates a new \code{\link{GtkLabel}}, containing the text in \code{str}.}
\usage{gtkLabelNewWithMnemonic(str = NULL, show = TRUE)}
\arguments{\item{\verb{str}}{The text of the label, with an underscore in front of the
mnemonic character}}
\details{If characters in \code{str} are preceded by an underscore, they are
underlined. If you need a literal underscore character in a label, use
'__' (two underscores). The first underlined character represents a 
keyboard accelerator called a mnemonic. The mnemonic key can be used 
to activate another widget, chosen automatically, or explicitly using
\code{\link{gtkLabelSetMnemonicWidget}}.
  
If \code{\link{gtkLabelSetMnemonicWidget}} is not called, then the first 
activatable ancestor of the \code{\link{GtkLabel}} will be chosen as the mnemonic 
widget. For instance, if the label is inside a button or menu item, 
the button or menu item will automatically become the mnemonic widget 
and be activated by the mnemonic.}
\value{[\code{\link{GtkWidget}}] the new \code{\link{GtkLabel}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
