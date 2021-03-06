% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/git_status.R
\name{git_status}
\alias{git_status}
\title{Display status of a Git repo}
\usage{
git_status(repo = ".", ...)
}
\arguments{
\item{repo}{Path to a Git repo. If unspecified, current working directory is
checked to see if it is or is inside a Git repo.}

\item{...}{Additional arguments to \code{\link[git2r]{status}} from
\code{\link{git2r}}}
}
\value{
A list with named components "Untracked files", "Staged changes",
  "Unstaged changes", with S3 class \code{git_status}.
}
\description{
Display differences between current state of files in a repo and their state
at the last commit.
}
\examples{
repo <- git_init(tempfile("githug-"))
owd <- setwd(repo)
writeLines("Change me", "change-me")
writeLines("Delete me", "delete-me")
git_status()
git_COMMIT("first commit")
git_status()
write("OK", "change-me", append = TRUE)
file.remove("delete-me")
writeLines("Add me", "add-me")
git_COMMIT("second commit")
git_status()
setwd(owd)
}

