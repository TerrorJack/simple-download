# simple-download

[![Build Status](https://travis-ci.org/TerrorJack/simple-download.svg)](https://travis-ci.org/TerrorJack/simple-download)
[![Build status](https://ci.appveyor.com/api/projects/status/github/TerrorJack/simple-download?svg=true)](https://ci.appveyor.com/project/TerrorJack/simple-download)
[![Hackage](https://img.shields.io/hackage/v/simple-download.svg)](https://github.com/TerrorJack/simple-download)

A simple wrapper of `http-conduit` for file download. It relies on `tls` instead of `HsOpenSSL` for HTTPS support, so portability is improved.
