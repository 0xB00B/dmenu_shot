# How to make a simple Pull Request (PR)

The idea of making a Pull Request (PR) is that you want to owner of a repository (also known as "repo") to accept your changes to their project. This might sound complicated but it is a very simple procedure:

1. First you need to sign-in to the Codeberg.org (if you don't have an account, make one)
2. Fork the target repository:
    2.1. Go to the Git repository you want to contribute to (in this file we use this repository as the example)
    2.2. Click on the "Fork" button from the top-right corner of the page
3. Open terminal
4. navigate to the folder you want. For instance :
   ```sh
   mkdir --parents ~/Applications
   cd ~/Applications
   ```
5. Clone the repo to your computer
    3.1. In terminal run `git clone git@codeberg.org:<USERNAME>/<REPOSITORY_NAME>.git`. For example for me it would look like:
    ```sh
    git clone git@codeberg.org:mehrad/dmenu_shot.git
    ```
    3.2. navigate into the cloned folder:
    ```sh
     cd dmenu_shot
     ```
6. Do all the changes you want (get creative, add feature, fix bugs and etc.)
7. Test that your changes has not broke any functionality
8. Create git commit
   8.1. Stage the changes
   ```sh
   git add .
   ```
   8.2. Check if the correct files are staged
   ```sh
   git status
   git diff
   ```
   8.3. Commit changes with a proper message
   ```sh
   git commit -m "[fix] fixed the issue with blah blah blah"
   ```
9. Push your new commit(s)
```sh
git push 
```
10. Go to your Codeberg fork in your web browser
11. Click on the "New Pull Request" button which is above the list of files of the fork
12. Add enough descriptive text and if needed add some screenshots and etc. and submit the PR

Done! Everything should be set. Now sit back, relax and wait for the repository manager/admin to respond back.
