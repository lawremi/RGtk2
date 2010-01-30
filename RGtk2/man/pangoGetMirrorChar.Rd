\alias{pangoGetMirrorChar}
\name{pangoGetMirrorChar}
\title{pangoGetMirrorChar}
\description{
If \code{ch} has the Unicode mirrored property and there is another Unicode
character that typically has a glyph that is the mirror image of \code{ch}'s
glyph, puts that character in the address pointed to by \code{mirrored.ch}.
\strong{WARNING: \code{pango_get_mirror_char} is deprecated and should not be used in newly-written code.}
}
\usage{pangoGetMirrorChar(ch)}
\arguments{\item{\verb{ch}}{[numeric]  a Unicode character}}
\details{Use \code{gUnicharGetMirrorChar()} instead; the docs for that function
provide full details.  }
\value{
A list containing the following elements:
\item{retval}{[logical] \code{TRUE} if \code{ch} has a mirrored character and \code{mirrored.ch} is
filled in, \code{FALSE} otherwise}
\item{\verb{mirrored.ch}}{[numeric]  location to store the mirrored character}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
