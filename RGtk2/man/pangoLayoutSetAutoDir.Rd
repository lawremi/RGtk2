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
\item{\verb{object}}{[\code{\link{PangoLayout}}]  a \code{\link{PangoLayout}}}
\item{\verb{auto.dir}}{[logical]  if \code{TRUE}, compute the bidirectional base direction
  from the layout's contents.}
}
\details{When \code{FALSE}, the choice between left-to-right and
right-to-left layout is done according to the base direction
of the layout's \code{\link{PangoContext}}. (See \code{\link{pangoContextSetBaseDir}}).
  
When the auto-computed direction of a paragraph differs from the
base direction of the context, the interpretation of
\code{PANGO_ALIGN_LEFT} and \code{PANGO_ALIGN_RIGHT} are swapped.  
  Since 1.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
