# Table Requirements - another take

## Input
  - Rectangular data frames / tibbles
    - have variable labels as per CDISC (e.g. `attr(ADSL$SAFFL, "label")`)
    - have data object labels
     - often imported from SAS
  - Flexible Encoding
    - special characters

## Tabulation

  - Respect variable labels
  - Disjoint and overlapping sets (subjects) assignment to columns and row groups
    - compare quantifies
  - Row groups for different variables
    - e.g. demographic table
  - Columns for different variables
    - e.g. percentage change is often pre-calculated in ADaM
  - Summary of row/column groups
    - all patients
    - number of non missing values
  - Nested splits, e.g. in column for ARM > Biomarker Evaluable Population
  - Comparison against baselines
    - one column is set as a reference
  - Dealing with factor level
    - order
    - drop levels
    - hierarchical levels
  - Summary tables
    - model fits

## Table Object Features

  - Multirow header
  - Column Header row `N = xx`
    - as last header row
    - for hierarchical tables (in columns) have multiple 
  - Multiple values per cell, e.g. "mean (sd)", "min - max"
  - Upper left area show structure in rows
    - "STUBHEAD LABEL" in `gt`
  - Titles & Footnotes
  - Annotation
  - References that might show up as footnotes/annotations
    - cell reference
    - column reference
    - row reference
  - empty cell/table
  - standard data structure accessors/modifiers
    - ncol, nrow, dim, names, [, [[
    - cbind, rbind
    - transpose
    - subset
      - retain tables structure
      - access unformatted values

## Processing Tables
  
   - Sorting tables
   - Pruning tables
   - Adding rows
   - Change labels/formats/references/...
   - Coercion
     - between different table frameworks

## Comparing Tables

   - check if two tables are the same, similar as in `diffdf`
   - visually side by side

## Pagination

   - Vertical Pagination
   - Horizontal Pagination
   - Vertical & Horizontal Pagination
   - deal with title, footnotes, annotation
   - page numbers
   - repeat relevant labels when splitting
     - e.g. AE tables
   - don't split if there are only two siblings before (i.e. move whole group to next page)


## Formatting

  - Cell content within column alignments
    - left, right, center
    - `.` alignment
  - Multiline Cells
  - Cell Spans
    - in columns
    - in rows
  - Indentation of Rows
  - Rounding
    - SAS vs. R
    - data precision based rounding (e.g. mean should display as precision - 1 decimals)
  - listing related features
    - group labels

## Output

- R object
  - inline Rmarkdown references to cell values
  - cross comparison of values between tables
- XML
  - e.g. for `XSLT` and [clinicaltrials.gov](http://clinicaltrials.gov)

- Formatted Outputs
  - control column widths
  - row heights
  - display a subset of a formatted output
    - retain column/row width
  - row gaps
  - Output Formats
    - ASCII
    - RTF
    - PDF
    - LaTeX
    - HTML
      - highlight cells/columns/rows/blocks
    - markdown
    - Define
      - landscape/portrait
      - page size
      - margins
      - fontfamily
      - fontsize
    - Embed into a graphic
      - e.g. forest plot


# Working Requirements - version 0.1


1. Must be an R function that accepts parameters as input.
2. Must accept a SAS data set as input.
3. Must accept a list of SAS variable names as input that will be displayed 
as columns in the report.
4. Must be able to control width of columns for variables displayed.
5. Must be able to control justification of columns for variables displayed.
6. Must accept a list of variables to order (or sort) the tabular report by.
7. Must be able to order/sort by variables not displayed in report.
8. Must be able to not display repeat values of order/sort variables that are 
columns in report.
9. Must be able to create blank rows after specific ordering/sorting
variables change values.
10. Must be able to create page breaks after specific ordering/sorting variables change values.
11. Must obtain the columns headings from the variable labels.
12. Must be able to specify a text string to span above a specific group of 
column headings and create a line under the text string/above spanned columns.
13. Must format the values of the variables in the columns using the format 
assigned to the variables. 
14. Must be able to specify up to three text strings that will appear as 
separate lines of text, left justified, above the title lines.
15. Must display the page numbers right justified above the title lines in 
the form Page X or Y (as part of header lines)
16. Must be able to control top, bottom, left and right margin sizes.
17. Must be able to control the width of the overall report.
18. Must be able to control font type.
19. Must be able to control font size of text in header lines, body of 
table, and footnotes separately. 
20. Must be able to control page orientation, portrait or landscape.
21. Must be able to specify text for an unlimited number of lines of titles.
22. Must be able to specify text for an unlimited number of lines of footnote.
23. Must create an output file.
24. Must be able to specify output file type(s): rtf, pdf, or html.
25. Must draw a line under the column headings.
26. Must be able to optionally create a line at the bottom of each page.
27. Must display R program name and execution date and time as last footnote.
28. Must be able to display special characters, e.g. superscripts, 
subscripts, ≤, ≥, ±, µ, ∞, etc. 
