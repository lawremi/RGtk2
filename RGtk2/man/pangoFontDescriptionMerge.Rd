\alias{pangoFontDescriptionMerge}
\name{pangoFontDescriptionMerge}
\title{pangoFontDescriptionMerge}
\description{Merges the fields that are set in \code{desc.to.merge} into the fields in
\code{desc}.  If \code{replace.existing} is \code{FALSE}, only fields in \code{desc} that
are not already set are affected. If \code{TRUE}, then fields that are
already set will be replaced as well.}
\usage{pangoFontDescriptionMerge(object, desc.to.merge, replace.existing)}
\arguments{
\item{\code{object}}{[\code{\link{PangoFontDescription}}]  a \code{\link{PangoFontDescription}}}
\item{\code{desc.to.merge}}{[\code{\link{PangoFontDescription}}]  the \code{\link{PangoFontDescription}} to merge from}
\item{\code{replace.existing}}{[logical]  if \code{TRUE}, replace fields in \code{desc} with the
  corresponding values from \code{desc.to.merge}, even if they
  are already exist.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
