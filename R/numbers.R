# library(dplyr)
# library(stringr)

# devnagari <- c("०", "१", "२", "३", "४", "५", "६", "७", "८", "९")
#
# usethis::use_data(devnagari)
#


nepali_number <- function(data, var_name = nepali_number, col) {

  data %>%
    mutate({{ var_name }} :=
             str_replace_all({{ col }},
                             c("0" = devnagari[1],
                               "1" = devnagari[2],
                               "2" = devnagari[3],
                               "3" = devnagari[4],
                               "4" = devnagari[5],
                               "5" = devnagari[6],
                               "6" = devnagari[7],
                               "7" = devnagari[8],
                               "8" = devnagari[9],
                               "9" = devnagari[10])
                             ))

}


# Example
# numbers <- data.frame(num =  c("1000", "12342323", "1224324232", "2323233", "1234567890"))

# abc <- nepali_number(numbers, col = num)
# abc %>% View()

