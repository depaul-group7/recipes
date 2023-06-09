## Purpose
This is the official location for the recipe repo of group 7.
The app we would like to create is a website for users to post, to search and to comment on different recipes all over the world.
<br/><br/>
## Credentials for this project
|Username|password|
|----------------------|---------------------------------------|
| user1| user1p |
| admin| admin |
| Craig Terry| password |
| Huanjia Wang| password |
## Group 7
|Member|Responsibilities|
|----------------------|---------------------------------------|
| Hristina Dokic| Credential related entities under security folder |
| Craig Terry| Tag related entities under tags folder |
| Huanjia Wang| Recipe, Comment under recipe folder |

## Conflict Resolutions
1. Primarily vote (because of odd number of members).  If a member feels strongly about an issue/area, then they take charge and/or instruct.
2. Another option to resolve the conflict could be: everyone is required to clone the repo from the GitHub location. instead of directly committing changes to the main branch, we are required to create PRs, and these PRs are not supposed to be merged into the original branch unless everyone 

## Adopted technology
| #|Area|Decision|Alternatives|Rationale|
|--|---------------|----------|-----------|--------------------|
| 1| IDE| Vs Code | IntelliJ | Easier to use, Team familiarity by most members|
| 2| Dependency Management| Gradle| Maven| Demo, example and teaching are all about Gradle|
| 3| Communication avenue| Teams| Discord| Every DePaul student has a Teams account, it doesn’t require extra registration |
||||||



| Tool | Used for | commands 
| ----------- | ----------- |------
| *[Terminal](https://www.microsoft.com/en-us/p/windows-terminal/9n0dx20hk701) | Real Terminal for Windows 
| [SDKMan](https://sdkman.io/) | Simplifies switching between JDKs and SDKs | sdk install java 17.0.6-tem<br/>sdk install gradle 
| [VS Code](https://code.visualstudio.com) | Code Editor  
| [Teams](https://www.microsoft.com/en-us/microsoft-teams/group-chat-software) | Communication avenue 

## VSCode extensions
**<i>Be sure to install it on WSL</I> if using WSL
| Extension | Used for 
| ----------- | ----------- 
| [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack) | To work with WSL
| [Java IDE Pack](https://marketplace.visualstudio.com/items?itemName=pverest.java-ide-pack) | To work with Java
| [Lombok Annotation Support](https://marketplace.visualstudio.com/items?itemName=GabrielBB.vscode-lombok) | Lombok support
| [Gradle for Java](https://marketplace.visualstudio.com/items?itemName=vscjava.vscode-gradle) | Gradle command
| [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker) | To work with Docker

 
## For [Github setup](https://help.github.com/articles/set-up-git)

## Meeting journal
- Apr 4: Every team member made a self-introduction. We talked about when we should meet, what kind of features each of us might be responsible for.
- Apr 15: Instead of creating tables by using schema.sql, we adopt JPA to manage the table creation.
- Apr 30: Had a discussion over the pros and cons between Maven and Gradle and finally made the decision to move from Maven to Gradle.
- May 3: Discussion on how we are going to divide the responsibility since we kind of had some misunderstanding on the rubrics of this class.  The meeting ended with the decision of restructuring the folders to better show responsibility.
- May 9: Transfer the code base to a new repo location under a newly created organization so that members could all be granted permission to add secrets to the repo.
- May 16: Set goals for adding security layer to this project. Use RBAC(role based access control) as our authorization mechanism
- May 23: Decide to add UI layer to our project, use mustache as our server side template engine
- May 30: Cut some of the features that we decide not to implement due to time issue, like adding recipe or tag through web page.


## Decisions made
1. We agreed on using Teams as your team communication software, since as a DPU student we’ve already registered automatically, and since the chat and meeting features provided by Teams are both of good quality and simple to use.
2. We agreed on meeting every Tuesday at 8.00 p.m. where each team member will make a simple presentation of what they completed for that week, any ideas or the issues they might be facing at that time.
3. We first pick Maven because we are more familiar with it. Later we transferred to Gradle since the demo, the example and the teaching are all about Gradle. Using Gradle to manage our project would just make our life much easier.
4. We decided to restructure the folders to map our responsibilities, which could also ease the difficulty to identify indivision contributions and make our commits less conflict-prone.
5. Transfer the code base to a new repo location under a newly created organization so that members could all be granted permission to add secrets to the repo
6. We decided to add security layer to this project. We plan to store the info of our user into relational database, and to use RBAC(role based access control) as our authorization mechanism.
7. We decide to add UI layer to our project, and adopt mustache as our server side template engine.
8. We agreed on cutting some of the features that we decide not to implement due to time issue, like adding recipe or tag through web page.

## Project Progress:
1. Tables have been added to the project:
- Recipe
- Tags
- TagsInfo
- RecipeTags
- Comment
- User
- UserRole
2. Added relations between entities.
3. Added Services for these entities and corresponding service tests.
4. Added log and swagger integration.
5. Added config file for different environment.
6. Added GitHub actions to build jar file, build Docker image and push to Docker Hub.
7. Added security layer.
8. Added UI layer.

## Appendex
![test result](https://github.com/depaul-group7/recipes/assets/63690540/14fffc06-ea93-48b4-94fd-8b670335f344)
![build success](https://github.com/depaul-group7/recipes/assets/63690540/89f2ddb3-d016-4e7e-a13a-b5db775ccc4c)
![docker hub](https://github.com/depaul-group7/recipes/assets/63690540/7031be4f-1406-4849-9d11-6ca3b2683aac)
![github actions](https://github.com/depaul-group7/recipes/assets/63690540/cee52d5d-7763-4848-8bed-80a97b177bef)
![successful gitflow](https://github.com/depaul-group7/recipes/assets/63690540/c534167c-36dc-412c-8930-ef8537a532a2)
![gradlew bootRun](https://github.com/depaul-group7/recipes/assets/63690540/f304a5b5-f226-46db-8cb9-5fd377104c20)
![openapi](https://github.com/depaul-group7/recipes/assets/63690540/35ac4b51-2ed5-43e3-b2a6-43e83f851e5a)
![login](https://github.com/depaul-group7/recipes/assets/63690540/9025d809-95e4-4799-b92e-f57ad576e88c)
![overview](https://github.com/depaul-group7/recipes/assets/63690540/89fd2c0c-8d17-4a1d-9bd4-956056b8e7af)
![search](https://github.com/depaul-group7/recipes/assets/63690540/35d1249b-3aa9-4bc9-bab9-cffda8a79628)
