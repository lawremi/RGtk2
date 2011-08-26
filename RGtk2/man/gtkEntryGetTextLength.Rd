\alias{gtkEntryGetTextLength}
\name{gtkEntryGetTextLength}
\title{gtkEntryGetTextLength}
\description{Retrieves the current length of the text in
\code{entry}. }
\usage{gtkEntryGetTextLength(object)}
\arguments{\item{\verb{object}}{a \code{\link{GtkEntry}}}}
\details{This is equivalent to:
  \preformatted{gtk_entry_buffer_get_length (gtk_entry_get_buffer (entry));
}  Since 2.14}
\value{[integer] the current number of characters
in \code{\link{GtkEntry}}, or 0 if there are none.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
