\alias{pangoFontDescriptionMerge}
\name{pangoFontDescriptionMerge}
\title{pangoFontDescriptionMerge}
\description{Merges the fields that are set in \code{desc.to.merge} into the fields in
\code{desc}.  If \code{replace.existing} is \code{FALSE}, only fields in \code{desc} that
are not already set are affected. If \code{TRUE}, then fields that are
already set will be replaced as well.}
\usage{pangoFontDescriptionMerge(object, desc.to.merge, replace.existing)}
\arguments{
\item{\verb{object}}{[\verb{\link{PangoFontDescription}}]  a \verb{\link{PangoFontDescription}}}
\item{\verb{desc.to.merge}}{[\verb{\link{PangoFontDescription}}]  the \verb{\link{PangoFontDescription}} to merge from}
\item{\verb{replace.existing}}{[logical]  if \code{TRUE}, replace fields in \code{desc} with the
  corresponding values from \code{desc.to.merge}, even if they
  are already exist.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
