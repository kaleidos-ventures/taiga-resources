---
title: "Customisation"
date: 2020-10-05T11:27:41+02:00
draft: false
image: "images/customization.png"
type: "feature"
main: true
order: 4

# taxonomies
categories:
  - "customisation"
---

No two teams, projects or organisations are alike. Learn how we elegantly crushed the one-size-fits-all curse. Both lack of flexibility and extreme configurability plague the project management arena. Taiga's approach is simple: keep consistency throughout projects, regardless of their simple or advanced status, and outsource some ad-hoc decision to the team's real-world interactions.

This content is specially useful for any Taiga user that has at least admin rights on any project, since most of what we will cover do require ADMIN status. You can give ADMIN status to anyone in your project under PROJECT > MEMBERS regardless of their project role. 

### Tier 1: Modules selection and Default values

This might seem obvious but it's worth mentioning. One of the most profound ways to customise a project is to select which modules are available. Depending on this, a team might lean towards one way or another regarding project management. 

The Modules that are available are Epics, Scrum, KANBAN, Issues, Wiki and Meetup. Scrum and Meetup require some minimum configuration but the rest are fine just being activated.

{{< figure src="/images/modulesactivation.png" caption="Module activation panel under PROJECT > SETTINGS > MODULES" alt="Module activation panel under PROJECT > SETTINGS > MODULES" width="100%" class="articlefigure" >}}

It's also recommended that you take a look at the Default Values for the different Taiga items that are available through Module activation. You can have multiple options for some of the most frequently used drop down lists but... would you like to have one particular default choice pre-selected rather than the standard "first item"? If so, just fine-tune this under SETTINGS > PROJECT > DEFAULT VALUES. 

{{< figure src="/images/defaultvalues.jpg" caption="Preselected values for main project entities" alt="Preselected values for main project entities" width="100%" class="articlefigure" >}}

If you activated **Scrum**, we also recommend that you review the pseudo-fibonacci points scale under SETTINGS > ATTRIBUTES > POINTS and edit your preferred labels linked to the actual numbers. Feel free to adapt it to your team's liking.

{{< figure src="/images/points.png" caption="A nice verbose alternative to the default points scale" alt="A nice verbose alternative to the default points scale" width="100%" class="articlefigure" >}}

It's not uncommon to come back to this customisation months later as the project advances and requires different features. Of course, this also applies to the rest of the customisation tiers below.


### Tier 2: Workflows editing

Taiga offers **Epics, User Stories, Tasks and Issues** to enjoy their own particular set of statuses. We tried our best to use convenient default values but there's absolutely no need to stick to them. Actually, we would like to encourage a team discussion on statuses and workflows as this is part of a healthy and self-conscious project management.

All the magic happend under **SETTINGS > ATTRIBUTES > STATUSES** where you can edit those statuses, alter their natural order and pick useful colours.

{{< figure src="/images/statuses.jpg" caption="All four entities and theior statuses. Keep in mind that User Story statuses apply for both Scrum and KANBAN" alt="All four entities and theior statuses. Keep in mind that User Story statuses apply for both Scrum and KANBAN" width="100%" class="articlefigure" >}}

A key configuration choice for all four entities is the "closed" status. If you decide that a particular state means that item is "closed" (regardless of the status label you choose), Taiga will use that information for metrics and some features might behave differently. For instance, if a User Story is considered closed if it reaches the "Rejected" status, Taiga will count any estimated user story points for that user story as "done" as well as making the user story less visible on sprints and lists.

Likewise, user stories statuses that have the Archived flag ticked, will mean that those statuses are collapsed by default on the KANBAN board. It's a very handy way to keep a massive historical list of user stories out of sight.

### Tier 3: Permission & Roles configuration 
Type, Severity and Priority

Page for Customisation


### Tier 4: 3rd party integrations 
Type, Severity and Priority

Page for Customisation


### Tier 5: Custom fields and Due Dates 
Type, Severity and Priority

Page for Customisation
