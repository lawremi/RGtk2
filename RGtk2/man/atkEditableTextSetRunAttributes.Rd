\alias{atkEditableTextSetRunAttributes}
\name{atkEditableTextSetRunAttributes}
\title{atkEditableTextSetRunAttributes}
\description{Sets the attributes for a specified range. See the ATK_ATTRIBUTE
functions (such as \verb{ATK_ATTRIBUTE_LEFT_MARGIN}) for examples of attributes 
that can be set. Note that other attributes that do not have corresponding
ATK_ATTRIBUTE functions may also be set for certain text widgets.}
\usage{atkEditableTextSetRunAttributes(object, attrib.set, start.offset, 
    end.offset)}
\arguments{
\item{\verb{object}}{[\code{\link{AtkEditableText}}]  an \code{\link{AtkEditableText}}}
\item{\verb{attrib.set}}{[\code{\link{AtkAttributeSet}}]  an \code{\link{AtkAttributeSet}}}
\item{\verb{start.offset}}{[integer]  start of range in which to set attributes}
\item{\verb{end.offset}}{[integer]  end of range in which to set attributes}
}
\value{[logical] \code{TRUE} if attributes successfully set for the specified
range, otherwise \code{FALSE}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
