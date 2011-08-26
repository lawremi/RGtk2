\alias{gtkTextViewSetAcceptsTab}
\name{gtkTextViewSetAcceptsTab}
\title{gtkTextViewSetAcceptsTab}
\description{Sets the behavior of the text widget when the Tab key is pressed. 
If \code{accepts.tab} is \code{TRUE}, a tab character is inserted. If \code{accepts.tab} 
is \code{FALSE} the keyboard focus is moved to the next widget in the focus 
chain.}
\usage{gtkTextViewSetAcceptsTab(object, accepts.tab)}
\arguments{
\item{\verb{object}}{A \code{\link{GtkTextView}}}
\item{\verb{accepts.tab}}{\code{TRUE} if pressing the Tab key should insert a tab
character, \code{FALSE}, if pressing the Tab key should move the
keyboard focus.}
}
\details{Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
