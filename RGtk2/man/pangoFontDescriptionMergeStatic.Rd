\alias{pangoFontDescriptionMergeStatic}
\name{pangoFontDescriptionMergeStatic}
\title{pangoFontDescriptionMergeStatic}
\description{Like \code{\link{pangoFontDescriptionMerge}}, but only a shallow copy is made
of the family name and other allocated fields. \code{desc} can only be
used until \code{desc.to. This is meant
to be used when the merged font description is only needed temporarily.}
\usage{pangoFontDescriptionMergeStatic(object, desc.to.merge, replace.existing)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{desc.to.merge}}{[\code{\link{PangoFontDescription}}]  the \code{\link{PangoFontDescription}} to merge from}
\item{\code{replace.existing}}{[logical]  if \code{TRUE}, replace fields in \code{desc} with the
  corresponding values from \code{desc.to.merge}, even if they
  are already exist.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
