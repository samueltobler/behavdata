\name{likert_transform}
\alias{likert_transform}
\title{Transferring Likert Scale Answers to Numbers}
\usage{
likert_transform(
  data, 
  name,
  lang,
  other,
  export = TRUE)
}
\description{
This function allows to directly transform any collected data in Likert Scale format to numerical values. The default function is built for Likert Scales in either German or English and with 5 items. However, using the other variable, it is possible to code for any kind of repetitive text inputs.
}
\arguments{
\item{data}{a data frame with individual participants in rows and different measures in columns.}
\item{name}{name of the analysis to specify the output file.}
\item{lang}{language of the Likert scale in case either}
\item{export}{TRUE if a CSV file with the modified data should be exported, FALSE if not.}
}
\examples{
# For a questionnaire in German
likert_transform(data = data, name = "Engagement", lang = "de", export = TRUE) 
# For various text fragments
likert_transform(data = data, name = "Engagement", other = c("yes", "no", "maybe"))
}
