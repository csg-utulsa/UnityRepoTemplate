# CSG Repository Template

This repository is a reusable starting point for Computer Simulation & Gaming (CSG) Unity projects at the University of Tulsa. It provides a standardized repository structure, Git configuration files, automation scripts, and a Unity project setup package to help you organize your work and follow professional software development practices.

**This template is not a completed Unity project.** You will create your own GitHub repository from this template, create a Unity project inside that repository, and configure both environments before beginning your assignment.

By following these instructions, you will establish a project that supports:

- **Project organization:** A consistent structure for Unity assets, source code, documentation, and other project files.
- **Version control:** Git branches, commit conventions, and pull requests to manage and review changes.
- **Unity collaboration:** Git Large File Storage (LFS) and Unity SmartMerge configuration to help manage large assets and merge conflicts.
- **Automated setup:** Scripts and tools that configure your local development environment and establish a standardized Unity project structure.

Complete the setup instructions in order before beginning assignment work. Once your repository and Unity project are configured, follow the assignment-specific instructions for developing, documenting, and submitting your work.

---

## 📁 Repository Structure Overview
The **repository root** contains project-level documentation, configuration files, automation scripts, and the Unity project setup package. Your Unity project will live in its own subfolder within the repository.

>[!NOTE]
>**The Unity project folder will not exist when you first create your repository.** You will create it in the repository root during the setup process. Until then, the repository will contain only the files and folders provided by the template.
>

The repository will contain the following:
- **Repository root:** The README, Git configuration files, automation scripts, setup packages, and other project-level resources.
- **`docs/`:** Supporting documentation, planning materials, research, technical notes, references, and other development resources.
- **`docs/imgs/`:** Screenshots, diagrams, and other images used in documentation and the project wiki.
- **`LastName-ProjectName-Unity/`:** Your Unity project, including its `Assets`, `Packages`, and `ProjectSettings` folders.

Additional documentation that is not published on the project wiki can also be stored in `docs/`, including design notes, research, meeting notes, and supplementary assignment materials.

---

## 🛠️ Setup Instructions

Follow these steps **in order** before starting the assignment.

---
### 1. Create Your Repository from the Template
1. Open the CSG Repository Template on GitHub.
2. Click **Use this template**, then select **Create a new repository**.
3. Under **Owner**, select the correct **GitHub organization for your course** _(i.e., CSG-3023, CSG-3813, etc.) 
4. Enter your repository name using the following format:
    - **`LastName-ProjectName`**
    - Replace `LastName` with your last name and `ProjectName` with the assignment or project name.
    -  **Example:** If your last name is Dent and the project is Sandbox, name your repository: `Dent-Sandbox`

6. Choose the repository visibility specified by your instructor.
7. Click **Create repository**.

---
### 2. Create Your Local Project Folder

Before creating the Unity project, download your new repository to your computer by cloning it.

1. Open your newly created GitHub repository.
2. Click **Code** and copy the repository's HTTPS URL.
3. Open GitHub Desktop, your IDE, or Git Bash and clone the repository to your preferred development folder.
4. Confirm that the cloned repository contains the template files, including the **`README.md`**, **`automation/`** folder, and **`CSG-ProjectSetup.unitypackage`**.

Your local repository folder should match your GitHub repository name.

---

### 3. Create the Unity Project

1. Open **Unity Hub**.
2. Click **+ New Project**.
3. Choose the **Core Universal 3D** template (*unless otherwise instructed*).
4. Set the **location** to this repository's root folder.
5. Name the Unity project folder `ProjectName-Unity`.

> [!NOTE]
> Name your GitHub repository using the format **`LastName-ProjectName`**.
>
> The Unity project folder should use the same name with **`-Unity`** added to the end: **`LastName-ProjectName-Unity`**.
>
> For example, a GitHub repository named **`Dent-Sandbox`** would contain a Unity project named **`Dent-Sandbox-Unity`**.

---

