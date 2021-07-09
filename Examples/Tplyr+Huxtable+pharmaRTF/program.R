library(Tplyr)
library(dplyr, warn.conflicts = FALSE)
load("adsl.Rdata")

# Create table
adsl <- adsl %>%
  mutate(
    SEX = recode(SEX, M = "Male", F = "Female"),
    RACE = factor(RACE, c("AMERICAN INDIAN OR ALASKA NATIVE", "ASIAN", "BLACK OR AFRICAN AMERICAN",
                          "NATIVE HAWAIIN OR OTHER PACIFIC ISLANDER", "WHITE", "MULTIPLE"))
  )
t <- tplyr_table(adsl, TRT01P) %>%
  add_total_group() %>%
  add_layer(name = 'Sex',
            group_count(SEX, by = "Sex n (%)") %>%
              set_missing_count(f_str('xx', n), Missing=NA, denom_ignore=TRUE)
  ) %>%
  add_layer(name = 'Age',
            group_desc(AGE, by = "Age (Years)")
  ) %>%
  add_layer(name = 'Age group',
            group_count(AGEGR1, by = "Age Categories n (%)") %>%
              set_missing_count(f_str('xx', n), Missing=NA, denom_ignore=TRUE)
  ) %>%
  add_layer(name = 'Race',
            group_count(RACE, by = "Race n (%)") %>%
              set_missing_count(f_str('xx', n), Missing=NA, denom_ignore=TRUE) %>%
              set_order_count_method("byfactor")
  ) %>%
  add_layer(name = 'Ethnic',
            group_count(ETHNIC, by = "Ethnicity n (%)") %>%
              set_missing_count(f_str('xx', n), Missing=NA, denom_ignore=TRUE)
  )
dat <- build(t)

# Prepare Table for presentation
dat <- dat %>%
  arrange(ord_layer_index, ord_layer_1, ord_layer_2) %>%
  apply_row_masks(row_breaks = TRUE) %>%
  select(starts_with("row_label"), var1_Placebo, `var1_Xanomeline Low Dose`, `var1_Xanomeline High Dose`, var1_Total) %>%
  add_column_headers(
    paste0(" | | Placebo\\line(N=**Placebo**)| Xanomeline Low Dose\\line(N=**Xanomeline Low Dose**) ",
           "| Xanomeline High Dose\\line(N=**Xanomeline High Dose**) | Total\\line(N=**Total**)"),
    header_n = header_n(t))

# Format table
ht <- huxtable::as_hux(dat, add_colnames=FALSE) %>%
  huxtable::set_bold(1, 1:ncol(dat), TRUE) %>% # bold the first row
  huxtable::set_align(1, 1:ncol(dat), 'center') %>% # Center align the first row
  huxtable::set_align(2:nrow(dat), 3:ncol(dat), 'center') %>% # Center align the results
  huxtable::set_valign(1, 1:ncol(dat), 'bottom') %>% # Bottom align the first row
  huxtable::set_bottom_border(1, 1:ncol(dat), 1) %>% # Put a border under the first row
  huxtable::set_width(1.5) %>% # Set the table width
  huxtable::set_escape_contents(FALSE) %>% # Don't escape RTF syntax
  huxtable::set_col_width(c(.2, .2, .15, .15, .15, .15)) # Set the column widths

# Add headers and footers
doc <- pharmaRTF::rtf_doc(ht) %>%
  pharmaRTF::add_titles(
    pharmaRTF::hf_line("Protocol: CDISCPILOT01", "PAGE_FORMAT: Page %s of %s", align='split', bold=TRUE, italic=TRUE),
    pharmaRTF::hf_line("Table 14-2.01", align='center', bold=TRUE, italic=TRUE),
    pharmaRTF::hf_line("Summary of Demographic and Baseline Characteristics", align='center', bold=TRUE, italic=TRUE)
  ) %>%
  pharmaRTF::add_footnotes(
    pharmaRTF::hf_line("FILE_PATH: Source: %s", "DATE_FORMAT: %H:%M %A, %B %d, %Y", align='split', bold=FALSE, italic=TRUE)
  ) %>%
  pharmaRTF::set_font_size(10) %>%
  pharmaRTF::set_ignore_cell_padding(TRUE) %>%
  pharmaRTF::set_column_header_buffer(top=1)

# Write to file
pharmaRTF::write_rtf(doc, file='t14-2.01.rtf')
