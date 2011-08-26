\alias{gtkEntrySetVisibility}
\name{gtkEntrySetVisibility}
\title{gtkEntrySetVisibility}
\description{Sets whether the contents of the entry are visible or not. 
When visibility is set to \code{FALSE}, characters are displayed 
as the invisible char, and will also appear that way when 
the text in the entry widget is copied elsewhere.}
\usage{gtkEntrySetVisibility(object, visible)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkEntry}}}
\item{\verb{visible}}{\code{TRUE} if the contents of the entry are displayed
as plaintext}
}
\details{By default, GTK+ picks the best invisible character available
in the current font, but it can be changed with
\code{\link{gtkEntrySetInvisibleChar}}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
