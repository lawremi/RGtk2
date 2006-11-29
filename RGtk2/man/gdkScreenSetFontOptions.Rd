\alias{gdkScreenSetFontOptions}
\name{gdkScreenSetFontOptions}
\title{gdkScreenSetFontOptions}
\description{Sets the default font options for the screen. These
options will be set on any \code{\link{PangoContext}}'s newly created
with \code{\link{gdkPangoContextGetForScreen}}. Changing the
default set of font options does not affect contexts that
have already been created.}
\usage{gdkScreenSetFontOptions(object, options)}
\arguments{
\item{\code{object}}{[\code{\link{GdkScreen}}]  a \code{\link{GdkScreen}}}
\item{\code{options}}{[\code{\link{CairoFontOptions}}]  a \code{\link{CairoFontOptions}}, or \code{NULL} to unset any
  previously set default font options.}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
