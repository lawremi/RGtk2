\alias{GIcon}
\name{GIcon}
\title{GIcon}
\description{Interface for icons}
\section{Methods and Functions}{
\code{\link{gIconHash}(icon)}\cr
\code{\link{gIconEqual}(object, icon2)}\cr
\code{\link{gIconToString}(object)}\cr
\code{\link{gIconNewForString}(str, .errwarn = TRUE)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----GIcon}}
\section{Implementations}{GIcon is implemented by
 \code{\link{GEmblem}},  \code{\link{GEmblemedIcon}},  \code{\link{GFileIcon}} and  \code{\link{GThemedIcon}}.}
\section{Interface Derivations}{GIcon is required by
 \code{\link{GLoadableIcon}}.}
\section{Detailed Description}{\code{\link{GIcon}} is a very minimal interface for icons. It provides functions
for checking the equality of two icons, hashing of icons and
serializing an icon to and from strings.
  \code{\link{GIcon}} does not provide the actual pixmap for the icon as this is out 
of GIO's scope, however implementations of \code{\link{GIcon}} may contain the name 
of an icon (see \code{\link{GThemedIcon}}), or the path to an icon (see \code{\link{GLoadableIcon}}). 
  
To obtain a hash of a \code{\link{GIcon}}, see \code{\link{gIconHash}}.
  
To check if two \verb{GIcons} are equal, see \code{\link{gIconEqual}}.
  
For serializing a \code{\link{GIcon}}, use \code{\link{gIconToString}} and
\code{\link{gIconNewForString}}.
  
If your application or library provides one or more \code{\link{GIcon}}
implementations you need to ensure that each \code{\link{GType}} is registered
with the type system prior to calling \code{\link{gIconNewForString}}.}
\section{Structures}{\describe{\item{\verb{GIcon}}{
An abstract type that specifies an icon.

}}}
\references{\url{https://developer-old.gnome.org/gio/stable/GIcon.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
