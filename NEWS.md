# AcidCLI 0.1.8 (UNRELEASED)

## Minor changes

- Updated R dependency to 4.1, matching Bioconductor 3.14 release.

# AcidCLI 0.1.7 (2021-09-13)

## Minor changes

- `toInlineString`: Need to fix default value of `class`, which should be
  `"val"` instead of `"var"`.

# AcidCLI 0.1.6 (2021-09-08)

## Minor changes

- `toInlineString`: Improved default values for `n` (now 5) and `class`
  (now `"val"` instead of `"var"`).

# AcidCLI 0.1.5 (2021-08-18)

## Minor changes

- `abort`, `inform`, `warn`: Improved line break handling (e.g. `"\n"`) inside
  of calls, matching expected conventions in base `stop`, `message`, and
  `warning` respectively.

# AcidCLI 0.1.4 (2021-08-14)

## Minor changes

- `abort`: Added `call` argument (enabled by default), which allows for setting
  of verbosity in return -- e.g. whether to return backtrace or not. This
  functions similar to the `.call` argument defined in base `stop` function.

# AcidCLI 0.1.3 (2021-08-13)

## Minor changes

- `abort`, `inform`, `warn` now support `condition` class (e.g. `simpleError`)
  as an input source, which is useful for handoff in `tryCatch` calls.
- Added testthat code coverage. Package coverage is currently 100%.

# AcidCLI 0.1.2 (2021-07-12)

## New functions

Added wrappers for new rlang-inspired handlers:

- `abort` wraps `cli_abort`.
- `inform` wraps `cli_inform`.
- `warn` wraps `cli_warn`.

# AcidCLI 0.1.1 (2021-03-31)

## Minor changes

- Changed `=>` to `#`, improving consistency with koopa shell bootloader.

# AcidCLI 0.1.0 (2021-02-26)

## Minor changes

- Package up initial release suitable for bioconda.
- Updated goalie dependency.
- Added package documentation information to manual.

# AcidCLI 0.0.6 (2021-02-02)

## Minor changes

- Now using goalie package internally for assert checks.

# AcidCLI 0.0.5 (2021-01-18)

## Minor changes

- `dl`: Ensure definition list is indented.

# AcidCLI 0.0.4 (2021-01-10)

## Minor changes

- `toInlineString`: Include "..." when input is truncated.

# AcidCLI 0.0.3 (2021-01-10)

## New functions

- Added `toInlineString`, which helps return a formatted inline variable string.

# AcidCLI 0.0.2 (2021-01-07)

## Minor changes

- Bug fix to allow inline styles inside of headers (e.g. `h1`, `h2`, ...).

# AcidCLI 0.0.1 (2021-01-05)

Initial release.
