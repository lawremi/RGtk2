\alias{gtkIconFactoryAdd}
\name{gtkIconFactoryAdd}
\title{gtkIconFactoryAdd}
\description{Adds the given \code{icon.set} to the icon factory, under the name
\code{stock.id}.  \code{stock.id} should be namespaced for your application,
e.g. "myapp-whatever-icon".  Normally applications create a
\code{\link{GtkIconFactory}}, then add it to the list of default factories with
\code{\link{gtkIconFactoryAddDefault}}. Then they pass the \code{stock.id} to
widgets such as \code{\link{GtkImage}} to display the icon. Themes can provide
an icon with the same name (such as "myapp-whatever-icon") to
override your application's default icons. If an icon already
existed in \code{factory} for \code{stock.id}, it is unreferenced and replaced
with the new \code{icon.set}.}
\usage{gtkIconFactoryAdd(object, stock.id, icon.set)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkIconFactory}}}
\item{\verb{stock.id}}{icon name}
\item{\verb{icon.set}}{icon set}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
