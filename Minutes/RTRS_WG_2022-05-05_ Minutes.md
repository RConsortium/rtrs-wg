## Minutes RTRS WG - 2022-05-05

The minutes were compiled by Joseph Rickert.

### Attendees
* Gabriel Becker
* Kevin Bolger - Procogia
* Phil Bowsher - Rstudio
* Emma2
* Rich Iannone - RStudio
* Michael Kane - Yale
* Alexandra Lauer - Merck
* Tad Lewandowski - Roche
* Eli Miller - Atorus
* Joseph Rickert - RStudio
* Tom Tensfeldt - Pfizer
* Adrian Waddell - Roche

The meeting was recorded and the [video](https://rstudio.zoom.us/rec/share/ZJLsmtmBIiviUjRBfgt0bK7W02CGxTovsp63qQS4o_FXOXbHH0JbqxTtYNoJsT4H.P1PnzRW_Izmtx1d5) is available with passcode: ?Y\*ae\*e8 

The meeting began with Gabe Becker providing a synopsis of his recent webinar which was part of the R Consortium's [R Adoption Webinar Series](https://www.r-consortium.org/webinars). Gabe said he spoke mostly about the rtables package, but did mention the RTRS WG and our work. Gabe said that there were several questions about output formats and rendering tables, but also questions on the kinds of skill that people must have to make sophisticated tables. He pointed out that it would be unreasonable to expect that an R programmer new to clinical tables to be effective in creating tables without acquiring the special skills.

JBR pointed out that the skills question overlaps with the work of the R Certification WG. He also mentioned that generally people talk about R skills along two axes: 1) Using R as a statistician and 2) being an R programmer. Special skill such as familiarity with crating tables might be a third axis. Tad Lewandowski pointed out that SAS certifications have several levels, some of which are specialized skills.

Tad also gave an account of the sessions he attended at the PhUSE conference in Atlanta (10:00 in the video). He mentioned that there were quite a few talks about R and thinks that there is big trend of switching to R.

Adrian Waddell commented that it is very difficult for a general statistical user to adopt R without being prepared to do some programming. Alexandra Lauer pointed out that for a mid size pharma it will take time to convert all of the legacy SAS code to R. Adrian also pointed out that creating efficient workflows will take time.

Gabe reminded the group that our goal is to enable R users to make table without programming. The workflow should be something like call this function or run this template and get the table you need. JBR asked if the WG would be able to provide the code to build the tables for the table schema that we have identified. Alexandra said this would be a big help. 

Alexandra also mentioned that the "Call for tables" that the WG issued initiated considerable discussion in her company when they learned that Roche updated their `rtables` package in order to build a table she had submitted.

Tad said that a consortium of Roche and three other companies are working to open source table `rtables` and other business logic that would power workflows to create multiple tables. Tad stated that the consortium of four companies wants to open source this technology as a group and not just under Roche's name. He emphasized that the companies involved want to demonstrate the value of collaboration.

He said that once one of the four companies was able to use `rtables` and `tern` they were able to reproduce most of the CSR outputs in only three weeks. Additionally, there are 200 templates for making tern tables and also the `tiel` package which allows for showing different aspects of the tables.

The timeline for making the code publicly available as open source is less than half a year. 

JBR asked why Roche and the three unnamed companies formed a collaboration outside of the R Consortium. He suggested that doing the work under the R Consortium would have made things easier for the collaborating companies. As a non-profit the R Consortium is set up for this kind of collaboration.

Tad replied that the collaboration began before the formation of the R working groups, but also: management wanted to make sure that the collaboration did slow down internal development. Tom Tensfeldt said that his company has collaborated in similar arrangements; these arrangements are quite common. The problem with doing this kind of collaborative work under the umbrella of the R Consortium is the worry that doing the work in the open, as open source would slow down internal development. 

JBR: This is a real challenge for the R Consortium.

At **25:33** Adrian begins a demo of the Roche workflow.
Workflow: `rtables` extended by `tern` which gets wrapped into `chevran`, and then `chevron` outputs the table. `rtables` is generic. `tern` adds a layer on top of `rtables` that implements the customized business functions.

This makes table creation  one line of code, much like running a SAS macro. Plus, the workflow can be run in the `tiel` framework so everything could be delivered interactively. 

The discussion then turned back to the working paper. Mike Kane posed the question: who will be the audience for our paper? Gabe pointed out that the Roche workflow is only one method that will be described in the working paper. The working paper is conceived more as a literature review which is aimed at developers.

The next meeting of the WG is Thursday, June 2, 2022 at 9AM Pacific Time.
