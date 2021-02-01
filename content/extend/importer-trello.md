---
title: "Trello Importer"
date: 2020-10-05T11:27:09+02:00
draft: false
categories:
  - "Extend Taiga"
---


### How I import a project from Trello?

1. To start the importation project, you have to got to your project menu, and click on "Create Project" button.

{{< figure src="/images/import-tr-step1.png" caption="New project creation" alt="New project creation" class="articlefigure" >}}

2. After that, you can select how to create the project, in this case we want to "Import project".

{{< figure src="/images/import-tr-step2.png" caption="Start import process" alt="Start import process" class="articlefigure" width="100%" >}}

3. You can select which importer do you want to use, in this case, you have to select the "Trello" importer.

{{< figure src="/images/import-tr-step3.png" caption="Select importer" alt="Select importer" class="articlefigure" width="100%" >}}

4. As soon as you select the trello importer, you will be redirected to the Trello authorization page, to allow Taiga to access to your boards (during the next day). You have to click "Allow", to continue the process.

{{< figure src="/images/import-tr-step4.png" caption="Authoriza access to Trello" alt="Authoriza access to Trello" class="articlefigure" >}}

5. Then you have to select which trello board want to import.

{{< figure src="/images/import-tr-step5.png" caption="Select Trello board" alt="Select Trello board" class="articlefigure" width="100%" >}}

6. Once you have selected the board you have to define how you want to import the project. This include:

  * The title of the project.
  * The description of the project.
  * If the project is public or private
  * If you want to import archived data from Trello.
  * If you want to keep a link from your taiga User Stories to the original trello cards.

{{< figure src="/images/import-tr-step6.png" caption="Fill new project information" alt="Fill new project information" class="articlefigure" width="100%" >}}

7. Before finish the import process you have to match your Trello users with your Taiga users, this allow us to keep assignation, creation and comments author information correctly.

{{< figure src="/images/import-tr-step7.png" caption="Select users" alt="Select users" class="articlefigure" width="100%" >}}

8. Finally, you only have to click "Import" button to start the import process, this can take a while, so be patient.

{{< figure src="/images/import-tr-step8.png" caption="Confirm users selection" alt="Confirm users selection" class="articlefigure"  width="100%" >}}

9. After the import process, you can access to your new created project that will looks like this.

{{< figure src="/images/import-tr-step9.png" caption="Importer project" alt="Importer project" class="articlefigure" width="100%" >}}

### Wich data is imported, and how?

  - Trello Board as Taiga Kanban Project.
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
