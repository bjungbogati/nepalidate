
#' @import dplyr

nepali_month <- function(data, var_name = nepali_month, col){

  nep_months <- c("वैशाख","जेठ","असार","साउन","भदौ","असोज","कात्तिक","मंसिर","पुष","माघ","फागुन","चैत")


  data %>%
    dplyr::mutate({{ var_name }} :=
             dplyr::case_when(
               {{col}} == 1 ~ nep_months[1],
               {{col}} == 2 ~ nep_months[2],
               {{col}} == 3 ~ nep_months[3],
               {{col}} == 4 ~ nep_months[4],
               {{col}} == 5 ~ nep_months[5],
               {{col}} == 6 ~ nep_months[6],
               {{col}} == 7 ~ nep_months[7],
               {{col}} == 8 ~ nep_months[8],
               {{col}} == 9 ~ nep_months[9],
               {{col}} == 10 ~ nep_months[10],
               {{col}} == 11 ~ nep_months[11],
               {{col}} == 12 ~ nep_months[12]
             ))
}

# example
# months <- data.frame(months = 1:10)
# aa <- nepali_month(months, col = months)

















