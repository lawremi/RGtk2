\alias{AtkHypertext}
\name{AtkHypertext}
\title{AtkHypertext}
\description{The ATK interface which provides standard mechanism for manipulating hyperlinks.}
\usage{
\link{atkHypertextGetLink}(object, link.index)
\link{atkHypertextGetNLinks}(object)
\link{atkHypertextGetLinkIndex}(object, char.index)
}
\section{Hierarchy}{\preformatted{  GInterface
   +----AtkHypertext}}
\section{Structures}{\describe{\item{\code{AtkHypertext}}{
The AtkHypertext structure does not contain any fields.

}}}
\section{Implementations}{AtkHypertext is implemented by
 \code{\link{AtkNoOpObject}}.}
\section{Signals}{\describe{\item{\code{link-selected(atkhypertext, arg1, user.data)}}{
The "link-selected" signal is emitted by an AtkHyperText object when one of
the hyperlinks associated with the object is selected.

\describe{
\item{\code{atkhypertext}}{[\code{\link{AtkHypertext}}] the object which received the signal.}
\item{\code{arg1}}{[integer] the index of the hyperlink which is selected}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/AtkHypertext.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
