# Distributed Computing

## Clone Repo

- Clone our Distributed Computing Class project

```
$: git clone https://github.com/CodersSquad/dc-labs.git
```
- Move into your new cloned project

```
$: cd dc-labs
```
- Run some testing commands

```
$: pwd
```

## Fork Repo

In order to submit your work to a place where you can have access to submit changes you will need to create a fork from the original repository. Fork it from [here](https://github.com/CodersSquad/dc-labs/)

## Create a new remote in your repository

Now that you officially forked your class github repository, we need to add it as a remote source in your local cloned proyect.

```
$: git remote add <your-github-account> https://github.com/<your_github_account/dc-labs.git
```

To verify that the new remote source has been properly created

```
$: git remote -v
```

To remove the remote resource and create it again.

```
$: git remote remove <wrongly_created_remote>
```

## Sync your local repository

This section will be really important for every lab that you're going to develop. Every time that you're going to start a new lab, make sure that you sync first your local cloned repository in order to get the latest changes from the class github repository.

First, make sure you are located in the root path of the repository.

```
$: pwd
```

### Checkout into the master branch

```
$: git checkout master
```

### Pull latest original dc-labs content

This will synchronize with the original class repository.

```
$: git pull --rebase origin master
```

Your master branch should be up-to-date and ready for the next step.

## Checkout a new branch

Now that your personal cloned repo is synced and up-to-date with the class github repo, we are ready to create the lab's branch. It's highly recommended to name the branch as the lab's name, in this case `test-lab`.

```
$: git checkout -b test-lab
```
*Note: this action will be executed one time per lab*

Verify the new branch.

```
$: git branch
```

*Important: all labs must be implemented in different branches than the master one. The master branch is ONLY for syncing purposes.*

Now you have a branch dedicated to your lab's solution.

## Code

Move to the directory of the folder that is prepared in your class repo, in this case `test-lab`.

```
$: cd labs/test-lab
```

There will be 4 files:
- `Makefile` (do not modify, classify commands)
- `lab.mk` (do not modify, test commands)
- `README.md` lab instructions

### Let's Code

- Open the instructions file.
- Code in the `.go` file.

Run manually

```
$: go run test-lab.go args
```

### Test

This last part is really important, this is going to be how the Classify API will test your app. So, make sure your app runs with the provided test cases.

```
$: make test
```

## Commit, Push & Submit

Now, you are ready to commit, push and submit your code.

### Prepare

This extra step is executed ONLY on new cloned projects. Prepare your token.

- Add your personal data into the local git config

```
$: git config --local classify.fullname "<Your Full Name>" # "Mariana Avalos Arce"
$: git config --local classify.github-user <your_github_user> # the-other-mariana
$: git config --local classify.school-id <your_school_id> # 0197495
$: git config --local classify.token <your_classify_token> # JHajshha
```
### Commit

- Add the changed files (repeat this action for each changed file)

```
$: git add test-lab.go
```
- Commit it

```
$: git commit -s -m 'Solved test-lab'
```

It may ask you to configure your user's name and email. Run the following commands and then commit again.

```
$: git config --global user.name "<Full Name>" # "Mariana Avalos Arce"
$: git config --global user.email "<your email>" # "mariana.avalos.arce@gmail.com"
```

### Push

Once your change is committed to the local repo history, push it to your fork's remote source.

```
$: git push <your_github_account> <branch_name>
```

### Submit

This is super easy

*Recommended to check this before submit*

```
$: cat test-lab.go
```

Now do it.

```
$: make submit
```

If you did all this and you need to do another change, do the `commit + push + submit` as many times as you need before the lab's due date.

That's all. Now you have submitted your work to the Classify API.

### Verify

Verify that your lab has been submitted to the Classify API.

```
$: make check-submission
```

Or enter to this [link](https://classify.obedmr.com/reports/submissions).