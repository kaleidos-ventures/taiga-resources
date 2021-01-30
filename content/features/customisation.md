---
title: "Customisation"
date: 2020-10-05T11:27:41+02:00
draft: false
image: "images/customisation.png"
type: featured
order_home: 4
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

Likewise, user stories statuses that have the Archived flag ticked, will mean that those statuses are collapsed by default on the KANBAN board. It's a very handy way to keep a massive list of user stories out of sight.

{{< figure src="/images/collapsed.png" caption="This is how an archived Upcoming User Story state looks like by default on KANBAN" alt="This is how an archived Upcoming User Story state looks like by default on KANBAN" width="100%" class="articlefigure" >}}


### Tier 3: Permission & Roles configuration 

At Taiga we like to say that this is the perfect agile platform for cross-domain teams. It's important to highlight the different team members' backgrounds and make it count somehow.

Taiga addresses this in various ways. Different roles may enjoy different permissions, but they are also eligible for the user story points estimation break down. On top of that, you can use roles to filter against or multiple-assign as if they were macros.

Taiga does come with a heavily inspired digital product roles proposal, but you can get rid of it in no time. Just go, as an Admin project member, to SETTINGS > PERMISSIONS and delete or create any role. When deleting a role you'll be given a choice to reassign content owned by that role. You must have at least one role apart from the External User special role.

{{< figure src="/images/permissionsexample.png" caption="The Weird Old Couple role has all permissions for Epics but would not be able to add, delete or modify existing Sprints, just view them. Also, they don't have a say on user points estimation." alt="The Weird Old Couple role has all permissions for Epics but would not be able to add, delete or modify existing Sprints, just view them. Also, they don't have a say on user points estimation." width="100%" class="articlefigure" >}}

#### External User, what is this?

You might have noticed there is no way to delete the special External User role. This role represents both an anonymous user and a Taiga user not belonging to this project. There is a subtle difference between the two, mostly consisting on the Taiga user benefitting from the add/delete/modify permissions as well as view permission while the anonymous user (including search engines) only has view permission applied to them.

This is useful when you don't want to add someone to the team and still be able to point them to a project's resource. In large organisations, where you only care about your project team members, the rest of Taiga users, as long as they are logged in, can interact with the project based on what the External User role allows.

For **Public Projects** (see SETTINGS), the External User role has to have **at least View permissions** for all project entities **and they are listed under the Discover page**. **Private projects** are not listed publicly but they still use the External User role. We see many Private Projects enabling some permissions for the External User role to sort out their stakeholders' interaction. If there is any relevant risk in potential information leaks, we strongly suggest you keep the Project Private and a no-permissions External User role.

{{< figure src="/images/discover.png" caption="The Discover page for the tree.taiga.io site" alt="The Discover page for the tree.taiga.io site" width="100%" class="articlefigure" >}}

### Tier 4: Custom fields and Due Dates 

It's virtually impossible to satisfy everyone's need for a particular set of fields or attributes. Whether it is a User Story or an Issue, an Epic or a Task, the built-in "forms" might lack something you want to express as a dedicated piece of data. This is why we developed Custom Fields.

Custom Fields allow teams to evolve Epics, User Stories, Tasks or Issues into their desired characterisation. Custom Fields come in a variety of types. 

{{< figure src="/images/customfields.jpg" caption="Here we're editing one drop down list custom field wth three options, while showing all other available formats below" alt="Here we're editing one drop down list custom field wth three options, while showing all other available formats below" width="100%" class="articlefigure" >}}

You can choose between a simple text, a multi-line text, rich text, a date, a URL, a dropdown list of choices, a simple checkbox or a number. Depending on your need, you will probably pick a matching custom field type (you can change this later).

Let's see an example with Epics.

{{< figure src="/images/customfieldsepics.jpg" caption="A sample of custom fields for The Princess Bride Epics. Note the Dropdown list of choices." alt="A sample of custom fields for The Princess Bride Epics. Note the Dropdown list of choices." width="100%" class="articlefigure" >}}

This is how it would like on an Epic itself after some quick editing.

{{< figure src="/images/epicwithcstomfields.jpg" caption="An Epic enjoying a handful of Epic-only custom fields. The block is not collapsed by default." alt="An Epic enjoying a handful of Epic-only custom fields. The block is not collapsed by default." width="100%" class="articlefigure" >}}

Custom fields can be great, not only to ask for specific information for which teams don't want to use tags or the description field, but also for integrations. Both the API and the Live CSV exports list them and you could use their content to trigger automated actions or make use of them for specific reports.

Which is a nice segway to the last major customisation tier...

### Tier 5: 3rd party integrations 

When we developed Taiga we always had teams in mind. You can of course use Taiga on your own but it really shines when you have more people around you. That also applies to how Taiga thinks of itself regarding other tools and platforms, to be a great team player.

There are multiple options that come out of the box, like Github, Gitlab, Bitbuckets and Gogs. Also, Slack is trivial to link with Taiga. And for the rest, we have webhooks.

You can find the configuration options for all of them under SETTINGS > INTEGRATIONS and SETTINGS > PLUGINS as well as help to make it work.

{{< figure src="/images/gitlabconfig.png" caption="A sample gitlab config, we redacted the tokens and keys." alt="A sample gitlab config, we redacted the tokens and keys." width="100%" class="articlefigure" >}}

These integrations are meant to make Taiga aware of other tools actions as well as make Taiga able to send notifications to those tools so you can react and streamline certain pipelines or processess (manual or automated).

If you are interested in knowing more about how to extend Taiga, please check the wonderful [Extend Taiga Section on this]({{< ref "how-to-extend-taiga.md" >}}) here at Taiga Resources. You will get pointers to the API, CSV exports, Webhooks, and how to import/export Taiga projects.
