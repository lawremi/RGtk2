\alias{atk-AtkHyperlinkImpl}
\alias{AtkHyperlinkImpl}
\name{atk-AtkHyperlinkImpl}
\title{AtkHyperlinkImpl}
\description{An interface from which the AtkHyperlink associated with an
AtkObject may be obtained.}
\section{Methods and Functions}{\code{\link{atkHyperlinkImplGetHyperlink}(object)}\cr}
\section{Detailed Description}{AtkHyperlinkImpl allows AtkObjects to
refer to their associated AtkHyperlink instance, if one
exists.  AtkHyperlinkImpl differs from AtkHyperlink in that 
AtkHyperlinkImpl is an interface, whereas AtkHyperlink is
a object type.  The AtkHyperlinkImpl interface allows
a client to query an AtkObject for the availability of
an associated AtkHyperlink instance, and obtain that
instance.  It is thus particularly useful in cases where
embedded content or inline content within a text object
is present, since the embedding text object implements
AtkHypertext and the inline/embedded objects are 
exposed as children which implement AtkHyperlinkImpl,
in addition to their being obtainable via AtkHypertext:getLink
followed by AtkHyperlink:getObject.}
\section{Structures}{\describe{\item{\code{AtkHyperlinkImpl}}{
\emph{undocumented
}

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/atk/atk-AtkHyperlinkImpl.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
