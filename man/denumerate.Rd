% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/denumerator.R
\name{denumerate}
\alias{denumerate}
\title{D-enumerate a DESeq2 Dataset object with included results to an enumerator}
\usage{
denumerate(
  computed_deseq_object,
  results = "nointercept",
  new_labels = NULL,
  ...
)
}
\arguments{
\item{computed_deseq_object}{DESeq2 Dataset object with included results}

\item{results}{Either a vector of named results (as in from \code{DESeq2::resultsNames})
or the special cases "nointercept" for all results without the intercept
and "all" for all results from the object.}

\item{new_labels}{A list of \code{(old_label = new_label)} to replace the often
lengthy result labels in the DESeq2 object with more understandable ones.
The old labels are the same ones as specified in the \code{results} parameter.}

\item{...}{Further arguments to be passed to \code{to_enumeration_vector}.
Specifically, consider tweaking \code{alpha} and \code{fold_change}.}
}
\value{
A list of with one slot per result, with the computed enumerations.
}
\description{
With this function you can quickly move from a DESeq2 dataset with
computed results (i.e. after calling \code{DESeq()}) and a complicated
experimental design to something simpler that can be better observed
with functions such as \code{plot_enumeration_frame}
}
