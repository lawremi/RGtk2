\alias{cairoPushGroup}
\name{cairoPushGroup}
\title{cairoPushGroup}
\description{Temporarily redirects drawing to an intermediate surface known as a
group. The redirection lasts until the group is completed by a call
to \code{\link{cairoPopGroup}} or \code{\link{cairoPopGroupToSource}}. These calls
provide the result of any drawing to the group as a pattern,
(either as an explicit object, or set as the source pattern).}
\usage{cairoPushGroup(cr)}
\arguments{\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}}
\details{This group functionality can be convenient for performing
intermediate compositing. One common use of a group is to render
objects as opaque within the group, (so that they occlude each
other), and then blend the result with translucence onto the
destination.
  
Groups can be nested arbitrarily deep by making balanced calls to
\code{\link{cairoPushGroup}}/\code{\link{cairoPopGroup}}. Each call pushes/pops the new
target group onto/from a stack.
  
The \code{\link{cairoPushGroup}} function calls \code{\link{cairoSave}} so that any
changes to the graphics state will not be visible outside the
group, (the pop_group functions call \code{\link{cairoRestore}}).
  
By default the intermediate group will have a content type of
\code{CAIRO_CONTENT_COLOR_ALPHA}. Other content types can be chosen for
the group by using \code{\link{cairoPushGroupWithContent}} instead.
  
As an example, here is how one might fill and stroke a path with
translucence, but without any portion of the fill being visible
under the stroke:
  \preformatted{
cr$pushGroup()
cr$setSource(fill_pattern)
cr$fillPreserve()
cr$setSource(stroke_pattern)
cr$stroke()
cr$popGroupToSource()
cr$paintWithAlpha(alpha)
}  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
