# Frequently Asked Questions

## Git
- How do I add changes to the last commit without changing the message?  
  `git commit --amend --no-edit`
  
- Can I rebase commits interactively and change commit messages?  
  Yes: `git rebase -i HEAD~N`, then change `pick` to `reword` for desired commits.

- How do I undo the last commit but keep changes?  
  `git reset --soft HEAD~1`

- How do I discard all local changes?  
  `git reset --hard HEAD && git clean -fd`

- How do I see a one-line summary of the log?  
  `git log --oneline`

- How do I delete a local branch?  
  `git branch -d branch_name`

- How do I stash and apply changes?  
  `git stash`, then `git stash apply`

- How do I see commits in one branch but not another?  
  `git log branch1 ^branch2 --oneline`

## Docker

- Build image:  
  `docker build -t image_name .`

- List containers:  
  `docker ps -a`

- Start container:  
  `docker start container_id`

- Stop container:  
  `docker stop container_id`

- Remove container:  
  `docker rm container_id`

- Remove image:  
  `docker rmi image_id`

- Show logs:  
  `docker logs container_id`

- Run container interactively:  
  `docker run -it image_name /bin/bash`

- List images:  
  `docker images`

## Linux/Terminal

- Find files containing text:  
  `grep -rl 'text' .`

- Show running processes:  
  `ps aux`

- Kill process by name:  
  `pkill process_name`

- Show disk usage:  
  `df -h`

- Show directory size:  
  `du -sh directory/`

- Show listening ports:  
  `ss -tuln`

## VS Code

- Open file by name:  
  `Ctrl+P`

- Go to symbol in file:  
  `Ctrl+Shift+O`

- Multi-cursor select:  
  `Ctrl+D`

- Format document:  
  `Shift+Alt+F`

- Show terminal:  
  `Ctrl+``

- Show command palette:  
  `Ctrl+Shift+P`