### 4. Configure Ignore & Attribute Rules
We use a layered configuration to manage files. You must manually "activate" these rules by renaming files.

#### A. Activate the Root Attributes (LFS & SmartMerge)
The repository root contains a file named `Unity.gitattributes`. This contains the rules for Large File Storage (LFS) and the SmartMerge logic you just configured.
1.  Locate `Unity.gitattributes` in the repository root.
2.  RENAME it to `.gitattributes`.
    
> [!NOTE]
> This file must stay in the root folder to work.
> It is named `Unity.gitattributes` in the template because GitHub restricts active LFS triggers on template repositories; renaming it "activates" the tracking for your project.
> 

#### B. The Unity Project Ignore Rules
1.  Locate the `Unity.gitignore` file (also in the root folder).
2.  **MOVE** this file into your `ProjectName-Unity` folder.
3.  **RENAME** it from `Unity.gitignore` to `.gitignore`.
    
> [!WARNING]
> This file must live **inside the Unity project folder**, not the root.
> It handles the engine-specific junk like the `Library/` folder, which can be several gigabytes of generated data.

> [!NOTE]
> Inside the root folder, there is another`.gitignore` file. **Leave this here.**
> It ignores IDE-specific folders (VS Code/Visual Studio), system logs, and build outputs that happen outside of the Unity folder.
> 

---

### 5. Run the Automation Script
This repository template includes a setup script designed to automate your environment. It handles three critical tasks:
- **Git Automation (Commit Rules):** Installs a linter that ensures your commit messages follow the project's categorization (e.g., `feat:`, `fix:`, `refactor:`).
- **Branch Protection & Naming (Pre-Push):** Installs a "gatekeeper" that prevents you from pushing to the wrong branch (`main`/`release`) and ensures your branch name follows the `type/description` format.
- **Git LFS Initialization:** Registers local Git LFS filters and hooks so large binary assets (textures, 3D models, audio) are tracked properly across all IDEs and Git tools (including JetBrains Rider and VS Code).
- **Unity YAML Merge:** Configures Unity's "SmartMerge" tool on your machine to automatically resolve conflicts in Scenes and Prefabs.

#### A. Open a Terminal    

1. **Open** Git Bash
2. Use the **`cd`** command to change to the repo directory 

Example:
```bash
cd D/Students/YourName/CSG3023/26sp-csg3023-sandbox-YourGitHubUserName
```
> [!NOTE]
> If you set up or cloned this repository using an **IDE** (Rider, VS Code, etc.),  
> you do **not** need to open Git Bash separately.
> You can instead:
> 1. Open the **Terminal inside your IDE**
> 2. Ensure the terminal shell is set to **Git Bash**
> 3. The terminal will already be **pointing at your project directory**
> 
> In this case, you can skip the `cd` step and run the setup command directly.


#### B. Run the Setup Script

1. **Run** the setup script
```bash
./automation/setup-unity-repo.sh
```
2.  Follow the Prompts:
    -   **Drive Letter:** Type the letter where Unity is installed (usually `C`) and hit Enter.
    -   **Unity Version:** Type your exact Unity version (e.g., `6000.3.6f1`). You can find this in the Unity Hub under the "Installs" tab.

#### What to look for:
- The script will display `✅ SUCCESS` for **Git Automation**, **Git LFS**, and **Unity YAML Merge**.
- A final verification check will run at the end. If it verifies both SmartMerge and Git LFS, your setup is complete.

> [!IMPORTANT]
> **This setup is LOCAL to your computer.** Git hooks and Unity SmartMerge settings are stored in the hidden `.git` folder, which is not synced to GitHub for security reasons.
> 
> **You MUST run the automation script every time you:**
> -   Clone the project onto a new computer (e.g., switching from a lab PC to a laptop).
> -   Re-clone the project after deleting your local folder.
> -   Update Unity to a newer version (to ensure the SmartMerge path remains valid).
> -   
> If you don't run the script, your branch/commit rules won't work, and your Unity Scenes will likely break during merges!
>

