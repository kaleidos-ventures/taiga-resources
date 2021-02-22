---
title: "Asana Importer"
slug: importer-asana
date: 2021-02-21T06:27:09+02:00
draft: false
categories:
  - "Extend Taiga"
thumbnail: "images/import-asana.png"
thumbnail_home: "images/import-asana.png"
---

### How I import a project from Asana?

***Disclaimer: Some Taiga product screenshots might refer to older Taiga releases. When in doubt, please follow the written instructions.***

1. To start the importation project, you have to got to your project menu, and
click on "Create Project" button.

{{< figure src="/images/import-asana-step1.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

2. After that, you can select how to create the project, in this case we want
to "Import project".

{{< figure src="/images/import-asana-step2.png" caption="Start import process" alt="Start import process" class="articlefigure" >}}

3. You can select which importer do you want to use, in this case, you have to
select the "Asana" importer.

{{< figure src="/images/import-asana-step3.png" caption="Select importer" alt="Select importer" class="articlefigure" >}}

4. As soon as you select the asana importer, you will be redirected to the Asana
authorization page, to allow Taiga to access to your boards (during the next
day). You have to click "Allow", to continue the process.

{{< figure src="/images/import-asana-step4.png" caption="Authorize access to asana" alt="Authorize access to asana" class="articlefigure" >}}

5. Then you have to select which asana board want to import.

{{< figure src="/images/import-asana-step5.png" caption="Select Asana board" alt="Select Asana board" class="articlefigure" >}}

6. Once you have selected the board you have to define how you want to import
the project. This include:

  * The title of the project.
  * The description of the project.
  * If the project is public or private
  * If you want to import archived data from Asana.
  * If you want to keep a link from your taiga User Stories to the original asana cards.

{{< figure src="/images/import-asana-step6.png" caption="Fill new project information" alt="Fill new project information" class="articlefigure" >}}

7. Before finish the import process you have to match your Asana users with your
Taiga users, this allow us to keep assignation, creation and comments author
information correctly.

{{< figure src="/images/import-asana-step7.png" caption="Select users" alt="Select users" class="articlefigure" >}}

8. Finally, you only have to click "Import" button to start the import process,
this can take a while, so be patient.

{{< figure src="/images/import-asana-step8.png" caption="Confirm users selection" alt="Confirm users selection" class="articlefigure" >}}

9. After the import process, you can access to your new created project that
will looks like this.

{{< figure src="/images/import-asana-step9.png" caption="Imported project" alt="Imported project" class="articlefigure" >}}


### Wich data is imported, and how?

  - Asana Board as Taiga Kanban Project.
  - Board avatar as Project avatar.
  - Board columns as Taiga Kanban columns (User story statuses).
  - Cards as User Story (Optionally archived cards).
  - Cards Checklists tasks as User story tasks.
  - Board members as Project members.
  - Tags and tags colors.
  - Due Date field as Taiga custom field "Due date".
  - Comments.
  - Attachments.
  - Changes in title, description, due date and state.
  - Card assignations as User Story assignation for the first, and User Story watchers for the rest.
