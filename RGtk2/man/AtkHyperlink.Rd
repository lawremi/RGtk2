\alias{AtkHyperlink}
\name{AtkHyperlink}
\title{AtkHyperlink}
\description{An ATK object which encapsulates a link or set of links in a hypertext document.}
\section{Methods and Functions}{
\code{\link{atkHyperlinkGetUri}(object, i)}\cr
\code{\link{atkHyperlinkGetObject}(object, i)}\cr
\code{\link{atkHyperlinkGetEndIndex}(object)}\cr
\code{\link{atkHyperlinkGetStartIndex}(object)}\cr
\code{\link{atkHyperlinkIsValid}(object)}\cr
\code{\link{atkHyperlinkIsInline}(object)}\cr
\code{\link{atkHyperlinkGetNAnchors}(object)}\cr
\code{\link{atkHyperlinkIsSelectedLink}(object)}\cr
\code{\link{atkHyperlinkIsSelectedLink}(object)}\cr

}
\section{Hierarchy}{\preformatted{GObject
   +----AtkHyperlink}}
\section{Interfaces}{AtkHyperlink implements
 \code{\link{AtkAction}}.}
\section{Detailed Description}{An ATK object which encapsulates a link or set of links
(for instance in the case of client-side image maps) in a hypertext document.
It may implement the AtkAction interface.  AtkHyperlink may also be used
to refer to inline embedded content, since it allows specification of a start
and end offset within the host AtkHypertext object.}
\section{Structures}{\describe{\item{\verb{AtkHyperlink}}{
The AtkHyperlink structure should not be accessed directly.

}}}
\section{Signals}{\describe{\item{\code{link-activated(atkhyperlink, user.data)}}{
The signal link-activated is emitted when a link is activated.

\describe{
\item{\code{atkhyperlink}}{[\code{\link{AtkHyperlink}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\section{Properties}{\describe{
\item{\verb{end-index} [integer : Read]}{

The end index of the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
\item{\verb{number-of-anchors} [integer : Read]}{

The number of anchors associated with the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
\item{\verb{selected-link} [logical : Read]}{

Specifies whether the AtkHyperlink object is selected.  Default value: FALSE

}
\item{\verb{start-index} [integer : Read]}{

The start index of the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkHyperlink.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
