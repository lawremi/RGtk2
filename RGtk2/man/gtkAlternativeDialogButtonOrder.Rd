\alias{gtkAlternativeDialogButtonOrder}
\name{gtkAlternativeDialogButtonOrder}
\title{gtkAlternativeDialogButtonOrder}
\description{Returns \code{TRUE} if dialogs are expected to use an alternative
button order on the screen \code{screen}. See
\code{\link{gtkDialogSetAlternativeButtonOrder}} for more details
about alternative button order. }
\usage{gtkAlternativeDialogButtonOrder(object)}
\arguments{\item{\verb{object}}{a \code{\link{GdkScreen}}, or \code{NULL} to use the default screen. \emph{[  \acronym{allow-none}  ]}}}
\details{If you need to use this function, you should probably connect
to the ::notify:gtk-alternative-button-order signal on the
\code{\link{GtkSettings}} object associated to \code{screen}, in order to be 
notified if the button order setting changes.
  Since 2.6}
\value{[logical] Whether the alternative button order should be used}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
