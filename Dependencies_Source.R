# Source file for project's dependencies

# Functions to check package versions, and update them if necessary —
version_at_least = function(pkg, version) {
  installed = tryCatch(
    packageVersion(pkg),
    error = function (.)
      package_version('0.0.0')
  )
  installed >= version
}

use = function(pkg, version) {
  if (!version_at_least(pkg, version))
    install.packages(pkg)
}

