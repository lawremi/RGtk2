\name{transparent-type}
\alias{transparent-type}
\alias{as.struct}
\title{Transparent types in RGtk2}
\description{
A \emph{transparent type} in RGtk2 is a non-primitive type passed between 
the user and the API as an ordinary R object (usually a list with a defined structure).
}
\details{
The RGtk2 documentation defines the public structure of every object. 
Some of these have been tagged as being \emph{transparent}, indicating that 
the R programmer need not obtain an external object but rather simply create 
the analagous structure in R. \emph{Transparent types} are usually simple types 
that would be created inline in C code for convenience, instead of 
invoking a function with a large number of arguments. RGtk2 emulates this in R.

Usually these structures are constructed as R lists, with optionally named elements.
The lists elements are matched up to structure fields according to the same
logic as function calls to function definitions (see \code{\link{match.call}}).
}
\author{Michael Lawrence}
\seealso{
\code{\link{GParamSpec}}
 \code{\link{GtkFileFilterInfo}}
 \code{\link{GtkTargetEntry}}
 \code{\link{AtkAttribute}}

    \code{\link{GtkSettingsValue}}
 \code{\link{GClosure}}
 \code{\link{GType}}

    \code{\link{GtkStockItem}}
 \code{\link{GtkItemFactoryEntry}}
 \code{\link{GtkAllocation}}
 \code{\link{GdkAtom}}
 \code{\link{GTimeVal}}

    \code{\link{PangoRectangle}}
 \code{\link{GdkRectangle}}
 \code{\link{AtkAttributeSet}}
 \code{\link{GdkRgbCmap}}
 \code{\link{GdkKeymapKey}}
 \code{\link{GdkGCValues}}
 \code{\link{GdkGeometry}}

    \code{\link{GdkPoint}}
 \code{\link{GdkSegment}}
 \code{\link{GdkColor}}
 \code{\link{GdkNativeWindow}}
 \code{\link{GError}}
 \code{\link{GdkWindowAttr}}
 \code{\link{GdkTrapezoid}}

	\code{\link{GtkActionEntry}}
 \code{\link{GtkToggleActionEntry}}
 \code{\link{GtkRadioActionEntry}}
 \code{\link{CairoPath}}
 \code{\link{CairoGlyph}}

	\code{\link{CairoPathData}}
 \code{\link{AtkTextRectangle}}
 \code{\link{AtkTextRange}}
 \code{\link{GdkSpan}}
 \code{\link{GdkTimeCoord}}
}
\keyword{interface}


