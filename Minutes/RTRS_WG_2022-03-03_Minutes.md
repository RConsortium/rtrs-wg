## Minutes RTRS WG - 2022-03-03

Minutes by Joseph Rickert

### Attendees
* Keaven Anderson - Merck
* Gabriel Becker
* Kevin Bolger - Procogia
* Phil Bowsher - Rstudio
* David Gohel - ArData
* Rich Iannone - RStudio
* Alexandra Lauer - Merck
* Eli Miller - Atorus
* Joseph Rickert - RStudio
* Tom Tensfeldt - Pfizer
* Adrian Waddell - Roche

The meeting was recorded and the [video]( 
https://rstudio.zoom.us/rec/share/K4chFSL6ujq_Qmop2a6k38TCB7rAARmQpZwv4v_RLj5IkeWmnDx6mmkOdvXj65se.GF8nCyI_ibtPAYaa) is available with Passcode: 9CQL*DQ$is available.

The meeting began with AW presenting new work on the WG paper. He suggested reorganizing the document so that the section for each sample table presented begins with a "shell" or schematic for the table. AW showed the Demographic Summary shell (Table 7.1) published in the  PhUSE white paper: [Analysis and Displays Associated with Demographics, Disposition, and Medication](https://phuse.s3.eu-central-1.amazonaws.com/Deliverables/Standard+Analyses+and+Code+Sharing/Analyses+%26+Displays+Associated+with+Demographics,+Disposition+and+Medication+in+Phase+2-4+Clinical+Trials+and+Integrated+Summary+Documents.pdf). The task is then to specify how to get from the CDISC and ADaM data to the numbers specified in the table. (Note that CDISC is standard for tables in tables used in a regulatory environment.)

Once you have all of the numbers, next step (perhaps in paper number 2) is to show how you render the table. GB noted, however, there are packages that render tables, but never have the data available in a data frame. They would not fit into this two step framework.

GB noted that Roche is in the process of refactoring `rtables` to split out the split out the tabulation and rendering. The first part would calculate the numbers and then format to them; for example different formats for confidence intervals and counts.

GB reminded the group that an objective of the WG is to identify a small number of archetype tables that collectively display enough of the features to cover a large portion of the kinds of tables are interesting to pharma. 

Using the idea of working from a shell or table shape for each archetype table, the structure of the paper would look like:

* type of table
* shell 
* derivation rules
* show standard CDISC data for table 
* implementation using package A
* implementation using package B
* etc.

GB noted that there is a large number of packages that use dplyr to compute cell values. These packages can be grouped together.

There was agreement in the WG that the paper should be structured such that people see something fast happening in the paper.

DG pointed out that some packages such as `gtsummary` have layout features that they could be used as in the schematic above, or could be used to produce a finished table.

As the time for the end of the meeting approached, the discussion moved on without making a final decision about what should be included in the first paper to consider what changes needed to be made to the project kanban board.

JR asked the group what the WG means by publishing; a paper for a journal or an ebook or something else. The group agreed that the preference would be to publish in a journal and RI suggested we develop a short list of journals with their page limitations and other requirements. 

In the remaining time the WG updated the [kanban board](https://github.com/RConsortium/rtrs-wg/projects/1) with new "To do" tasks configured as issues with the idea that the extended WG membership could comment on the issues before the next meeting.




