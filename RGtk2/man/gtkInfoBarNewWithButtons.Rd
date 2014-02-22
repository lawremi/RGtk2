\alias{gtkInfoBarNewWithButtons}
\name{gtkInfoBarNewWithButtons}
\title{gtkInfoBarNewWithButtons}
\description{Creates a new \code{\link{GtkInfoBar}} with buttons. Button text/response ID
pairs should be listed, with a \code{NULL} pointer ending the list.
Button text can be either a stock ID such as \code{GTK_STOCK_OK}, or
some arbitrary text. A response ID can be any positive number,
or one of the values in the \code{\link{GtkResponseType}} enumeration. If the
user clicks one of these dialog buttons, GtkInfoBar will emit
the "response" signal with the corresponding response ID.}
\usage{gtkInfoBarNewWithButtons(first.button.text, ..., show = TRUE)}
\arguments{
\item{\verb{first.button.text}}{stock ID or text to go in first button, or \code{NULL}. \emph{[  \acronym{allow-none}  ]}}
\item{\verb{...}}{response ID for first button, then additional buttons, ending
with \code{NULL}}
}
\value{[\code{\link{GtkWidget}}] a new \code{\link{GtkInfoBar}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
