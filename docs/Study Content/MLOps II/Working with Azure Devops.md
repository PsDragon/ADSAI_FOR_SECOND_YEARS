---
sort: 4
---

# Azure Devops

Azure Devops is a cloud-based service that provides a set of tools to manage your software development life cycle. 
Azure DevOps is a suite of tools and services provided by Microsoft that aims to streamline and improve the software development lifecycle. It offers a range of integrated tools for version control, continuous integration, continuous deployment, testing, and project management. In this block we will focus on the project management features of Azure DevOps, which are primarily handled through Azure Boards. Most of the other features will be handled using Azure Machine Learning which will be introduced later in the block.

__After this chapter, you will be able to:__

- [ ] Describe the key features of Azure DevOps
- [ ] Use Azure DevOps to do the following:
  - [ ] Create and manage a backlog for your project
  - [ ] Plan sprints and assign tasks to team members
  - [ ] Create and use Kanban board to monitor your project's progress


<div style="text-align:center">
<img src="https://zeevector.com/wp-content/uploads/Microsoft-Azure-DevOps-logo.png" alt="Azure Devops Logo" width="30%" > <img src="https://media.licdn.com/dms/image/D4D12AQH4aAEOi1BToQ/article-inline_image-shrink_400_744/0/1671963791772?e=1686182400&v=beta&t=XkwRl8tdw38kIp7_MiJP_WxcKzpAo3o-hNhn3bvPXbY" alt="Azure Boards Logo" width="30%" > <img src="https://media.licdn.com/dms/image/D4D12AQEm0hTxZ9Efag/article-inline_image-shrink_1000_1488/0/1671964375737?e=1686182400&v=beta&t=aiKbDhfKmyTWw_KdGxvN5gNetOwaPDtO_45k2doFezc" alt="Azure Repos Logo" width="20%" >
</div>


Azure Boards is a project management tool designed to help teams plan, track, and discuss work across the entire development process. Some of its key features include:

- Work Items: Azure Boards uses work items to represent tasks, user stories, bugs, or other units of work. These can be customized to fit your team's needs, and they can be linked to other work items, pull requests, or commits to provide context and traceability.

- Boards: The main visualization tool in Azure Boards is the Kanban-style board, which provides a customizable, drag-and-drop interface for managing work items. Teams can use the boards to track work in progress, prioritize tasks, and quickly identify bottlenecks in their development process.

- Backlogs: Azure Boards provides backlog management, allowing teams to prioritize and organize their work items hierarchically. Teams can use the backlog view to refine their work and ensure they're always working on the most valuable tasks.

- Sprints: Teams using Agile methodologies can plan and track their work in sprints (time-boxed iterations). Azure Boards supports sprint planning with features like capacity planning, forecasting, and burndown charts to help teams monitor their progress and make adjustments as needed.

- Analytics: Azure Boards comes with a built-in analytics service that provides insights into your team's performance, such as cycle time, lead time, and throughput. These metrics can help teams make data-driven decisions and identify areas for improvement.

Azure Repos is a component of Azure DevOps that provides version control and source code management services. It supports both Git and Team Foundation Version Control (TFVC) repositories, catering to different team preferences and workflows. Here are some of the key features of Azure Repos:

- Git repositories: Azure Repos provides unlimited, cloud-hosted private Git repositories. Teams can take advantage of Git's distributed version control system for efficient code collaboration, branching, and merging.

- Team Foundation Version Control (TFVC): For teams preferring a centralized version control system, Azure Repos offers TFVC, which supports features such as path-based permissions, exclusive checkouts, and file locking.

- Branch policies: Azure Repos allows you to enforce branch policies, ensuring code quality and consistency by requiring code reviews, running build validations, and setting up status checks before changes are merged into protected branches.

- Pull requests: With Azure Repos, you can use pull requests to facilitate code review and collaboration. Pull requests include features like inline comments, threaded discussions, and automatic merge conflict resolution.

These project management features enable teams to efficiently plan, track, and manage their work throughout the development process. This can help improve collaboration, reduce overhead, and ultimately deliver better software, faster. These tools will assist you in working in an agile manner within the scrum framework.

The following video provides an overview of Azure DevOps and its features. You only need to watch the first 50 minutes of the video. Where where Azure Boards and Azure Repos are discussed. 

<div style="text-align:center">
<iframe width="560" height="315" src="https://www.youtube.com/embed/DoWhZO7nbCY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
</div>


# Group Exercises 

__Complete the following exercises in your groups in the first Datalab__

For the following exercises you will need to sign into Azure DevOps. You can do this by going to [https://dev.azure.com](https://dev.azure.com) and clicking on the Sign In button in the top right corner. You will then be prompted to enter your Microsoft account credentials. Sign in using your BUas email address and password.

### Exercise 1: Create a Backlog for your Project

### Exercise 2: Create and plan your first sprint for your Project

### Exercise 3: Track Tasks Using Azure Boards for your Project
