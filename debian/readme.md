# goal
play w/ debian specific stuff.

-   [x] measure duration of multiple `apt-get update`
-   [x] measure duration of multiple deltas vs one

# `apt-get update`
different dockerfiles execute different amount of `apt-get update`.
measured times are in seconds.

-   `0` 0.15, .2, 0.16
-   `1` 34, 44, 42, 6, 31
-   `2` 44, 43, 40, 39
-   `3`
-   `4`
-   `5` 46, 18, 17, 46, 44, 44

result: as expected duration depends a lot on network speed and varies a lot.
multiple execution of `apt-get update` does not have much impact.

# multiple deltas
as seen above multiple deltas don't have much effect on build time neither.
