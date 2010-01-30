\name{rgtk2_bindtextdomain}
\alias{rgtk2_bindtextdomain}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
RGtk2 gettext support
}
\description{
Binds a gettext domain using the libintl linked to RGtk2. A workaround
for Windows where R and RGtk2 link to different builds of libintl.
}
\usage{
rgtk2_bindtextdomain(domain, dirname = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{domain}{
    The name of the gettext domain.
  }
  \item{dirname}{
    The directory containing the catalogs for the domain.
  }
}
\value{
  \code{domain} or \code{NULL} if unsuccessful.
}
\author{
  Michael Lawrence
}

\seealso{
\code{\link[base:gettext]{bindtextdomain}} in the base package.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ internal }
\keyword{ interface }% __ONLY ONE__ keyword per line
