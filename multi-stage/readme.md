`docker build` will force rebuild when
-   a `COPY` source has changed
-   the dockerfile has changed

cache will use some kind of hash over `COPY`ied files.
