# Source file for project's dependencies

# Scrub the console & environment
rm(list = ls())
cat("\014")

# 1. Functions to check package versions, and update them if necessary —
version_at_least = function(pkg, version) {
  installed = tryCatch(
    packageVersion(pkg),
    error = function(.)
      package_version('0.0.0')
  )
  installed >= version
}

use = function(pkg, version) {
  if (!version_at_least(pkg, version))
    install.packages(pkg)
}

# 2.  Set up dependencies —
# 2a. Require a recent version of renv{}:

use('renv', '0.13.2')

# Trying to discover dependencies automatically will fail.
# {renv} won’t find {Bioconductor} packages automatically).
renv::init(force = TRUE, bare = TRUE, restart = FALSE)

# 3. Package installation

renv::install('BiocManager')
options(repos = BiocManager::repositories())
renv::install('maftools', 'dplyr')

# Required for R Markdown
renv::install('rmarkdown')

# Cleanup
rm(use, version_at_least)

# Snapshot of the environment
renv::snapshot(prompt = FALSE)
