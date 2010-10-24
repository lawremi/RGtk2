\alias{gtkActionGroupSetTranslationDomain}
\name{gtkActionGroupSetTranslationDomain}
\title{gtkActionGroupSetTranslationDomain}
\description{Sets the translation domain and uses \code{gDgettext()} for translating the 
\code{label} and \code{tooltip} of \code{\link{GtkActionEntry}}s added by 
\code{\link{gtkActionGroupAddActions}}.}
\usage{gtkActionGroupSetTranslationDomain(object, domain)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkActionGroup}}}
\item{\verb{domain}}{the translation domain to use for \code{gDgettext()} calls}
}
\details{If you're not using \code{gettext()} for localization, see 
\code{\link{gtkActionGroupSetTranslateFunc}}.
  Since 2.4}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
