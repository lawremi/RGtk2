giocon <- function(stream, binary = FALSE, blocking = TRUE) UseMethod("giocon")

giocon.GInputStream <- function(stream, binary = FALSE, blocking = TRUE) {
    checkPtrType(stream, "GInputStream")
    stopifnot(.isTRUEorFALSE(binary))
    stopifnot(.isTRUEorFALSE(blocking))
    .Call("R_giocon_GInputStream", stream, binary, blocking, PACKAGE="RGtk2")
}

giocon.GOutputStream <- function(stream, binary = FALSE, blocking = TRUE) {
    checkPtrType(stream, "GOutputStream")
    stopifnot(.isTRUEorFALSE(binary))
    stopifnot(.isTRUEorFALSE(blocking))
    .Call("R_giocon_GOutputStream", stream, binary, blocking, PACKAGE="RGtk2")
}

giocon.GIOStream <- function(stream, binary = FALSE, blocking = TRUE) {
    checkPtrType(stream, "GIOStream")
    stopifnot(.isTRUEorFALSE(binary))
    stopifnot(.isTRUEorFALSE(blocking))
    .Call("R_giocon_GIOStream", stream, binary, blocking, PACKAGE="RGtk2")
}
