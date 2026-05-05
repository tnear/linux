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
This specifies model, sandbox mode, approval policy, web search, and more. It is located at `~/.codex/config.toml`.

`approval_policy`:
- `untrusted`: request permission to use a command not in its "trusted" list
- `on-failure`: if command fails, it will ask to run outside sandbox
- `on-request`: runs until it needs to ask for escalated permissions
- `never`: never ask for approvals
- `granular`: configure approval behavior for specific prompt categories

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
See what actions Codex can perform without prompting you.

### `/status`
Provides overview of version, model, directory, sandbox mode, AGENTS.md, account, context window, and more.

### `/review`
Perform code review to finds issues before committing. Prompts about which branches and commits.

### `/plan`
Enter plan mode. This mode will only plan changes without making them.

Press `shift + tab` to toggle between Plan mode and Default mode.

### `/compact`
Summarize conversation to prevent hitting the context limit.

### `/rename`
Renames session for easier identification.

## Prompting

### Create custom prompt command
Create `~/.codex/prompts/add-tests.md` which contains a description of your task, such as "write unit tests for files which changed". Then run it with as a command: `/prompts:add-tests`.

### Best practices
More information: https://developers.openai.com/codex/prompting

- Use `@mention` to specify a file or directory
- Include verification steps, such as automated tests or linters
- Try open-ended prompts, such as brainstorming app improvements, performance bottlenecks, and identifying missing test coverage
- Codex supports reading images

## Bash commands
Prefix a command with `!` to run a shell command:
```bash
# list files
codex> !ls
```

## Adding directories
Use `codex --add-dir <dir1> --add-dir <dir2> ...` to add additional directories. This can be useful for spanning multiple repositories.

## Logs and errors
Logs are dumped in `~/.codex/log/codex-tui.log`.

## Tokens
When closed, Codex will output token usage for the session, such as this:

```
Token usage: total=864,457 input=834,427 (+ 9,796,864 cached) output=30,030 (reasoning 15,776)
```

- Token usage: total billed/counted tokens
- input: tokens model consumed
- 9,796,864 cached: additional input tokens reused from cache
- output=30,030: tokens model generated in response
- reasoning 15,776: a subset of `output` used for internal reasoning

1 token approximately equals 0.75 words, so 800,000 tokens is roughly 600,000 words.

## Subagents
Codex can spawn specialized agents in parallel that collect results into one response.

Subagents:
- are only spawned when explicitly asked to
- have their own context windows
- use more tokens
- inherit your current sandbox policy

## Resources
- https://github.com/openai/codex
- "Getting started with Codex", https://youtu.be/px7XlbYgk7I
- https://developers.openai.com/codex/cli/slash-commands
- https://developers.openai.com/codex/subagents
