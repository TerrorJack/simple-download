module Network.HTTP.Client.Conduit.Download (
    download
  , downloadWithManager
) where

import Conduit
import Control.Monad.IO.Class (MonadIO)
import Control.Monad.Reader.Class
import Network.HTTP.Client.Conduit

download :: (MonadBaseControl IO m, MonadIO m, MonadThrow m) => String -> FilePath -> m ()
download url filepath = withManager $ runResourceT $ downloadWithManager url filepath

downloadWithManager :: (MonadBaseControl IO m, MonadReader env m, HasHttpManager env, MonadResource m) => String -> FilePath -> m ()
downloadWithManager url filepath = do
    req <- parseRequest url
    withResponse req $ \resp -> responseBody resp $$ sinkFile filepath
