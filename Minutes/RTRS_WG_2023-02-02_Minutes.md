## Minutes RTRS WG - 2023-02-02

The minutes were compiled by Joseph Rickert.

### Attendees
* Luai Alzoubi - Pfizer
* Gabriel Becker
* David Gohel -  Ardata
* James Kim - Pfizer
* Alexandra Lauer - Merck
* Nick Masel J&J
* Duncan Murdoch
* Joseph Rickert - Posit
* Sheng-Wei Wang - J&J

The second half of the meeting was recorded and the [video](https://zoom.us/rec/play/JK57TH0mP-SrQOzoO_x87slqR0LWiFL7uCkx9QAmyIxMXH-6a2OxaQ6d_QIAxN0ndA1cGjLFDEcGq2hW.onyoLL9b4rr4TxZm?continueMode=true&_x_zm_rtaid=0c5DVMifQMak6IFCEQhmNw.1675377950066.5d2c23df93cfdc40e1a094a5da615fdc&_x_zm_rhtaid=526) is available.

Sheng-Wei: J&J has released the `tidytlg` package as open source which is now available at the [pharmaverse](https://pharmaverse.org/e2eclinical/tlg/).

Gabe: At last month's meeting the group decided that the "first edition" release of the e-book will only include tables and not listings and graphs.

Concomitant Table  

* See issue #76

Automation
David will update the automation file:  

* Include only one description file
* Update the Contributors section with automation information
* Website for book will update when pull requests merged

Alex: will include gt missing event table

Gabe: will identify data sets for PK Tables

Goal for the book: to have different packages generate structurally identical tables, not to just to have different packages produce tables with the same information content. This assumes that the working group can agree on archetype for each type of table.

The group discussed reorganizing the book to better showcase the the two kinds of table package strategies:  

1. Two step: Calculate table values separately (perhaps using `dplyr` or some other code) and then format the tables
2. One step: calculate values and format at the same time

Gabe: agreed to draft a description of this distinction and create a PR for review.

Disposition Table: 

* This section need work
* `rtables` and gt are structured differently
* The group needs to converge on a disposition table structure

JBR asked if some tables authors have dropped out of the book. Will `Tplyr` and `tfrmt` be included?

Action: JBR will reach out to the `Tplyr` authors.

"First edition" target date for completion: End of May
This will enable us to talk about the books at R/Medicine, R/Pharma, Phuse, PSI and other appropriate conferences

List of working group members

* Gabe suggests we list the working group members on the site
* JBR takes the action to develop the list of active and inactive working group members.


Agenda for next meeting (2023-03-02):

* Review action items from this meeting
* Develop list of the tasks required to publish the e-book by the end of May.
