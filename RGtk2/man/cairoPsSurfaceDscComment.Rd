\alias{cairoPsSurfaceDscComment}
\name{cairoPsSurfaceDscComment}
\title{cairoPsSurfaceDscComment}
\description{Emit a comment into the PostScript output for the given surface.}
\usage{cairoPsSurfaceDscComment(surface, comment)}
\arguments{
\item{\verb{surface}}{[\code{\link{CairoSurface}}]  a PostScript \code{\link{CairoSurface}}}
\item{\verb{comment}}{[char]  a comment string to be emitted into the PostScript output}
}
\details{The comment is expected to conform to the PostScript Language
Document Structuring Conventions (DSC). Please see that manual for
details on the available comments and their meanings. In
particular, the \%\code{IncludeFeature} comment allows a
device-independent means of controlling printer device features. So
the PostScript Printer Description Files Specification will also be
a useful reference.
  
The comment string must begin with a percent character (\%) and the
total length of the string (including any initial percent
characters) must not exceed 255 characters. Violating either of
these conditions will place \code{surface} into an error state. But
beyond these two conditions, this function will not enforce
conformance of the comment with any particular specification.
  
The comment string should not have a trailing newline.
  
The DSC specifies different sections in which particular comments
can appear. This function provides for comments to be emitted
within three sections: the header, the Setup section, and the
PageSetup section.  Comments appearing in the first two sections
apply to the entire document while comments in the BeginPageSetup
section apply only to a single page.
  
For comments to appear in the header section, this function should
be called after the surface is created, but before a call to
\code{cairoPsSurfaceBeginSetup()}.
  
For comments to appear in the Setup section, this function should
be called after a call to \code{cairoPsSurfaceBeginSetup()} but before
a call to \code{cairoPsSurfaceBeginPageSetup()}.
  
For comments to appear in the PageSetup section, this function
should be called after a call to \code{cairoPsSurfaceBeginPageSetup()}.
  
Note that it is only necessary to call \code{cairoPsSurfaceBeginPageSetup()}
for the first page of any surface. After a call to
\code{\link{cairoShowPage}} or \code{\link{cairoCopyPage}} comments are unambiguously
directed to the PageSetup section of the current page. But it
doesn't hurt to call this function at the beginning of every page
as that consistency may make the calling code simpler.
  
As a final note, cairo automatically generates several comments on
its own. As such, applications must not manually generate any of
the following comments:
  
Header section: \%!PS-Adobe-3.0, \%\code{Creator}, \%\code{CreationDate}, \%\code{Pages},
\%\code{BoundingBox}, \%\code{DocumentData}, \%\code{LanguageLevel}, \%\code{EndComments}.
  
Setup section: \%\code{BeginSetup}, \%\code{EndSetup}
  
PageSetup section: \%\code{BeginPageSetup}, \%\code{PageBoundingBox},
\%\code{EndPageSetup}.
  
Other sections: \%\code{BeginProlog}, \%\code{EndProlog}, \%\code{Page}, \%\code{Trailer}, \%\code{EOF}
  
Here is an example sequence showing how this function might be used:
  \preformatted{
surface <- cairoPsSurfaceCreate(filename, width, height)
# ...
surface$dscComment("\%Title: My excellent document")
surface$dscComment("\%Copyright: Copyright (C) 2006 Cairo Lover")
# ...
surface$dscBeginSetup()
surface$dscComment("\%IncludeFeature: *MediaColor White")
# ...
surface$dscBeginPageSetup()
surface$dscComment("\%IncludeFeature: *PageSize A3")
surface$dscComment("\%IncludeFeature: *InputSlot LargeCapacity")
surface$dscComment("\%IncludeFeature: *MediaType Glossy")
surface$dscComment("\%IncludeFeature: *MediaColor Blue")
# ... draw to first page here ..
cr$showPage()
# ...
surface$dscComment(surface, "\%IncludeFeature: *PageSize A5")
# ...
}  
  Since 1.2}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
