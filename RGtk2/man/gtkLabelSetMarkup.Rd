\alias{gtkLabelSetMarkup}
\name{gtkLabelSetMarkup}
\title{gtkLabelSetMarkup}
\description{Parses \code{str} which is marked up with the Pango text markup language, setting the
label's text and attribute list based on the parse results. If the \code{str} is
external data, you may need to escape it with \code{gMarkupEscapeText()} or
\code{gMarkupPrintfEscaped()}:
\preformatted{## RGtk2 has no support for GMarkup}}
\usage{gtkLabelSetMarkup(object, str)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkLabel}}}
\item{\verb{str}}{a markup string (see Pango markup format)}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
