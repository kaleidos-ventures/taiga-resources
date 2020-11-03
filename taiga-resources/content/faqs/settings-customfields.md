---
slug: "settings-customfields" # Unique
title: "Can I add new custom fields to my project?" # Is the question
date: 2020-10-05T11:27:17+02:00
draft: false
type: "faq"
main: true
order: 4

# taxonomies
categories:
  - "kanban"
  - "scrum"
---

Taiga includes optional custom fields in its administration panel. It will provide teams with a flexible input to fit in their workflow.

Users with administration permissions will be able to create new custom fields for their project Epics, User Stories, Subtasks and Issues.


{{< figure src="/faqs/images/settings-customfields.jpg" caption="Example of the different custom fields options" alt="Example of the different custom fields options" width="100%" >}}

Simply go to your Project Admin section > Attributes > Custom fields and add, remove or edit any of those for your choice of Taiga entities.

You will then be able to see the new custom field option within the Epic, User story, Subtask or Issue view, depending on your choice.

{{< figure src="/faqs/images/settings-customfields02.jpg" caption="Example of one URL-type custom field being used in a user story" alt="Example of one URL-type custom field being used in a user story" >}}


Please note than custom fields cannot be used to filter Taiga items. We plan to add this capability in the future. However, both the API and the live CSV exports do contain the custom fields information.