\alias{gtkButtonNewWithMnemonic}
\name{gtkButtonNewWithMnemonic}
\title{gtkButtonNewWithMnemonic}
\description{Creates a new \code{\link{GtkButton}} containing a label.
If characters in \code{label} are preceded by an underscore, they are underlined.
If you need a literal underscore character in a label, use '__' (two 
underscores). The first underlined character represents a keyboard 
accelerator called a mnemonic.
Pressing Alt and that key activates the button.}
\usage{gtkButtonNewWithMnemonic(label, show = TRUE)}
\arguments{\item{\verb{label}}{The text of the button, with an underscore in front of the
mnemonic character}}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkButton}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
