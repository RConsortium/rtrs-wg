## Minutes RTRS WG - 2022-09-01

The minutes were compiled by Joseph Rickert.

### Attendees
* Gabriel Becker
* Kevin Bolger - Procogia
* Phil Bowsher - Rstudio
* Rich Iannone - RStudio
* Michael Kane - Yale
* James Kim - Pfizer
* Joseph Rickert - RStudio
* Tom Tensfeldt - Pfizer


### Not present
* Alexandra Lauer - Merck
* Adrian Waddell - Roche

The meeting was not recorded.

JBR opened the meeting by drawing the group's attention to the upcoming cdisc [TFL Designer Virtual Workshop](https://www.cdisc.org/events/webinar/tfl-designer-virtual-workshop) The goal of this [COSA](https://www.cdisc.org/cosa)-approved open-source software project is to create TFLs and generate associated metadata that supports clinical trial data analysis and reporting. JBR asked if there might be some overlap with RTRS's work. A presentation by Bhavin Busa (See the first 30 minutes of the [video](https://www.cdisc.org/cosa) from the 2021 TFL workshop.) provides some insight. JBR said he intends to attend the workshop coming up on 9-13.

GB rendered the bookdown document and the group spent some time examining the work in progress. Note that the most recent version of `gt` is required.

As it stands now the only packages for which example tables have been provided are `rtables` and `gt`. In addition to these, we  would like to include examples from the packages:

* `tfrmt` from GSK
* `gtreg` from the Sloan Kettering Cancer Center
* `tplyr` from Atorus
* `r2rf` from Merck

**Action Items**
1. RI will contact the `tfrmt` and `gtreg` authors
2. JBR will contact the `tplyr` and `r2rf` authors

There was a brief discussion of how WG members can make contributions to the code and document when their company does not have a formal open source policy. Among the advice given was that potential contributors should examine their company's policies governing scientific publications.

The next meeting of the RTRS WG will be at 9AM Pacific Time on 2022-10-06.


