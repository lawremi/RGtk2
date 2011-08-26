\alias{gtkTargetListAddRichTextTargets}
\name{gtkTargetListAddRichTextTargets}
\title{gtkTargetListAddRichTextTargets}
\description{Appends the rich text targets registered with
\code{\link{gtkTextBufferRegisterSerializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeFormat}} to the target list. All
targets are added with the same \code{info}.}
\usage{gtkTargetListAddRichTextTargets(list, info, deserializable, buffer)}
\arguments{
\item{\verb{list}}{a \code{\link{GtkTargetList}}}
\item{\verb{info}}{an ID that will be passed back to the application}
\item{\verb{deserializable}}{if \code{TRUE}, then deserializable rich text formats
will be added, serializable formats otherwise.}
\item{\verb{buffer}}{a \code{\link{GtkTextBuffer}}.}
}
\details{Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
