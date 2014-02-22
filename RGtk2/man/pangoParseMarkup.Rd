\alias{pangoParseMarkup}
\name{pangoParseMarkup}
\title{pangoParseMarkup}
\description{Parses marked-up text (see
markup format) to create
a plain-text string and an attribute list.}
\usage{pangoParseMarkup(markup.text, accel.marker, .errwarn = TRUE)}
\arguments{
\item{\verb{markup.text}}{[char]  markup to parse (see markup format)}
\item{\verb{accel.marker}}{[numeric]  character that precedes an accelerator, or 0 for none}
\item{.errwarn}{Whether to issue a warning on error or fail silently}
}
\details{If \code{accel.marker} is nonzero, the given character will mark the
character following it as an accelerator. For example, \code{accel.marker}
might be an ampersand or underscore. All characters marked
as an accelerator will receive a \code{PANGO_UNDERLINE_LOW} attribute,
and the first character so marked will be returned in \code{accel.char}.
Two \code{accel.marker} characters following each other produce a single
literal \code{accel.marker} character.
  
If any error happens, none of the output arguments are touched except
for \code{error}.  }
\value{
A list containing the following elements:
\item{retval}{[logical] \code{FALSE} if \code{error} is set, otherwise \code{TRUE}}
\item{\verb{attr.list}}{[\code{\link{PangoAttrList}}]  return location for a \code{\link{PangoAttrList}}, or \code{NULL}}
\item{\verb{text}}{[char]  return location for text with tags stripped, or \code{NULL}}
\item{\verb{accel.char}}{[numeric]  return location for accelerator char, or \code{NULL}}
\item{\verb{error}}{[\code{\link{GError}}]  return location for errors, or \code{NULL}}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
