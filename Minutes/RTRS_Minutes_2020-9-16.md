---
title: "RTRS_Minutes_2020-9-16"
author: "Joseph Rickert"
date: "9/23/2020"
output: html_document
---


## R Tables for Regulatory Submissions Working Group
Minutes for first meeting: September 16, 2020
Prepared by Joseph Rickert

## Attendees Included:

* Joseph Rickert
* Andy Nicholls
* Adam Sharp
* Bob Engle 
* Daniel Sjoberg
* Eli Miller
* Michael Kane 
* Ning Leng 
* Paulo Bargo
* Rich Iannone
* Tadeusz Lewandowski
* Yilong Zhang
* James Black
* Adrian Waddell
* Keaven Anderson
* Kevin Bolger
* Christine Fillmore
* Martin Rimler

Joseph Rickert brought the meeting to order and explained that the R Consortium has been working to coordinate activities related to promoting the use of the R language in the pharmaceutical industry and mentioned that the R Validation Hub which has been active for over a year is organized as an ISC working group. Joe stated that the present meeting came about because a number of people have expressed an interest in making it easier to use R to prepare tables for FDA submission. He proposed an agenda that included: A presentation by Michael Kane of Yale University on a requirements document he is working on for generating tables that meet the 21 CFR part 11 FDA standard with the CRO Simulstat

Discussions that included:

* Requirements for tables
* Issues with preparing tables to for particular document formats
* R packages useful for generating tables
* Issues with various document formats including RTF
* Issues with reading data in SAS formats

There was a discussion on all of these issues with the active participation of almost everyone present. Rich Iannone gave a demo of various capabilities of the gt package. The general consensus from the meeting was:

* The topic is rich enough to pursue
* Those present are interested in helping the group to make progress
* The group should be inclusive and open to all
* Work products of the group should facilitate the ease of creating tables and generating portions of documents programmatically without being proscriptive. For example, rather than creating a single R package to generate tables the group should develop a CRAN Task view that  includes all relevant packages.
* The group agreed to meet next after the R / Pharma conference

Joe agreed to organize the next meeting and to have the R Consortium set up a GitHub repo and mailing list to facilitate organize and facilitate the work of the group.

## Addendum
Subsequent to the meeting, in a private email to Joseph Rickert, Yilong Zhang made the following observations which he consented to including in this document:

Different companies have their own processes for working with medical writers and their own table formats. Some examples are: 

* Roche: https://github.com/Roche/rtables
* Merck: https://github.com/Merck/r2rtf/tree/master/vignettes/rtf
* CDISC example package originally from Lily: https://github.com/atorus-research/pharmaRTF

We should prioritize a “submitter” project to build a demo submission package, to encourage every organization to follow the same FDA eCTD guidance to submit R code.

It would be helpful to write a white paper summarizing strategies for preparing eCTD module 5 required program with  an internally developed R package. See the following reference: https://www.lexjansen.com/phuse-us/2019/sa/SA04_ppt.pdf






