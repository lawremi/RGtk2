\alias{gtkTargetListAddRichTextTargets}
\name{gtkTargetListAddRichTextTargets}
\title{gtkTargetListAddRichTextTargets}
\description{Appends the rich text targets registered with
\code{\link{gtkTextBufferRegisterSerializeFormat}} or
\code{\link{gtkTextBufferRegisterDeserializeFormat}} to the target list. All
targets are added with the same \code{info}.}
\usage{gtkTargetListAddRichTextTargets(list, info, deserializable, buffer)}
\arguments{
\item{\code{list}}{[\code{\link{GtkTargetList}}]  a \code{\link{GtkTargetList}}}
\item{\code{info}}{[numeric]  an ID that will be passed back to the application}
\item{\code{deserializable}}{[logical]  if \code{TRUE}, then deserializable rich text formats
                 will be added, serializable formats otherwise.}
\item{\code{buffer}}{[\code{\link{GtkTextBuffer}}]  a \code{\link{GtkTextBuffer}}.}
}
\details{  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
