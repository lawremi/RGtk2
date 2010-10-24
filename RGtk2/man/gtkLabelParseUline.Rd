\alias{gtkLabelParseUline}
\name{gtkLabelParseUline}
\title{gtkLabelParseUline}
\description{
Parses the given string for underscores and converts the next
character to an underlined character.  The last character that
was underlined will have its lower-cased accelerator keyval returned  (i.e.
"_File" would return the keyval for "f".  This is
probably only used within the GTK+ library itself for menu items and such.
\strong{WARNING: \code{gtk_label_parse_uline} is deprecated and should not be used in newly-written code. Use \code{\link{gtkLabelSetUseUnderline}} instead.}
}
\usage{gtkLabelParseUline(object, string)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkLabel}} you want to affect.}
\item{\verb{string}}{The string you want to parse for underlines.}
}
\value{[numeric] The lowercase keyval of the last character underlined.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
