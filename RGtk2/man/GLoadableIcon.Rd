\alias{GLoadableIcon}
\name{GLoadableIcon}
\title{GLoadableIcon}
\description{Loadable Icons}
\section{Methods and Functions}{
\code{\link{gLoadableIconLoad}(object, size, cancellable = NULL, .errwarn = TRUE)}\cr
\code{\link{gLoadableIconLoadAsync}(object, size, cancellable = NULL, callback, user.data = NULL)}\cr
\code{\link{gLoadableIconLoadFinish}(object, res, type, .errwarn = TRUE)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GLoadableIcon}}
\section{Implementations}{GLoadableIcon is implemented by
 \code{\link{GFileIcon}}.}
\section{Detailed Description}{Extends the \code{\link{GIcon}} interface and adds the ability to 
load icons from streams.}
\section{Structures}{\describe{\item{\verb{GLoadableIcon}}{
Generic type for all kinds of icons that can be loaded
as a stream.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GLoadableIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
