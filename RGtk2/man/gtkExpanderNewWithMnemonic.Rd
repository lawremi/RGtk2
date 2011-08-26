\alias{gtkExpanderNewWithMnemonic}
\name{gtkExpanderNewWithMnemonic}
\title{gtkExpanderNewWithMnemonic}
\description{Creates a new expander using \code{label} as the text of the label.
If characters in \code{label} are preceded by an underscore, they are underlined.
If you need a literal underscore character in a label, use '__' (two 
underscores). The first underlined character represents a keyboard 
accelerator called a mnemonic.
Pressing Alt and that key activates the button.}
\usage{gtkExpanderNewWithMnemonic(label = NULL)}
\arguments{\item{\verb{label}}{the text of the label with an underscore in front of the
mnemonic character. \emph{[  \acronym{allow-none}  ]}}}
\details{Since 2.4}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkExpander}} widget.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