---

### 6. Create Your Initial Setup Branch
The project automation enforces a Git workflow where the `main` branch is protected and cannot be pushed to directly. 
All development must be placed on a working branch, and changes to `main` should be submitted via a **pull request (PR)** before merging into `main`.

The repository automation enforces the following Git workflow:
- **Commit messages:** Follow the required format, such as `feat: add player movement` rather than `added player movement`.
- **Branch names:** Follow the `type/description` format, such as `init/setup`, `feat/player-movement`, or `fix/inventory-bug`.
- **Pull requests:** Push your changes to your working branch and submit a PR to merge them into `main`. Direct pushes to `main` are blocked.

After the automation script finishes successfully, create your initial setup branch before making any project setup commits.

#### A. Create and Switch to Your Branch

From the repository root, run:

```
git switch -c init/setup
```

This command creates a branch named `init/setup` and switches your working copy to it.

#### B. Verify Your Branch

Run the following command to confirm that you are on the correct branch:

```
git branch --show-current
```

The terminal should display:

```
init/setup
```

> [!IMPORTANT]\
> **Create this branch before making your initial setup commits.**
> 
> Do not commit or attempt to push your setup work directly to `main`; otherwise, you will get an error. 

---

### 7. Import the CSG Project Setup Package

Instead of manually installing the hierarchy folder package and configuring the project yourself, this repository includes **`CSG-ProjectSetup.unitypackage`**. This package contains the CSG project setup tools used to standardize your Unity project.

#### A. Import the Package

1. Open your Unity project in the Unity Editor.
2. In the **Project** window, locate the `Assets` folder.
3. Right-click the `Assets` folder.
4. Select **Import Package → Custom Package...**.
5. Navigate to the **root of your repository** and select **`CSG-ProjectSetup.unitypackage`**.
6. Review the import dialog and click **Import**.

#### B. Run the Full Setup

After the package has finished importing:
1. Locate the Unity Editor's top menu bar.
2. Select **Tools → CSG → Setup → Run Full Setup**.
3. Allow the setup process to finish and review any messages in the Console.

The setup tools automate the following tasks:
- **Standardized Project Structure:** Creates the predefined folder structure under `Assets` to help keep project files organized.
- **Player Settings:** Configures the designated Player Settings, including the company name, application icon, and splash screen.
- **Default Packages:** Installs the default Unity packages configured by the setup tool through Unity Package Manager.
- **Hierarchy Folders:** Creates color-coded hierarchy folders in the sample scene using the Simple Unity Hierarchy Folder package.

> [!IMPORTANT]\
> **Organize the Sample Scene Hierarchy**
>
> The hierarchy folders are created in the provided **sample scene**. They are intended to organize the GameObjects in that scene; they do not automatically organize GameObjects in every scene in your project.
>
> After running the setup:
>
> - Review the newly created hierarchy folders in the Hierarchy window.
> - Move existing GameObjects into the appropriate folders.
> - Keep related GameObjects grouped together.
> - Use the provided folders when adding new GameObjects to the scene.
>
> For example, place player characters and NPCs under `Actors`, environmental objects under `Environment`, lights under `Lights`, and user interface objects under `UI`.
>
> **Do not leave existing GameObjects scattered at the root of the Hierarchy when an appropriate folder is available.** A clean hierarchy makes your scene easier to navigate, debug, and maintain.

> [!NOTE]\
> The setup package provides a consistent starting point, but it does not replace the assignment instructions. Follow any additional requirements specified for the assignment.

---

### 8. Verify Your Setup

Before committing your initial setup work, verify that each step has been completed successfully.

- The Unity project opens correctly.
- The root `.gitattributes` file is configured.
- The Unity project's `.gitignore` is in the correct folder.
- The automation script completed successfully.
- Git LFS and Unity SmartMerge are configured.
- You created and switched to the `init/setup` branch.
- `CSG-ProjectSetup.unitypackage` was imported successfully.
- `Tools → CSG → Setup → Run Full Setup` completed successfully.
- The sample scene hierarchy is organized into the appropriate folders.

