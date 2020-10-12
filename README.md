# Flow
Flow is a CLI for [Pivotal Tracker](https://www.pivotaltracker.com/), JIRA, & Github

Its goal is to help developers remain in [the flow](https://link.springer.com/article/10.1007/s10270-017-0621-x) by
providing an command line interface for many of the project management tasks that are traditionally managed via a browser.


## Installation

Installation can be done via Homebrew by adding this repo as a Tap and then installing the forumla.   Do do this, run the following commands:

```
$ brew tap webflint/flow
```

Then install the forumla:

```
$ brew install webflint-flow
```

## Setup

### Dependancies

1. You must have [JQ](https://stedolan.github.io/jq/) installed.
2. Flow should be compatible with both Bash and Zsh.

### Source Control

#### Connecting Github

Create a new [personal access token](https://github.com/settings/tokens) and export it as `GH_TOKEN`

### Project Management Backend

#### Connecting JIRA

1. Create a API Token in your [JIRA account settings](https://id.atlassian.com/manage-profile/security/api-tokens)
2. Export `JIRA_HOST=yourcompany.atlassian.net`
3. Export `JIRA_USER_NAME=your@email.address`
4. Export `JIRA_AUTH_TOKEN=your-api-token`

### Repo Configuration

Each local clone of a Git repo must be configured to map to a project in your Project Managment software.   This can be done by setting the `project_id` configuration setting to your project id where tickets are managed.

```
flow config set project_id PROJECT-KEY
```

Once this is done, you may view the project's details by running:

```
$ flow project show
```


#### JIRA Story States

Since JIRA allows for custom defined workflows it is recommended you map those to the Flow states.

`flow config set state.started YOUR_JIRA_STARTED_LABEL`

`flow config set state.finished YOUR_JIRA_FINISHED_LABEL`

`flow config set state.delivered YOUR_JIRA_DELIVERED_LABEL`

`flow config set state.accepted YOUR_JIRA_ACCEPTED_LABEL`

`flow config set state.done YOUR_JIRA_DONE_LABEL`

**Ensure the JIRA labels are provided in lowercase.**

### Verifying Setup

Once you've done the above, run `flow config` at the command line to verify you are setup correctly.

## Autocompletion

Autocompletion will be available after installation if you've already setup [Homebrew autocompletion](https://docs.brew.sh/Shell-Completion)

### Manual configuration

If you rather manually configure autocompletion, please follow the steps below.

#### Bash
Add the following to `~/.bashrc`

```bash
FLOW_BASE_DIR="$(dirname $(realpath "$(which flow)"))/../"
if [ -d "$FLOW_BASE_DIR" ]; then
  . "$FLOW_BASE_DIR/etc/bash_completion.d/flow_completion.bash"
fi
```

#### Zsh

Add the following to your `~/.zshrc`

```
FLOW_BASE_DIR="$(dirname $(realpath "$(which flow)"))/../"
source "$FLOW_BASE_DIR/etc/autocomplete.zsh"
```

## Usage

See the [documentation](https://github.com/webflint/homebrew-flow/blob/master/docs/commands.md) for usage information.
