\alias{atkDocumentGetLocale}
\name{atkDocumentGetLocale}
\title{atkDocumentGetLocale}
\description{Gets a UTF-8 string indicating the POSIX-style LC_MESSAGES locale
         of the content of this document instance.  Individual
         text substrings or images within this document may have
         a different locale, see atk_text_get_attributes and
         atk_image_get_image_locale.}
\usage{atkDocumentGetLocale(object)}
\arguments{\item{\verb{object}}{[\code{\link{AtkDocument}}]  a \code{\link{GObject}} instance that implements AtkDocumentIface}}
\value{[character]  a UTF-8 string indicating the POSIX-style LC_MESSAGES
         locale of the document content as a whole, or NULL if
         the document content does not specify a locale.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