Once everything is verified, commit and push your setup work before beginning the assignment.

---

### 9. Commit and Push Your Setup Work

After completing and verifying the repository and Unity setup, save your changes in Git and push your branch to GitHub. You will then open a pull request (PR) to merge your setup work into `main`.

#### A. Review and Commit Your Changes

From the repository root, run:

```
git status
```

Review the listed changes to confirm that the correct files are included. Stage the files you want to commit:

```
git add .
```

Commit your staged changes using the required commit-message format:

```
git commit -m "chore: configure initial Unity project"
```

The `chore` prefix identifies setup or maintenance work. Use a message that accurately describes the changes included in the commit.

#### B. Push Your Branch to GitHub

Push your `init/setup` branch to the remote repository:

```
git push -u origin init/setup
```

This command pushes your local `init/setup` branch to the remote named `origin` and sets its upstream tracking branch. For subsequent pushes from this branch, you can use:

```
git push
```

#### C. Open a Pull Request

After pushing your branch:

1. Open your repository on GitHub.
2. Create a pull request with `main` as the **base branch** and `init/setup` as the **compare branch**.
3. Review the changes included in the pull request.
4. Complete any required checks or review steps.
5. Merge the pull request according to the course workflow.

---

### 10. Implement the Following Workflow 

For each assignment, feature, or bug fix, follow this workflow to ensure your branch starts from the latest `main` and your changes are reviewed before being merged.

1. **Update `main`.** Switch to `main` and pull the latest changes from GitHub.

   ```bash
   git switch main
   git pull origin main
   ```

2. **Create a working branch.** Create a new branch from the updated `main` using the required `type/description` naming format.

   ```bash
   git switch -c feat/player-movement
   ```

3. **Complete your work.** Make changes on your working branch. Stage and commit your changes regularly using the required commit-message format.

   ```bash
   git add .
   git commit -m "feat: add player movement"
   ```

4. **Push your branch to GitHub.** Push your branch when you begin sharing your work and continue pushing your commits as development progresses.

   ```bash
   git push -u origin feat/player-movement
   ```

   The first push sets the upstream tracking branch. For subsequent pushes from the same branch, use `git push`.

5. **Continue working until the task is complete.** Test your changes, fix issues, and commit and push additional updates to the same branch. You do not need to create a new branch for every commit.

6. **Open a pull request (PR).** When the feature or task is complete, stable, and ready for review, open a PR on GitHub to merge your working branch into `main`.

7. **Complete the review and checks.** Address requested changes and resolve any failing checks. Once all required reviews and checks are complete, merge the PR according to the course workflow.

**Example branch names:**
- `feat/player-movement` — new feature
- `fix/inventory-bug` — bug fix
- `init/setup` — initial project setup

>[!NOTE]
> **A few Git accuracy notes**
> - `git add .` stages changes under the current directory. Review `git status` first, and check the staged files before committing if needed with `git diff --cached`.
> - `git switch -c branch-name` creates a new branch and switches to it. Use it only when that branch does not already exist locally.
> - `git push -u origin branch-name` assumes the repository's remote is named `origin`. You can verify the remote with `git remote -v`.
> - Pull requests do not automatically mean students can merge them. GitHub branch protection, required reviews, and course-specific rules determine whether the merge is allowed. The instructions should reflect your actual course workflow.

---

## ✅ Ready to Begin

Once your setup work has been pushed and your pull request has been submitted, your repository and Unity project are ready for assignment work.

From this point forward:

- Follow the assignment instructions.
- Create a separate branch for each new feature, fix, or task as appropriate.
- Commit frequently using the required commit-message format.
- Submit pull requests when merging work into `main`.
- Keep your repository, project files, and Unity scene hierarchies organized and professional.

**Get set up, stay organized, and get creative!**
