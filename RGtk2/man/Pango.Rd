\alias{Pango}
\name{Pango}
\title{Pango}
\description{Pango is a library for internationalized text handling. It centers around the code{link{PangoLayout}} object, representing a paragraph of text. Pango provides the engine for \code{\link{GtkTextView}}, \code{\link{GtkLabel}}, \code{\link{GtkEntry}}, and other widgets that display text.}
\details{
The RGtk binding to the Pango library consists of the following components:
\describe{
\item{\link{pango-Coverage-Maps}}{Unicode character range coverage storage}
\item{\link{pango-Fonts}}{Structures representing abstract fonts}
\item{\link{pango-Glyph-Storage}}{Structures for storing information about glyphs}
\item{\link{pango-Layout-Objects}}{Highlevel layout driver objects}
\item{\link{pango-Text-Processing}}{Functions to run the rendering pipeline}
\item{\link{pango-PangoRenderer}}{Rendering driver base class}
\item{\link{pango-Cairo-Rendering}}{Rendering with the Cairo backend}
\item{\link{pango-Tab-Stops}}{Structures for storing tab stops}
\item{\link{pango-Text-Attributes}}{Font and other attributes for annotating text}
}
}
\references{\url{http://developer.gnome.org/doc/API/2.0/pango}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{interface}
