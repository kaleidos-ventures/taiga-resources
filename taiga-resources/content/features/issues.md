---
title: "Your crash course into Issues Module"
date: 2021-01-12T07:27:41+02:00
draft: false
slug: "introissues"

# post type
type: "feature"

# Main feature
main: true

# Order in Home
order: 2

# post thumb
image: "images/issues.jpg"

# meta description
description: "Your effective filtered list of lots of things to do"

# taxonomies
categories:
  - "issues"
---

If you're after a multipurpose and flexible to-do list Taiga module, check Issues. Some teams love Taiga Issues Module so much that they are fine using it **without** KANBAN or Scrum modules. Actually, Issues Module is clearly the most used Taiga Module, whether it shares room with Scrum or KANBAN modules, to name the two main Taiga pillars. In other words, Scrum and KANBAN modules somehow compete with each other while Issues is happy to work with any of them.

So, what makes Issues Module so successful? For one, it puts screen real estate to good use. Its compact yet visual listing allows team members to quickly decide what to do next. Also, filtering and ordering capabilities are handy and quite powerful. Finally, it's very fast and customizable. 

### The simplicity of Issues

At first glance, Issues is just a long list of stuff where pagination reigns. It's when you start using it that you find all the hidden gems. You can activate Issues going to SETTINGS > PROJECT > MODULES and clicking on the Issues toggle. You will immediately see the Issues icon pop up at the upper section of the navigation bar. 

First of all, Issues can contain any type of work item. Don't be limited to "bugs", that's not how we see things here at Taiga. You get a default setup for three Issue types you can always change under SETTINGS > ATTRIBUTES > TYPES. An Issue Type could be a "Threat", "Purchase order" or "Sales call", it could be anything as long as it feels like a big enough category for the team. For the rest of this article let's assume you are happy with Bugs, Questions and Enhancements, which is quite common in Engineering Projects.

Issues is not afraid of super long lists, it's meant to cope with that with 30 items per page. So be happy to bulk-add issues if they fit into the default Issue TYPE category. What Issues needs to be useful for teams is to have some input per issue. Type is mandatory but so it's Severity and Priority, so wisely choose default values for them under SETTINGS > ATTRIBUTES > [SEVERITIES or PRIORITIES].

The default ordering mechanism for Issues unless you click on the other columns is "Modified". Any time you create or change an issue, it will bubble up through the list. This means that more active or newer issues appear at the top while long forgotten or closed issues naturally sink in the pagination layout. However, you're one click away to order your zillion issues by Severity or Assigned team member, for example.

### Type, Severity and Priority

A Task is a task, a User Story is a user story and an Epic is an epic, but an **Issue has issue types**. At Taiga we think an issue as a simple container that is enriched by type, severity and priority. 

{{< figure src="/images/issues_types_sev_prio.jpg" caption="Project settings example for types, severities and priorities" alt="Project settings example for types, severities and priorities" width="100%" class="articlefigure" >}}


- Issue Type is a simple major categorisation. Teams tend to pick between 3 and 5 different issue types. This makes early distinction easy and can help manage assignees or workflows. Try to come up with unambiguous issue types that have almost no overlap. Also, it pays off to carefully pick their individual colours.
- Issue Severity conveys how relevant the issue is. It's the importance ranking. Issues of any type can be minute stuff or game changers. 
- Issue Priority deals with urgency. Regardless of type or severity, how fast should the team be on top of an issue? Teams often mistake Severity with Priority but they are different. Something massive (high severity) could enjoy a fairly low priority and something trivial could need immediate attention.

Please note that you can tweak which are the default selected values for all three attributes under SETTINGS > PROJECT > DEFAULT VALUES.

### Filters

Taiga Issues module doesn't sport burndown charts or metrics. Teams that need specific reporting capabilities can use the wonderful live CSV export under SETTINGS > PROJECT > REPORTS or the world-class Taiga API and integrate them into their favourite reporting tool (many use simple spreadsheets and their built-in charts for that).

What Taiga Issues focus on is being able to quickly extract the relevant list of issues for every team member. That's why we have filters box visible by default with all its include/exclude glory. It's here, compared to KANBAN and Scrum, where it's more typical to save custom filters for personal later use. When combined with column ordering you get an extremely fast way to find what you need 

