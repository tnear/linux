# Codex

Codex CLI is OpenAI's coding agent: https://github.com/openai/codex

## Resuming
Codex stores transcripts locally which can be resumed.
```bash
$ codex resume               # launches picker
$ codex resume --last        # skips picker, resumes last
$ codex resume <SESSION_ID>  # resume specified session
```

## Setup

### Auto-completions
Add this to `~/.zshrc`: `eval "$(codex completion zsh)"`

### `config.toml`
This specifies model, sandbox move, approval policy, web search, and more. It is located at `~/.codex/config.toml`.

`approval_mode`:
- `untrusted`: request permission to use a command not in its "trusted" list
- `on-failure`: if command fails, it will ask to run outside sandbox
- `on-request`: runs until it needs to ask for escalated permissions
- `never`: never ask for approvals

`sandbox_mode`:
- `read-only`: requires permission to write to file
- `workspace-write`: write to files in current directory
- `danger-full-access`: disable sandboxing

## AGENTS.md
This file provides a README which Codex always pulls into its context upon starting. It is a useful place to list build & test commands, workflows, and task-specific guidance.

AGENTS.md should be brief and focused (ideally, less than 100 lines).

### Link to other files
Provide links and explanation to other files which Codex will use *only as needed*. This is useful for keeping the context window smaller and more focused.
```
./agent-docs/architecture.md - use for architectural changes
```

### `~/.codex/AGENTS.md`
This file location is useful for personal defaults which do not apply to other users using the repository.

### `Plans.md`
Use AGENTS.md to point Codex to a Plans.md so the agent has a template for writing longer multi-step plans.

## Slash commands

https://developers.openai.com/codex/cli/slash-commands

### `/permissions`
See what Codex can do without prompting you.

### `/status`
Provides overview of version, model, directory, sandbox mode, AGENTS.md, account, context window, and more.

### `/review`
Finds issues before committing.

## Prompting

### Create custom prompt command
Create `~/.codex/prompts/add-tests.md` which contains a description of your task, such as "write unit tests for files which changed". Then run it with as a command: `/prompts:add-tests`.

### Best practices
More information: https://developers.openai.com/codex/prompting

- Use `@mention` to specify a file or directory
- Include verification steps, such as automated tests or linters
- Try open-ended prompts, such as brainstorming app improvements, performance bottlenecks, and identifying missing test coverage
- Codex supports reading images

## Resources
- https://github.com/openai/codex
- "Getting started with Codex", https://youtu.be/px7XlbYgk7I
- https://developers.openai.com/codex/cli/slash-commands
