\alias{pango-Vertical-Text}
\alias{PangoGravity}
\alias{PangoGravityHint}
\name{pango-Vertical-Text}
\title{Vertical Text}
\description{Laying text out in vertical directions}
\section{Methods and Functions}{
\code{\link{pangoGravityGetForMatrix}(matrix)}\cr
\code{\link{pangoGravityGetForScript}(script, base.gravity, hint)}\cr
}
\section{Detailed Description}{Since 1.16, Pango is able to correctly lay vertical text out.  In fact, it can
set layouts of mixed vertical and non-vertical text.  This section describes
the types used for setting vertical text parameters.}
\section{Enums and Flags}{\describe{
\item{\code{PangoGravity}}{
The \code{\link{PangoGravity}} type represents the orientation of glyphs in a segment
of text.  This is useful when rendering vertical text layouts.  In
those situations, the layout is rotated using a non-identity PangoMatrix,
and then glyph orientation is controlled using \code{\link{PangoGravity}}.
Not every value in this enumeration makes sense for every usage of
\code{\link{PangoGravity}}; for example, \code{PANGO_GRAVITY_AUTO} only can be passed to
\code{\link{pangoContextSetBaseGravity}} and can only be returned by
\code{\link{pangoContextGetBaseGravity}}.
  
See also: \code{\link{PangoGravityHint}}  

  Since  1.16

\describe{
\item{\code{south}}{ Glyphs stand upright (default)}
\item{\code{east}}{ Glyphs are rotated 90 degrees clockwise}
\item{\code{north}}{ Glyphs are upside-down}
\item{\code{west}}{ Glyphs are rotated 90 degrees counter-clockwise}
\item{\code{auto}}{ Gravity is resolved from the context matrix}
}

}
\item{\code{PangoGravityHint}}{
The \code{\link{PangoGravityHint}} defines how horizontal scripts should behave in a
vertical context.  That is, English excerpt in a vertical paragraph for
example.
  
See \code{\link{PangoGravity}}.  

  Since  1.16

\describe{
\item{\code{natural}}{ scripts will take their natural gravity based
on the base gravity and the script.  This is the default.}
\item{\code{strong}}{ always use the base gravity set, regardless of
the script.}
\item{\code{line}}{ for scripts not in their natural direction (eg.
Latin in East gravity), choose per-script gravity such that every script
respects the line progression.  This means, Latin and Arabic will take
opposite gravities and both flow top-to-bottom for example.}
}

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango/pango-Vertical-Text.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
