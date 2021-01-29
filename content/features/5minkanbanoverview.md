---
title: "The 5-min Kanban module overview"
date: 2020-10-05T11:27:41+02:00
slug: "5minkanban"
draft: false

type: "featured"

# Order in Home
order: 1

# post thumb
image: "images/KANBAN_test10.jpg"

# meta description
description: "Organic flow of work"

# taxonomies
categories:
  - "kanban"
---

Welcome to a lean method to manage and improve work across human systems, welcome to Kanban. This approach aims to manage work by balancing demands with available capacity, and by improving the handling of system-level bottlenecks.

You can also say that Kanban is an organic flow of tasks that minimize "in progress" time thanks to a clear set of rules and a trustworthy team.

Regardless of how you put it, the reality is that Kanban is a very common way of adopting agile principles because it's relatively easy to grasp and adapt to your unique context.

### Taiga Kanban module

Every Taiga project can activate the Kanban module. This also happens automatically if you chose the Kanban template upon project creation.

{{< figure src="/images/KANBAN_test02.jpg" caption="The Kanban module showing an empty initial state" alt="The Kanban module showing an empty initial state" width="100%" class="articlefigure" >}}

When you do this the project's toolbar will show the Kanban icon and you will be able to access the Kanban board. By default the Kanban columns or statuses are ones that generally fit the software development process but feel free to change them yourself. You can create your own set of Kanban columns by going to SETTINGS > ATTRIBUTES > STATUSES and change USER STORY STATUSES.

{{< figure src="/images/KANBAN_test04.jpg" caption="Project attributes setup" alt="Project attributes setup" width="100%" class="articlefigure" >}}

Scroll down to the USER STORY STATUSES and change the default settings to accommodate your particular use case. If you want your Kanban work items to be considered as done when they reach a particular Kanban status, flag that status as **Closed**. Also, if you believe a particular Kanban status might end up containing dozens or hundreds of closed Kanban work items, you might want to add an additional status for those and flag it as both **Closed** and **Archived**. The **Archived** property makes a particular Status hide its content by default so you don't have to load no longer relevant content.

{{< figure src="/images/KANBAN_test03.jpg" caption="Project settings related to Kanban statuses: **Closed** & **Archived**" alt="Project settings related to Kanban statuses: **Closed** & **Archived**" width="100%" class="articlefigure" >}}

Finally, it's a good practice to define the *Work in progress Limit* or **WIP Limit** for some (if not all) Kanban statuses. This means you are allowing Taiga to monitor whether you are exceeding a particular Kanban status capacity. For instance, Taiga will still allow you to add a fourth work item to 3-WIP Limit Kanban status but you'll get a visual warning on the Kanban board. A Kanban heavily rely on optimal **WIP Limits** and sticking to them so you don't end up with various work items graveyards that cause bottlenecks. It's challenging to get **WIP Limits** right straight away so you can always change them later.

{{< figure src="/images/KANBAN_test12.jpg" caption="Project settings related to **WIP Limits**" alt="Project settings related to **WIP Limits**" width="100%" class="articlefigure" >}}

You can adjust Kanban **WIP Limits** under SETTINGS > ATTRIBUTES > KANBAN POWER UPS.

This is the basic setup. You can now go to the Kanban module and start creating work items and moving them around as they progress in their lifecycle.

### Kanban swimlanes

Some teams require advanced features for their Kanban boards. One of the most sought after is the Kanban swimlane. It consists on an independant section that can contain a separate set of work items. Taiga allows you to create as many Kanban swimlanes as you need, effectively distributing your work across different major categorizations. Some example of swimlanes usage are sub-teams, project modules, different priorities, etc.

You can manage Kanban swimlanes under SETTINGS > ATTRIBUTES > KANBAN POWER UPS.

{{< figure src="/images/KANBAN_test05.jpg" caption="Kanban swimlanes configuration" alt="Kanban swimlanes configuration" width="100%" class="articlefigure" >}}

By default, a Taiga project comes with no Kanban swimlanes. Once you start creating swimlanes, the top one on the list will act as the default Swimlane for some Taiga project operations. You will also have the option to adjust separate **WIP Limits** for each one of the swimlanes.

{{< figure src="/images/KANBAN_test06.jpg" caption="Kanban swimlanes view with some sample tasks" alt="Kanban swimlanes view with some sample tasks" width="100%" class="articlefigure" >}}

Of course, you can move Kanban work items from one swimlane to another and from one status to any other status.


### Kanban filters and search options

A Kanban board might get a bit cluttered at times and therefore filters come in handy.

{{< figure src="/images/KANBAN_test07.jpg" caption="Kanban with filters applied" alt="Kanban with filters applied" width="100%" class="articlefigure" >}}

Simply click on Filters and fiddle with include/exclude  criteria with live reaction from the Kanban board. You can remove them at any time or create a custom filter for future use, one click away.

You can also combine it with the search box that will try to be as smart as possible and show matching Kanban work items only.

### Kanban zoom levels

Kanban is very often described as great visual management tool. It radiates information to all team members and, most importantly, everyone shares the same vision.

However, Taiga users are allowed to pick their preferred zoom level for the Kanban board. You can pick from four options: compact, default, detailed and expanded.

A picture is worth a thousand words, just see how different the same Kanban board can look depending on your zoom level preference.

{{< figure src="/images/KANBAN_test08.jpg" caption="Kanban with compact zoom vs expanded zoom" alt="Kanban with compact zoom vs expanded zoom" width="100%" class="articlefigure" >}}

When you prefer more detailed or expanded zoom levels you are asking Taiga to bring more and more information on the work item to the front, saving you that extra click to view its detail. Compact or default zoom levels make the Kanban board more of a heat map of sorts and can accommodate more work items in one screen.

Of course, you can change your zoom level preferences at any time. And don't worry, this is your personal Kanban view, it does not affect other team members personal preferences.

You will probably find yourself sticking to a preferred zoom level most of the time while also collapsing swimlanes you don't need to see, or Kanban statuses that you don't manage.


### Kanban relationship with Scrum module

Taiga is about choice and flexibility while still adhering to basic agile and lean principles. We want you to start using either Scrum or Kanban for your project (or neither and stick with Issues) and later change your mind.

In order for Taiga to manage this transition, we decided that a Kanban work item or Kanban card would also be internally considered a Scrum User Story. That way, you can keep all your work regardless of which Agile module you are using.

Actually, you could have both modules, Kanban and Scrum activated and see the same item placed on the Scrum Backlog or a Scrum Sprint and, at the same time, see it on the Kanban board, in a particular swimlane. As the Taiga Team likes to say "if you know what you're doing, we're fine".

Be sure to read [KANBAN, the Dark Side](/features/kanbandarkside) to know more about potential pitfalls while using KANBAN.

