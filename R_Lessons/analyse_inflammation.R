#
# Function definition
#

analyse <- function(pattern, threshold, outputfilename)
{
  # Start pdf file
  pdf(outputfilename)
  for ( datafile in list.files(path = "data", pattern = pattern, full.names = TRUE) )
  {
    dat <- read.csv(file = datafile, header = FALSE)
    avg_day_inflammation <- apply(dat, 2, mean) 
    if (max(avg_day_inflammation) < threshold) {
      plot(avg_day_inflammation)
    }
  }
  # Close pdf file
  dev.off()
}

#
# Main part of the program starts here
#

# Get command-line arguments, but remove
# the standard arguments from the output
# vector of the "commandArgs" function.
args <- commandArgs(trailingOnly = TRUE)

# Check if all parameters were supplied - if not, issue an
# error message. We expect exactly 3 arguments.
# Note: we could also use "stopifnot" here, but it is helpful
# for users to provide additional usage information.
if ( length(args) == 3)
{
  # Extract the information from args
  file_name_pattern <- args[1]
  threshold <- args[2]
  pdf_file_name <- args[3]
  # Run the "analyse" function
  analyse(file_name_pattern, threshold, pdf_file_name)
} else {
  # There were too few or too many arguments. Create an
  # error message and provide usage information.
  print("analyse_inflammation.R: Too few or too many arguments.")
  print("Usage:")
  print("analyse_inflammation.R pattern threshold output_file")
  print("")
}