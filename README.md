# CSG Repository Template

This repository serves as a **template** for game development projects.  
It is intentionally **empty** and designed to help you practice setting up a clean, professional project structure using GitHub and Unity.

You are responsible for creating and configuring the Unity project **inside this repository** before beginning any assignment work.

---

## 📁 Repository Structure Overview

The **root of this repository** is **not** the Unity project itself.

Instead:

- The **root folder** is for:
  - Documentation
  - Design notes
  - References
  - Planning files
  - READMEs and other supporting materials

- The **Unity project** will live inside its own subfolder within this repo.

> [!NOTE]  
> This template is built using **Unity 6.3** and will serve as the base for all future Unity assignments in this course.


---

## 🛠️ Setup Instructions

Follow these steps **in order** before starting the assignment.

---

### 1. Create the Unity Project

1. Open **Unity Hub**
2. Create a **new Unity project**
3. Set the **location** to this repository’s root folder
4. Name the Unity project folder:**ProjectName-Unity**

>[!NOTE]
> **ProjectName** is the name of your project, typically the name of the repository. 

---

### 2. Add Unity `.gitignore` and `.gitattributes` 
   - Move the **`Unity.gitignore`** file into the **ProjectName-Unity** folder
   - Move the **`Unity.gitattributes`** file into the **ProjectName-Unity** folder
   - Inside the **ProjectName-Unity** folder, rename 
      - **`Unity.gitignore`** to **`.gitignore`**
      - **`Unity.gitattributes`** to **`.gitattributes`**

These files ensure:
- Temporary and generated files are not committed
- Line endings and file formats are handled correctly

>[!WARNING]
> These files must live **inside the Unity project folder**, not the root repo. 

>[!NOTE]
> The repository root contains a **`.gitignore`** file that ignores IDE-specific configuration folders, log files, build outputs, and other temporary files that should not be committed.

---

### 3. Import Required Unity Package

You must import the **Simple Unity Hierarchy Folder** package.

#### Package Source
🔗 https://github.com/ProfessorAkram/SimpleUnityHierarchyFolder

#### How to Import
1. Open your Unity project
2. Open **Package Manager**
3. Click **➕** → *Add package from Git URL*
4. Paste the repository URL
5. Import the package

This package helps maintain a clean and readable hierarchy in Unity.

---
### 4. Configure Unity Smart Merge

Unity scenes and prefabs are stored as YAML files, which can cause merge conflicts.  
To reduce these issues, you must configure **Unity Smart Merge (UnityYAMLMerge)** manually using a Git configuration file.

1. Locate UnityYAMLMerge
- Find the UnityYAMLMerge tool on your system
- **Windows** examples: C:\Program Files\Unity\Hub\Editor<UnityVersion>\Editor\Data\Tools\UnityYAMLMerge.exe
-
2. Edit the Local **Git Config File**
- Inside the **root folder** locate the **hidden** `git` folder
- Open the `config` file located inside
- Add the following lines to your .git/config file:

```
    [merge] 
     tool = unityyamlmerge 
[mergetool "unityyamlmerge"] 
     trustExitCode = false 
     keepTemporaries = true 
     keepBackup = false 
     cmd = \"C:\\Program Files\\Unity\\Editor\\<Version Number>\\Data\\Tools\\UnityYAMLMerge.exe\" merge -p "$BASE" "$REMOTE" "$LOCAL" "$MERGED"`
```

>[!Caution]
>The path to your UnityYAMLMerge.exe file will depend on your Unity Editor version. Change the `<Version Number>` to the version you are using. For example: **6000.3.0f1**

---

### 5. One-Time Git Hook Setup 

This repository uses **Git hooks** to help enforce proper commit message formatting.

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

3. **Run** the setup script
```bash
./automation/setup-hooks.sh
```
If you see:
```text
Hooks installed!
```

You are done ✅

> [!IMPORTANT]
>  **Git hooks are NOT included automatically when you clone a repository.**  
> These steps must be repeated if you clone this repo on a **new computer**.

---

### 6. Commit and Push Your Work

Before moving on:

- Verify:
  - Unity project opens correctly
  - `.gitignore` and `.gitattributes` are present
  - Required package is installed
  - Git hooks are installed
 

>[!IMPORTANT]
> **All setup work must be committed and pushed before beginning the assignment.**

---

## ✅ Ready to Begin

Once everything above is complete and pushed to GitHub, your project repo and Unity project are ready.

From this point forward:

- Follow assignment instructions
- Commit frequently
- Keep your repository organized and professional

