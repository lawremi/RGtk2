\alias{pangoLayoutSetAutoDir}
\name{pangoLayoutSetAutoDir}
\title{pangoLayoutSetAutoDir}
\description{Sets whether to calculate the bidirectional base direction
for the layout according to the contents of the layout;
when this flag is on (the default), then paragraphs in
   \code{layout} that begin with strong right-to-left characters
(Arabic and Hebrew principally), will have right-to-left
layout, paragraphs with letters from other scripts will
have left-to-right layout. Paragraphs with only neutral
characters get their direction from the surrounding paragraphs.}
\usage{pangoLayoutSetAutoDir(object, auto.dir)}
\arguments{
\item{\code{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\code{auto.dir}}{[logical]  if \code{TRUE}, compute the bidirectional base direction
  from the layout's contents.}
}
\details{When \code{FALSE}, the choice between left-to-right and
right-to-left layout is done by according to the base direction
of the layout's \code{\link{PangoContext}}. (See \code{\link{pangoContextSetBaseDir}}).
  
When the auto-computed direction or a paragraph differs from the
base direction of the context, then the interpretation of
\code{PANGO_ALIGN_LEFT} and \code{PANGO_ALIGN_RIGHT} are swapped.  }
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
