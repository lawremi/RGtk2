\alias{pangoTabArraySetTab}
\name{pangoTabArraySetTab}
\title{pangoTabArraySetTab}
\description{Sets the alignment and location of a tab stop.
\code{alignment} must always be \verb{PANGO_TAB_LEFT} in the current
implementation.}
\usage{pangoTabArraySetTab(object, tab.index, alignment, location)}
\arguments{
\item{\verb{object}}{a \code{\link{PangoTabArray}}}
\item{\verb{tab.index}}{the index of a tab stop}
\item{\verb{alignment}}{tab alignment}
\item{\verb{location}}{tab location in Pango units}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
