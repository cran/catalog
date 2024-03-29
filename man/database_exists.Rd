% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/database.R
\name{database_exists}
\alias{database_exists}
\title{Check If A Database Exists}
\usage{
database_exists(sc, name)
}
\arguments{
\item{sc}{A \code{spark_connection}.}

\item{name}{\code{character(1)}. The name of the database to set the current
database to.}
}
\value{
A \code{logical(1)} vector indicating \code{TRUE} if the database exists and \code{FALSE}
otherwise.
}
\description{
Check if the database with the specified name exists. This will check the
list of hive databases in the current session to see if the database exists.
}
\examples{
\dontrun{
sc <- sparklyr::spark_connect(master = "local")
database_exists(sc = sc, name = "default")
database_exists(sc = sc, name = "fake_database")
}

}
\seealso{
\code{\link[=current_database]{current_database()}}, \code{\link[=set_current_database]{set_current_database()}}, \code{\link[=list_databases]{list_databases()}}
}
