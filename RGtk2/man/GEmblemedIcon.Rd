\alias{GEmblemedIcon}
\alias{gEmblemedIcon}
\name{GEmblemedIcon}
\title{GEmblemedIcon}
\description{Icon with emblems}
\section{Methods and Functions}{
\code{\link{gEmblemedIconNew}(icon, emblem)}\cr
\code{\link{gEmblemedIconGetIcon}(object)}\cr
\code{\link{gEmblemedIconGetEmblems}(object)}\cr
\code{\link{gEmblemedIconAddEmblem}(object, emblem)}\cr
\code{gEmblemedIcon(icon, emblem)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GEmblemedIcon}}
\section{Interfaces}{GEmblemedIcon implements
 \code{\link{GIcon}}.}
\section{Detailed Description}{\code{\link{GEmblemedIcon}} is an implementation of \code{\link{GIcon}} that supports
adding an emblem to an icon. Adding multiple emblems to an
icon is ensured via \code{\link{gEmblemedIconAddEmblem}}. 
  
Note that \code{\link{GEmblemedIcon}} allows no control over the position
of the emblems. See also \code{\link{GEmblem}} for more information.}
\section{Structures}{\describe{\item{\verb{GEmblemedIcon}}{
An implementation of \code{\link{GIcon}} for icons with emblems.

}}}
\section{Convenient Construction}{\code{gEmblemedIcon} is the equivalent of \code{\link{gEmblemedIconNew}}.}
\references{\url{https://developer-old.gnome.org/gio/stable/GEmblemedIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
