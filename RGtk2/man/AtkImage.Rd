\alias{AtkImage}
\name{AtkImage}
\title{AtkImage}
\description{The ATK Interface implemented by components which expose image or pixmap
content on-screen.}
\section{Methods and Functions}{
\code{\link{atkImageGetImagePosition}(object, coord.type)}\cr
\code{\link{atkImageGetImageDescription}(object)}\cr
\code{\link{atkImageSetImageDescription}(object, description)}\cr
\code{\link{atkImageGetImageSize}(object)}\cr
\code{\link{atkImageGetImageLocale}(object)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkImage}}
\section{Implementations}{AtkImage is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{\code{\link{AtkImage}} should be implemented by \code{\link{AtkObject}} subtypes on behalf of
components which display image/pixmap information onscreen, and which
provide information (other than just widget borders, etc.) via that
image content.  For instance, icons, buttons with icons, toolbar
elements, and image viewing panes typically should implement \code{\link{AtkImage}}.
  \code{\link{AtkImage}} primarily provides two types of information: coordinate
information (useful for screen review mode of screenreaders, and for use
by onscreen magnifiers), and descriptive information.  The descriptive
information is provided for alternative, text-only presentation of the
most significant information present in the image.}
\section{Structures}{\describe{\item{\verb{AtkImage}}{
The AtkImage structure does not contain any fields.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkImage.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
