\alias{gtkLabelSetTextWithMnemonic}
\name{gtkLabelSetTextWithMnemonic}
\title{gtkLabelSetTextWithMnemonic}
\description{Sets the label's text from the string \code{str}.
If characters in \code{str} are preceded by an underscore, they are underlined
indicating that they represent a keyboard accelerator called a mnemonic.
The mnemonic key can be used to activate another widget, chosen 
automatically, or explicitly using \code{\link{gtkLabelSetMnemonicWidget}}.}
\usage{gtkLabelSetTextWithMnemonic(object, str)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkLabel}}}
\item{\verb{str}}{a string}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
