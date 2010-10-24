\alias{gtkWidgetMnemonicActivate}
\name{gtkWidgetMnemonicActivate}
\title{gtkWidgetMnemonicActivate}
\description{Emits the \code{\link{gtkWidgetMnemonicActivate}} signal.}
\usage{gtkWidgetMnemonicActivate(object, group.cycling)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkWidget}}}
\item{\verb{group.cycling}}{\code{TRUE} if there are other widgets with the same mnemonic}
}
\details{The default handler for this signal activates the \code{widget} if
\code{group.cycling} is \code{FALSE}, and just grabs the focus if \code{group.cycling}
is \code{TRUE}.}
\value{[logical] \code{TRUE} if the signal has been handled}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
