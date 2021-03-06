% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eq_create_label.R
\name{eq_create_label}
\alias{eq_create_label}
\title{eq_create_label}
\usage{
eq_create_label(df_create_label = rlang::.data)
}
\arguments{
\item{df_create_label}{DataFrame with information about earthquakes, must have LOCATION,
EQ_PRIMARY, and TOTAL_DEATHS columns}
}
\value{
Vector with content to be used by eq_map function.
}
\description{
This function creates content to be displayed inside of the popups plotted by the eq_map function.
}
\examples{

\dontrun{
# Full example using eq_clean_data, eq_create_label, and eq_map.
readr::read_delim("inst/extdata/signif.txt",
                  delim = "\\t") \%>\%
                       eq_clean_data() \%>\%
                            dplyr::filter(COUNTRY == "MEXICO" &
                                          lubridate::year(DATE) >= 2000) \%>\%
                                               dplyr::mutate(popup_text = eq_create_label(.)) \%>\%
                                                   eq_map(annot_col = "popup_text")

# From a given dataframe (assuming my_dataframe has LOCATION, EQ_PRIMARY, and TOTAL_DEATHS columns).
my_dataframe \%>\%
    plyr::mutate(popup_text = eq_create_label(.)) \%>\%
        eq_map(annot_col = "popup_text")}

}
