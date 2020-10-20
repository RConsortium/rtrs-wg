Working Requirements - version 0.1
---

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
