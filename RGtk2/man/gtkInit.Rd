\name{gtkInit}
\alias{gtkInit}
\title{GTK+ initialization}
\description{
  Initializes the GTK+ library, returning \code{TRUE} on success.
}
\usage{
gtkInit(args="R")
}
\arguments{
  \item{args}{ Command-line arguments to pass to GTK+. The first token is the
  program name (by default 'R').}
}
\value{
  \code{TRUE} if initialization suceeded, \code{FALSE} if GTK+ cannot run
  in the current environment (such as in a headless shell).
}
\details{
  This is always called upon the loading of RGtk2,
  but it is also useful for checking whether GTK+ has been successfully initialized
  (calling it multiple times is harmless). This allows, for example, preventing
  the execution of examples in a headless environment (where GTK+ fails to initialize)
  during \code{R CMD check}.
}
\author{ Michael Lawrence }
\keyword{internal}
\keyword{interface}
