---
slug: "notimetracking" # Unique
title: "Why is there no Time Tracking?" # Is the question
date: 2021-01-12T04:27:17+02:00
draft: false
type: "faq"
main: false
order: 5

# taxonomies
categories:
  - "customisation"
---

*Tough question. There is no consensus about time tracking in agile methodologies. Some people think agile methodologies are not meant to include time tracking, while some really need time tracking for a variety of different reasons. Either way, Taiga is built to accommodate multiple use cases.*

But, of course, agile methodologies are meant to be malleable, so even if we decided to not implement time tracking as a feature in Taiga, teams are implementing it by using workarounds (like adding hours in the task or user story title, etc.)

To accomodate these practices we came out with something that could fit in any team workflow and solve many different problems: custom fields.

### Solution 1: Set Up Custom fields

You can create [custom fields]({{< ref "/features/customisation.md" >}}) in issues, tasks and user stories to track everything and make beautiful reports with your favourite spreadsheet and the [CSV reports functionality]({{< ref "/faqs/howtoreporting.md" >}}).

### Solution 2: Using Toggl

[Toggl](https://www.toggl.com/) is a time tracking app operated by Toggl OÜ that is integrated with Taiga.io. You only need to sign in in Toggl.com and install the [Chrome extension](https://github.com/toggl/toggl-button) to use it over Taiga.io.

Thanks to [Olegerm](https://github.com/olegerm) who developed this integration between Toggl and Taiga.io


