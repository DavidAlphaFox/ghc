binary
======


binary-0.7.3.0
--------------

- Add Binary instance for Natural (only with base > 4.8).

binary-0.7.2.3
--------------

- Remove INLINEs from GBinary/GSum methods. These interact very badly with the
  GHC 7.9.x simplifier. See also;
     - https://github.com/kolmodin/binary/pull/62
     - https://ghc.haskell.org/trac/ghc/ticket/9630
     - https://ghc.haskell.org/trac/ghc/ticket/9583

binary-0.7.2.2
--------------

- Make import of GHC.Base future-proof (https://github.com/kolmodin/binary/pull/59).

binary-0.7.2.1
--------------

- Fix to compile on GHC 6.10.4 and older (https://github.com/kolmodin/binary/issues/55).

binary-0.7.2.0
--------------

- Add `isolate :: Int -> Get a -> Get a`.
- Add `label :: String -> Get a -> Get a`.

binary-0.7.1.0
--------------

- Add `lookAheadE :: Get (Either a b) -> Get (Either a b)`.
- Add MonadPlus instance for Get. 


binary-0.7.0.1
--------------

- Updates to documentation.

binary-0.7.0.0
--------------

- Add `lookAhead :: Get a -> Get a`.
- Add `lookAheadM :: Get (Maybe a) -> Get (Maybe a)`.
- Add Alternative instance for Get (provides `<|>`).
- Add `decodeOrFail :: Binary a => L.ByteString -> Either (L.ByteString, ByteOffset, String) (L.ByteString, ByteOffset, a)`
- Add `decodeFileOrFail :: Binary a => FilePath -> IO (Either (ByteOffset, String) a)`.
- Remove `Ord` class constraint from `Set` and `Map` Binary instances.

binary-0.6.4
------------

- Add `runGetOrFail :: Get a -> L.ByteString -> Either (L.ByteString, ByteOffset, String) (L.ByteString, ByteOffset, a)`.

binary-0.6.3
------------

- Documentation tweeks, internal restructuring, more tests.

binary-0.6.2
------------

- `some` and `many` more efficient.
- Fix bug where `bytesRead` returned the wrong value.
- Documentation improvements.

binary-0.6.1
------------

- Fix bug where a decoder could return with `Partial` after the previous reply was `Nothing`.

binary-0.6.0.0
--------------
