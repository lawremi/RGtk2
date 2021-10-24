\alias{AtkHypertext}
\name{AtkHypertext}
\title{AtkHypertext}
\description{The ATK interface which provides standard mechanism for manipulating hyperlinks.}
\section{Methods and Functions}{
\code{\link{atkHypertextGetLink}(object, link.index)}\cr
\code{\link{atkHypertextGetNLinks}(object)}\cr
\code{\link{atkHypertextGetLinkIndex}(object, char.index)}\cr
}
\section{Hierarchy}{\preformatted{GInterface
   +----AtkHypertext}}
\section{Implementations}{AtkHypertext is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Detailed Description}{An interface used for objects which implement linking between multiple
resource or content locations, or multiple 'markers' within a single
document.  A Hypertext instance is associated with one or more Hyperlinks,
which are associated with particular offsets within the Hypertext's included
content.  While this interface is derived from Text, there is no requirement that Hypertext instances have textual content; they may implement Image as well, and Hyperlinks need not have non-zero text offsets.}
\section{Structures}{\describe{\item{\verb{AtkHypertext}}{
The AtkHypertext structure does not contain any fields.

}}}
\section{Signals}{\describe{\item{\code{link-selected(atkhypertext, arg1, user.data)}}{
The "link-selected" signal is emitted by an AtkHyperText object when one of
the hyperlinks associated with the object is selected.

\describe{
\item{\code{atkhypertext}}{[\code{\link{AtkHypertext}}] the object which received the signal.}
\item{\code{arg1}}{[integer] the index of the hyperlink which is selected}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}


}}}
\references{\url{https://developer-old.gnome.org/atk/1.32/AtkHypertext.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
