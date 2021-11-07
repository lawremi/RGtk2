\alias{pango-Bidirectional-Text}
\alias{PangoDirection}
\alias{PangoBidiType}
\name{pango-Bidirectional-Text}
\title{Bidirectional Text}
\description{Types and functions to help with handling bidirectional text}
\section{Methods and Functions}{
\code{\link{pangoUnicharDirection}(ch)}\cr
\code{\link{pangoFindBaseDir}(text, length = -1)}\cr
\code{\link{pangoGetMirrorChar}(ch)}\cr
\code{\link{pangoBidiTypeForUnichar}(ch)}\cr
}
\section{Detailed Description}{Pango supports bidirectional text (like Arabic and Hebrew) automatically.
Some applications however, need some help to correctly handle bidirectional
text.
  
The \code{\link{PangoDirection}} type can be used with \code{\link{pangoContextSetBaseDir}} to
instruct Pango about direction of text, though in most cases Pango detects
that correctly and automatically.  The rest of the facilities in this section
are used internally by Pango already, and are provided to help applications
that need more direct control over bidirectional setting of text.}
\section{Enums and Flags}{\describe{
\item{\verb{PangoDirection}}{
The \code{\link{PangoDirection}} type represents a direction in the
Unicode bidirectional algorithm; not every value in this
enumeration makes sense for every usage of \code{\link{PangoDirection}};
for example, the return value of \code{\link{pangoUnicharDirection}}
and \code{\link{pangoFindBaseDir}} cannot be \code{PANGO_DIRECTION_WEAK_LTR}
or \code{PANGO_DIRECTION_WEAK_RTL}, since every character is either
neutral or has a strong direction; on the other hand
\code{PANGO_DIRECTION_NEUTRAL} doesn't make sense to pass
to \code{\link{pangoItemizeWithBaseDir}}.
  
The \code{PANGO_DIRECTION_TTB_LTR}, \code{PANGO_DIRECTION_TTB_RTL}
values come from an earlier interpretation of this
enumeration as the writing direction of a block of
text and are no longer used; See \code{\link{PangoGravity}} for how
vertical text is handled in Pango.  

\describe{
\item{\verb{ltr}}{ A strong left-to-right direction}
\item{\verb{rtl}}{ A strong right-to-left direction}
\item{\verb{ttb-ltr}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_RTL}.}
\item{\verb{ttb-rtl}}{ Deprecated value; treated the
  same as \code{PANGO_DIRECTION_LTR}}
}

}
\item{\verb{PangoBidiType}}{
The \code{\link{PangoBidiType}} type represents the bidirectional character
type of a Unicode character as specified by the
Unicode bidirectional algorithm (\url{http://www.unicode.org/reports/tr9/}).  
  Since 1.22

\describe{
\item{\verb{l}}{ Left-to-Right}
\item{\verb{lre}}{ Left-to-Right Embedding}
\item{\verb{lro}}{ Left-to-Right Override}
\item{\verb{r}}{ Right-to-Left}
\item{\verb{al}}{ Right-to-Left Arabic}
\item{\verb{rle}}{ Right-to-Left Embedding}
\item{\verb{rlo}}{ Right-to-Left Override}
\item{\verb{pdf}}{ Pop Directional Format}
\item{\verb{en}}{ European Number}
\item{\verb{es}}{ European Number Separator}
\item{\verb{et}}{ European Number Terminator}
\item{\verb{an}}{ Arabic Number}
\item{\verb{cs}}{ Common Number Separator}
\item{\verb{nsm}}{ Nonspacing Mark}
\item{\verb{bn}}{ Boundary Neutral}
\item{\verb{b}}{ Paragraph Separator}
\item{\verb{s}}{ Segment Separator}
\item{\verb{ws}}{ Whitespace}
\item{\verb{on}}{ Other Neutrals}
}

}
}}
\references{\url{https://docs.gtk.org/Pango/}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
