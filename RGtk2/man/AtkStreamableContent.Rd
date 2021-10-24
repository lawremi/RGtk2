\alias{AtkStreamableContent}
\name{AtkStreamableContent}
\title{AtkStreamableContent}
\description{The ATK interface which provides access to streamable content.}
\section{Methods and Functions}{
\code{\link{atkStreamableContentGetNMimeTypes}(object)}\cr
\code{\link{atkStreamableContentGetMimeType}(object, i)}\cr
\code{\link{atkStreamableContentGetStream}(object, mime.type)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkStreamableContent}}
\section{Detailed Description}{An interface whereby an object allows its backing content to be streamed to
clients.  Typical implementors would be images or icons, HTML content, or
multimedia display/rendering widgets.
  
Negotiation of content type is allowed. Clients may examine the backing data
and transform, convert, or parse the content in order to present it in an alternate form to end-users.
  
The AtkStreamableContent interface is particularly useful for saving,
printing, or post-processing entire documents, or for persisting alternate
views of a document. If document content itself is being serialized,
stored, or converted, then use of the AtkStreamableContent interface can help
address performance issues. Unlike most ATK interfaces,
this interface is not strongly tied to the current user-agent view of the
a particular document, but may in some cases give access to the underlying model data.}
\section{Structures}{\describe{\item{\verb{AtkStreamableContent}}{
The AtkStreamableContent structure does not contain any fields.

}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkStreamableContent.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
