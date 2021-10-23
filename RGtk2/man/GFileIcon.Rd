\alias{GFileIcon}
\alias{gFileIcon}
\name{GFileIcon}
\title{GFileIcon}
\description{Icons pointing to an image file}
\section{Methods and Functions}{
\code{\link{gFileIconNew}(file)}\cr
\code{\link{gFileIconGetFile}(object)}\cr
\code{gFileIcon(file)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GFileIcon}}
\section{Interfaces}{GFileIcon implements
 \code{\link{GIcon}} and  \code{\link{GLoadableIcon}}.}
\section{Detailed Description}{\code{\link{GFileIcon}} specifies an icon by pointing to an image file
to be used as icon.}
\section{Structures}{\describe{\item{\verb{GFileIcon}}{
Gets an icon for a \code{\link{GFile}}. Implements \code{\link{GLoadableIcon}}.

}}}
\section{Convenient Construction}{\code{gFileIcon} is the equivalent of \code{\link{gFileIconNew}}.}
\section{Properties}{\describe{\item{\verb{file} [\code{\link{GFile}} : *                : Read / Write / Construct Only]}{

The file containing the icon.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GFileIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
