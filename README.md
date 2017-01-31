# haskell-cli-template

[![Circle CI](https://circleci.com/gh/jml/haskell-cli-template/tree/master.svg?style=shield)](https://circleci.com/gh/jml/haskell-cli-template/tree/master)

A [cookiecutter](https://github.com/audreyr/cookiecutter) template for command-line scripts.

My goal is to reduce friction for people writing Haskell command-line tools.

## Usage

```
$ pip install --user cookiecutter
$ cookiecutter gh:jml/haskell-cli-template
```

Once the template is created, you can build things with `stack` or use the
provided `Makefile`.

## Choices

This cookiecutter project makes a few opinionated decisions:

* GHC 8.0 only
* Built with Stack
* Uses `package.yaml` (from [hpack](https://hackage.haskell.org/package/hpack)) to configure dependencies etc.
* [Protolude](https://github.com/sdiehl/protolude) as the Prelude
* The hackage name is the repo name is the project name is the executable name
* Uses CircleCI as its default CI tool
* Enforces hindent-formatted code in CI

## Notes

Note that the Cabal file is not checked in to this cookiecutter template.

Uses [Johan Tibbe's style guide](https://github.com/tibbe/haskell-style-guide/blob/master/haskell-style.md), enforced by [hindent](https://github.com/chrisdone/hindent)

The cookiecutter project is available under the Apache 2.0 license, but it defaults to creating command-line tools published under the GPL 3 license.
