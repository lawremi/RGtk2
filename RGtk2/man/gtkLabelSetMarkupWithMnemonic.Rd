\alias{gtkLabelSetMarkupWithMnemonic}
\name{gtkLabelSetMarkupWithMnemonic}
\title{gtkLabelSetMarkupWithMnemonic}
\description{Parses \code{str} which is marked up with the Pango text markup language,
setting the label's text and attribute list based on the parse results.
If characters in \code{str} are preceded by an underscore, they are underlined
indicating that they represent a keyboard accelerator called a mnemonic.}
\usage{gtkLabelSetMarkupWithMnemonic(object, str)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkLabel}}}
\item{\verb{str}}{a markup string (see Pango markup format)}
}
\details{The mnemonic key can be used to activate another widget, chosen 
automatically, or explicitly using \code{\link{gtkLabelSetMnemonicWidget}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
