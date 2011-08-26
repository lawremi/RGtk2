\alias{gtkIconSetNew}
\name{gtkIconSetNew}
\title{gtkIconSetNew}
\description{Creates a new \code{\link{GtkIconSet}}. A \code{\link{GtkIconSet}} represents a single icon
in various sizes and widget states. It can provide a \code{\link{GdkPixbuf}}
for a given size and state on request, and automatically caches
some of the rendered \code{\link{GdkPixbuf}} objects.}
\usage{gtkIconSetNew()}
\details{Normally you would use \code{\link{gtkWidgetRenderIcon}} instead of
using \code{\link{GtkIconSet}} directly. The one case where you'd use
\code{\link{GtkIconSet}} is to create application-specific icon sets to place in
a \code{\link{GtkIconFactory}}.}
\value{[\code{\link{GtkIconSet}}] a new \code{\link{GtkIconSet}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
