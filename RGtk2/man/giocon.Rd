\name{giocon}
\alias{giocon}
\alias{giocon.GInputStream}
\alias{giocon.GOutputStream}
\alias{giocon.GIOStream}

\title{
  R connections for GIO streams
}
\description{
  Creates a regular R connection based on a GIO stream. The integration
  happens directly in C. The connection can be used anywhere connections
  are supported. See the httpd demo for examples.
}
\usage{
giocon(stream, binary = FALSE, blocking = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{stream}{
    The GIO endpoint, such as a GInputStream, GOutputStream or GIOStream.
  }
  \item{binary}{
    Whether the data are binary or character.
  }
  \item{blocking}{
    Whether the connection should block when reading and writing.
  }
}
\value{
  An R connection
}
\author{
  Michael Lawrence
}
