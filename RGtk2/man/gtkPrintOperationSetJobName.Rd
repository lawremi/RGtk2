\alias{gtkPrintOperationSetJobName}
\name{gtkPrintOperationSetJobName}
\title{gtkPrintOperationSetJobName}
\description{Sets the name of the print job. The name is used to identify 
the job (e.g. in monitoring applications like eggcups). }
\usage{gtkPrintOperationSetJobName(object, job.name)}
\arguments{
\item{\code{object}}{[\code{\link{GtkPrintOperation}}]  a \code{\link{GtkPrintOperation}}}
\item{\code{job.name}}{[character]  a string that identifies the print job}
}
\details{If you don't set a job name, GTK+ picks a default one by 
numbering successive print jobs.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