[{{< figure src="/images/issues_list.jpg" caption="Hundreds of issues become just a handful. Click to enlarge." alt="Hundreds of issues become just a handful. Click to enlarge." width="100%" class="articlefigure" >}}](/images/issues_list.jpg)

In the above example, we go from more than 300 issues to less than 10. We use multiple filters with include/exclude options as well as status column ordering and hide tags. We could even add the search text to further filter but in this case it's probably not necessary since we see everything we need at a glance. If we happened to like to keep this filter, we would simply add it to our list of personal custom filters.


### Taiga Issues Module tips and tricks

Every team and every individual decided how to make the most out a flexible tool like Taiga and its multipurpose applicability. Having said that, there a few things we suggest you try out for a better experience and productivity.

- **Custom filters**: we already covered filters and we touched upon custom filters. Experiment a bit and create two or three handy custom filters. Taiga has a superfast filtering mechanism so why not have multiple one-click-away hyperfocused lists.
- **Cycle over any list**: Start with any list, whether there are filters applied or not, then click on any of the issues to go to detail view. Above the "Created by" text and left to the issue's status, you'll see one or two lateral chevrons. They represent previous and next items throughout the original list you came from. This is present all about Taiga but here is particularly useful for review sessions of multiple issues.

{{< figure src="/images/cycle.png" caption="Wonderful previous and next shortcuts with the original list as a protected context" alt="Wonderful previous and next shortcuts with the original list as a protected context" width="100%" class="articlefigure" >}}

- **Due Date**: When you need a fixed due date on top of an issue's priority you can make use of Due Date. Issues have their dedicated custom Due Date entries under SETTINGS > ATTRIBUTES > DUE DATES. We are planning to add Due Dates as a filtering option but, for now, picking quite distinct due date configuration colours allows for immediate attention-seeking issue spotting.
- **Don't be afraid of tags**: A bit of discipline while creating tags (and their matching colours) is an amazing investment for an tidy future. Tags can contain emojis and stand out more easily. Try not to add many tags to any single issue, three or four should be enough, so that you don't add cognitive load to what should always be a straightforward list to take action on.


### Issues relationship with KANBAN or Scrum modules

Issues Module is definetly a team player and works like a charm as a companion to KANBAN or Scrum (or both!) modules.

First, you can put aside whatever doesn't feel right as a user story or a KANBAN card or needs to go through a very different workflow. Issues can help the backlog or the KANBAN board to remain less cluttered *for the good reasons*. This is one the main reasons Issues Module is so often used by the Taiga community.

Second, any issue can be *promoted to a user story* (or a KANBAN card). You can find that button on the issue's right pane, next to some other available actions such as *block* or *delete*. This allows for more fine-tuned workflows, where some petitions can start as a *humble* issue and fight to become a *proper* user story or KANBAN card. Or perhaps they were *wrongly assumed to be an issue (of any type)* and you don't want to create a new user story or KANBAN card and copy the contents, just promote it. Promoting an issue carries over as much information as it is possible so even if it happens well into the issue's lifecycle, you are encouraged to do so with minimal content loss.

Finally, Sprints can list a selection of attached issues if the team wants to have them handy during the sprint's lifecycle. Not only the team can bring forward existing issues to also show them on the sprint taskboard's view but they can create them here and still find them under Issues. Some teams do this to laser focus what a sprint is about regardless of the dozens of pending issues waiting to be taken care of. It's a filter of sorts, if you think about it. 

{{< figure src="/images/taskboard_issues.jpg" caption="A sprint can, at the discretion of the team, host a selection of issues" alt="A sprint can, at the discretion of the team, host a selection of issues" width="100%" class="articlefigure" >}}

### Further reading

Taiga Issues Module has enough intrinsic value to be used alone as the key Module for a particular Taiga project but its true potential arises when used it as a great Scrum or KANBAN companion. There are other Taiga Modules we would briefly cover so you know what you might be missing out. We suggest you read [The Epic, The Wiki and the Meetup](/kaka).

