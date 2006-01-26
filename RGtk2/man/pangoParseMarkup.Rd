\alias{pangoParseMarkup}
\name{pangoParseMarkup}
\title{pangoParseMarkup}
\description{Parses marked-up text (see
markup format) to create
a plaintext string and an attribute list.}
\usage{pangoParseMarkup(markup.text, accel.marker, .errwarn = TRUE)}
\arguments{
\item{\code{markup.text}}{[char]  markup to parse (see markup format)}
\item{\code{accel.marker}}{[numeric]  character that precedes an accelerator, or 0 for none}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{accel.marker} is nonzero, the given character will mark the
character following it as an accelerator. For example, the accel
marker might be an ampersand or underscore. All characters marked
as an accelerator will receive a \code{PANGO_UNDERLINE_LOW} attribute,
and the first character so marked will be returned in \code{accel.char}.
Two \code{accel.marker} characters following each other produce a single
literal \code{accel.marker} character.  }
\value{
A list containing the following elements:
\item{retval}{[logical]  FALSE if \code{error} is set, otherwise TRUE}
\item{\code{attr.list}}{[\code{\link{PangoAttrList}}]  return location for a \code{\link{PangoAttrList}}, or NULL}
\item{\code{text}}{[char]  return location for text with tags stripped, or NULL}
\item{\code{accel.char}}{[numeric]  return location for accelerator char, or NULL}
\item{\code{error}}{[\code{\link{GError}}]  return location for errors, or NULL}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
