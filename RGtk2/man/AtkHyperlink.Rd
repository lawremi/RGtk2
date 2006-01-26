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

}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----AtkHyperlink}}
\section{Interfaces}{AtkHyperlink implements
 \code{\link{AtkAction}}.}
\section{Detailed Description}{An ATK object which encapsulates a link or set of links in a hypertext document.
It implements the AtkAction interface.}
\section{Structures}{\describe{\item{\code{AtkHyperlink}}{
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
\item{\code{end-index} [integer : Read]}{

The end index of the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
\item{\code{number-of-anchors} [integer : Read]}{

The number of anchors associated with the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
\item{\code{selected-link} [logical : Read]}{

Specifies whether the AtkHyperlink object is selected.  Default value: FALSE

}
\item{\code{start-index} [integer : Read]}{

The start index of the AtkHyperlink object.  Allowed values: >= 0  Default value: 0

}
}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkHyperlink.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
