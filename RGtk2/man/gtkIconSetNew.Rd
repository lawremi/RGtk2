\alias{gtkIconSetNew}
\name{gtkIconSetNew}
\title{gtkIconSetNew}
\description{Creates a new \verb{\link{GtkIconSet}}. A \verb{\link{GtkIconSet}} represents a single icon
in various sizes and widget states. It can provide a \verb{\link{GdkPixbuf}}
for a given size and state on request, and automatically caches
some of the rendered \verb{\link{GdkPixbuf}} objects.}
\usage{gtkIconSetNew()}
\details{Normally you would use \code{\link{gtkWidgetRenderIcon}} instead of
using \verb{\link{GtkIconSet}} directly. The one case where you'd use
\verb{\link{GtkIconSet}} is to create application-specific icon sets to place in
a \verb{\link{GtkIconFactory}}.  }
\value{[\verb{\link{GtkIconSet}}]  a new \verb{\link{GtkIconSet}}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
