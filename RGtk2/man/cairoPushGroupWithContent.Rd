\alias{cairoPushGroupWithContent}
\name{cairoPushGroupWithContent}
\title{cairoPushGroupWithContent}
\description{Temporarily redirects drawing to an intermediate surface known as a
group. The redirection lasts until the group is completed by a call
to \code{\link{cairoPopGroup}} or \code{\link{cairoPopGroupToSource}}. These calls
provide the result of any drawing to the group as a pattern,
(either as an explicit object, or set as the source pattern).}
\usage{cairoPushGroupWithContent(cr, content)}
\arguments{
\item{\verb{cr}}{[\code{\link{Cairo}}]  a cairo context}
\item{\verb{content}}{[\code{\link{CairoContent}}]  a \code{\link{CairoContent}} indicating the type of group that
          will be created}
}
\details{The group will have a content type of \code{content}. The ability to
control this content type is the only distinction between this
function and \code{\link{cairoPushGroup}} which you should see for a more
detailed description of group rendering.  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
