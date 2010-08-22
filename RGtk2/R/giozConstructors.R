gAppLaunchContext <- gAppLaunchContextNew

gCancellable <- gCancellableNew

gFilenameCompleter <- gFilenameCompleterNew

gFileInfo <- gFileInfoNew

gBufferedInputStream <- gBufferedInputStreamNew

gDataInputStream <- gDataInputStreamNew

gMemoryInputStream <- gMemoryInputStreamNew

gMountOperation <- gMountOperationNew

gMemoryOutputStream <- gMemoryOutputStreamNew

gBufferedOutputStream <- gBufferedOutputStreamNew

gDataOutputStream <- gDataOutputStreamNew

gSimpleAsyncResult <-
function(source.object, callback, user.data, source.tag, domain, code, format, ...)
{
  if (!missing(source.tag)) {
    gSimpleAsyncResultNew(source.object, callback, user.data, source.tag)
  }
  else {
    if (!missing(domain)) {
      gSimpleAsyncResultNewError(source.object, callback, user.data, domain, code, format, ...)
    }
    else {
      gSimpleAsyncResultNewFromError(source.object, callback, user.data)
    }
  }
}

gFileIcon <- gFileIconNew

gThemedIcon <- gThemedIconNew

gEmblem <- gEmblemNew

gEmblemedIcon <- gEmblemedIconNew

gNetworkAddress <- gNetworkAddressNew

gNetworkService <- gNetworkServiceNew

gSocket <- gSocketNew

gSocketClient <- gSocketClientNew

gSocketListener <- gSocketListenerNew

gSocketService <- gSocketServiceNew

gThreadedSocketService <- gThreadedSocketServiceNew

