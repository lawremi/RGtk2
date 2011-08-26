\alias{gVolumeGetActivationRoot}
\name{gVolumeGetActivationRoot}
\title{gVolumeGetActivationRoot}
\description{Gets the activation root for a \code{\link{GVolume}} if it is known ahead of
mount time. Returns \code{NULL} otherwise. If not \code{NULL} and if \code{volume}
is mounted, then the result of \code{\link{gMountGetRoot}} on the
\code{\link{GMount}} object obtained from \code{\link{gVolumeGetMount}} will always
either be equal or a prefix of what this function returns. In
other words, in code}
\usage{gVolumeGetActivationRoot(object)}
\arguments{\item{\verb{object}}{a \code{\link{GVolume}}}}
\details{\preformatted{  GMount *mount;
  GFile *mount_root
  GFile *volume_activation_root;

  mount = g_volume_get_mount (volume); /* mounted, so never NULL */
  mount_root = g_mount_get_root (mount);
  volume_activation_root = g_volume_get_activation_root(volume); /* assume not NULL */
}  
then the expression
  \preformatted{  (g_file_has_prefix (volume_activation_root, mount_root) ||
      g_file_equal (volume_activation_root, mount_root))
}  
will always be \code{TRUE}.
  
Activation roots are typically used in \code{\link{GVolumeMonitor}}
implementations to find the underlying mount to shadow, see
\code{\link{gMountIsShadowed}} for more details.
  Since 2.18}
\value{[\code{\link{GFile}}] the activation root of \code{volume} or \code{NULL}.}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
