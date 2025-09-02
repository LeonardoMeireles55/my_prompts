The rise of "context engineering"

Context engineering is building dynamic systems to provide the right information and tools in the right format such that the LLM can plausibly accomplish the task.

Most of the time when an agent is not performing reliably the underlying cause is that the appropriate context, instructions and tools have not been communicated to the model.

LLM applications are evolving from single prompts to more complex, dynamic agentic systems. As such, context engineering is becoming the most important skill an AI engineer can develop.

What is context engineering?
Context engineering is building dynamic systems to provide the right information and tools in the right format such that the LLM can plausibly accomplish the task.

This is the definition that I like, which builds upon recent takes on this from Tobi Lutke, Ankur Goyal, and Walden Yan. Let’s break it down.

Context engineering is a system

Complex agents likely get context from many sources. Context can come from the developer of the application, the user, previous interactions, tool calls, or other external data. Pulling these all together involves a complex system.

This system is dynamic

Many of these pieces of context can come in dynamically. As such, the logic for constructing the final prompt needs to be dynamic as well. It is not just a static prompt.

You need the right information

A common reason agentic systems don’t perform is they just don’t have the right context. LLMs cannot read minds - you need to give them the right information. Garbage in, garbage out.

You need the right tools

It may not always be the case that the LLM will be able to solve the task just based solely on the inputs. In these situations, if you want to empower the LLM to do so, you will want to make sure that it has the right tools. These could be tools to look up more information, take actions, or anything in between. Giving the LLM the right tools is just as important as giving it the right information.

The format matters

Just like communicating with humans, how you communicate with LLMs matters. A short but descriptive error message will go a lot further a large JSON blob. This also applies to tools. What the input parameters to your tools are matters a lot when making sure that LLMs can use them.

Can it plausibly accomplish the task?

This is a great question to be asking as you think about context engineering. It reinforces that LLMs are not mind readers - you need to set them up for success. It also helps separate the failure modes. Is it failing because you haven’t given it the right information or tools? Or does it have all the right information and it just messed up? These failure modes have very different ways to fix them.

Why is context engineering important
When agentic systems mess up, it’s largely because an LLM messes. Thinking from first principles, LLMs can mess up for two reasons:

The underlying model just messed up, it isn’t good enough
The underlying model was not passed the appropriate context to make a good output
More often than not (especially as the models get better) model mistakes are caused more by the second reason. The context passed to the model may be bad for a few reasons:

There is just missing context that the model would need to make the right decision. Models are not mind readers. If you do not give them the right context, they won’t know it exists.
The context is formatted poorly. Just like humans, communication is important! How you format data when passing into a model absolutely affects how it responds
How is context engineering different from prompt engineering?
Why the shift from “prompts” to “context”? Early on, developers focused on phrasing prompts cleverly to coax better answers. But as applications grow more complex, it’s becoming clear that providing complete and structured context to the AI is far more important than any magic wording.

I would also argue that prompt engineering is a subset of context engineering. Even if you have all the context, how you assemble it in the prompt still absolutely matters. The difference is that you are not architecting your prompt to work well with a single set of input data, but rather to take a set of dynamic data and format it properly.

I would also highlight that a key part of context is often core instructions for how the LLM should behave. This is often a key part of prompt engineering. Would you say that providing clear and detailed instructions for how the agent should behave is context engineering or prompt engineering? I think it’s a bit of both.

Examples of context engineering
Some basic examples of good context engineering include:

Tool use: Making sure that if an agent needs access to external information, it has tools that can access it. When tools return information, they are formatted in a way that is maximally digestable for LLMs
Short term memory: If a conversation is going on for a while, creating a summary of the conversation and using that in the future.
Long term memory: If a user has expressed preferences in a previous conversation, being able to fetch that information.
Prompt Engineering: Instructions for how an agent should behave are clearly enumerated in the prompt.
Retrieval: Fetching information dynamically and inserting it into the prompt before calling the LLM.
How LangGraph enables context engineering
When we built LangGraph, we built it with the goal of making it the most controllable agent framework. This also allows it to perfectly enable context engineering.

With LangGraph, you can control everything. You decide what steps are run. You decide exactly what goes into your LLM. You decide where you store the outputs. You control everything.

This allows you do all the context engineering you desire. One of the downsides of agent abstractions (which most other agent frameworks emphasize) is that they restrict context engineering. There may be places where you cannot change exactly what goes into the LLM, or exactly what steps are run beforehand.

Side note: a very good read is Dex Horthy's "12 Factor Agents". A lot of the points there relate to context engineering ("own your prompts", "own your context building", etc). The header image for this blog is also taken from Dex. We really enjoy the way he communicates about what is important in the space.

How LangSmith helps with context engineering
LangSmith is our LLM application observability and evals solution. One of the key features in LangSmith is the ability to trace your agent calls. Although the term "context engineering" didn't exist when we built LangSmith, it aptly describes what this tracing helps with.

LangSmith lets you see all the steps that happen in your agent. This lets you see what steps were run to gather the data that was sent into the LLM.

LangSmith lets you see the exact inputs and outputs to the LLM. This lets you see exactly what went into the LLM - the data it had and how it was formatted. You can then debug whether that contains all the relevant information that is needed for the task. This includes what tools the LLM has access to - so you can debug whether it's been given the appropriate tools to help with the task at hand

Communication is all you need
A few months ago I wrote a blog called "Communication is all you need". The main point was that communicating to the LLM is hard, and not appreciated enough, and often the root cause of a lot of agent errors. Many of these points have to do with context engineering!

Context engineering isn't a new idea - agent builders have been doing it for the past year or two. It's a new term that aptly describes an increasingly important skill. We'll be writing and sharing more on this topic. We think a lot of the tools we've built (LangGraph, LangSmith) are perfectly built to enable context engineering, and so we're excited to see the emphasis on this take off.


The New Skill in AI is Not Prompting, It's Context Engineering
June 30, 2025
5 minute read
Context Engineering is new term gaining traction in the AI world. The conversation is shifting from "prompt engineering" to a broader, more powerful concept: Context Engineering. Tobi Lutke describes it as "the art of providing all the context for the task to be plausibly solvable by the LLM.” and he is right.

With the rise of Agents it becomes more important what information we load into the “limited working memory”. We are seeing that the main thing that determines whether an Agents succeeds or fails is the quality of the context you give it. Most agent failures are not model failures anyemore, they are context failures.

What is the Context?
To understand context engineering, we must first expand our definition of "context." It isn't just the single prompt you send to an LLM. Think of it as everything the model sees before it generates a response.

Context

Instructions / System Prompt: An initial set of instructions that define the behavior of the model during a conversation, can/should include examples, rules ….
User Prompt: Immediate task or question from the user.
State / History (short-term Memory): The current conversation, including user and model responses that have led to this moment.
Long-Term Memory: Persistent knowledge base, gathered across many prior conversations, containing learned user preferences, summaries of past projects, or facts it has been told to remember for future use.
Retrieved Information (RAG): External, up-to-date knowledge, relevant information from documents, databases, or APIs to answer specific questions.
Available Tools: Definitions of all the functions or built-in tools it can call (e.g., check_inventory, send_email).
Structured Output: Definitions on the format of the model's response, e.g. a JSON object.
Why It Matters: From Cheap Demo to Magical Product
The secret to building truly effective AI agents has less to do with the complexity of the code you write, and everything to do with the quality of the context you provide.

Building Agents is less about the code you write or framework you use. The difference between a cheap demo and a “magical” agent is about the quality of the context you provide. Imagine an AI assistant is asked to schedule a meeting based on a simple email:

Hey, just checking if you’re around for a quick sync tomorrow.

The "Cheap Demo" Agent has poor context. It sees only the user's request and nothing else. Its code might be perfectly functional—it calls an LLM and gets a response—but the output is unhelpful and robotic:

Thank you for your message. Tomorrow works for me. May I ask what time you had in mind?

The "Magical" Agent is powered by rich context. The code's primary job isn't to figure out how to respond, but to gather the information the LLM needs to full fill its goal. Before calling the LLM, you would extend the context to include

Your calendar information (which shows you're fully booked).
Your past emails with this person (to determine the appropriate informal tone).
Your contact list (to identify them as a key partner).
Tools for send_invite or send_email.
Then you can generate a response.

Hey Jim! Tomorrow’s packed on my end, back-to-back all day. Thursday AM free if that works for you? Sent an invite, lmk if it works.

The magic isn't in a smarter model or a more clever algorithm. It’s in about providing the right context for the right task. This is why context engineering will matter. Agent failures aren't only model failures; they are context failures.

From Prompt to Context Engineering
What is context engineering? While "prompt engineering" focuses on crafting the perfect set of instructions in a single text string, context engineering is a far broader. Let's put it simply:

Context Engineering is the discipline of designing and building dynamic systems that provides the right information and tools, in the right format, at the right time, to give a LLM everything it needs to accomplish a task.

Context Engineering is

A System, Not a String: Context isn't just a static prompt template. It’s the output of a system that runs before the main LLM call.
Dynamic: Created on the fly, tailored to the immediate task. For one request this could be the calendar data for another the emails or a web search.
About the right information, tools at the right time: The core job is to ensure the model isn’t missing crucial details ("Garbage In, Garbage Out"). This means providing both knowledge (information) and capabilities (tools) only when required and helpful.
where the format matters: How you present information matters. A concise summary is better than a raw data dump. A clear tool schema is better than a vague instruction.
Conclusion
Building powerful and reliable AI Agents is becoming less about finding a magic prompt or model updates. It is about the engineering of context and providing the right information and tools, in the right format, at the right time. It’s a cross-functional challenge that involves understanding your business use case, defining your outputs, and structuring all the necessary information so that an LLM can “accomplish the task."


Context Engineering for Agents
Jun 23, 2025

Lance Martin

TL;DR
Agents need context to perform tasks. Context engineering is the art and science of filling the context window with just the right information at each step of an agent’s trajectory. In this post, I group context engineering into a few common strategies seen across many popular agents today.


Context Engineering
As Andrej Karpathy puts it, LLMs are like a new kind of operating system. The LLM is like the CPU and its context window is like the RAM, serving as the model’s working memory. Just like RAM, the LLM context window has limited capacity to handle various sources of context. And just as an operating system curates what fits into a CPU’s RAM, “context engineering” plays a similar role. Karpathy summarizes this well:

[Context engineering is the] ”…delicate art and science of filling the context window with just the right information for the next step.”


What are the types of context that we need to manage when building LLM applications? Context engineering is an umbrella that applies across a few different context types:

Instructions – prompts, memories, few‑shot examples, tool descriptions, etc
Knowledge – facts, memories, etc
Tools – feedback from tool calls
Context Engineering for Agents
This year, interest in agents has grown tremendously as LLMs get better at reasoning and tool calling. Agents interleave LLM invocations and tool calls, often for long-running tasks.


However, long-running tasks and accumulating feedback from tool calls mean that agents often utilize a large number of tokens. This can cause numerous problems: it can exceed the size of the context window, balloon cost / latency, or degrade agent performance. Drew Breunig nicely outlined a number of specific ways that longer context can cause perform problems, including:

Context Poisoning: When a hallucination makes it into the context
Context Distraction: When the context overwhelms the training
Context Confusion: When superfluous context influences the response
Context Clash: When parts of the context disagree
With this in mind, Cognition called out the importance of context engineering:

“Context engineering” … is effectively the #1 job of engineers building AI agents.

Anthropic also laid it out clearly:

Agents often engage in conversations spanning hundreds of turns, requiring careful context management strategies.

So, how are people tackling this challenge today? I group approaches into 4 buckets — write, select, compress, and isolate — and give some examples of each one below.


Write Context
Writing context means saving it outside the context window to help an agent perform a task.

Scratchpads

When humans solve tasks, we take notes and remember things for future, related tasks. Agents are also gaining these capabilities! Note-taking via a “scratchpad” is one approach to persist information while an agent is performing a task. The central idea is to save information outside of the context window so that it’s available to the agent. Anthropic’s multi-agent researcher illustrates a clear example of this:

The LeadResearcher begins by thinking through the approach and saving its plan to Memory to persist the context, since if the context window exceeds 200,000 tokens it will be truncated and it is important to retain the plan.

Scratchpads can be implemented in a few different ways. They can be a tool call that simply writes to a file. It could also just be a field in a runtime state object that persists during the session. In either case, scratchpads let agents save useful information to help them accomplish a task.

Memories

Scratchpads help agents solve a task within a given session, but sometimes agents benefit from remembering things across many sessions. Reflexion introduced the idea of reflection following each agent turn and re-using these self-generated memories. Generative Agents created memories synthesized periodically from collections of past agent feedback.

These concepts made their way into popular products like ChatGPT, Cursor, and Windsurf, which all have mechanisms to auto-generate long-term memories based on user-agent interactions.


Select Context
Selecting context means pulling it into the context window to help an agent perform a task.

Scratchpad

The mechanism for selecting context from a scratchpad depends upon how the scratchpad is implemented. If it’s a tool, then an agent can simply read it by making a tool call. If it’s part of the agent’s runtime state, then the developer can choose what parts of state to expose to an agent each step. This provides a fine-grained level of control for exposing scratchpad context to the LLM at later turns.

Memories

If agents have the ability to save memories, they also need the ability to select memories relevant to the task they are performing. This can be useful for a few reasons. Agents might select few-shot examples (episodic memories) for examples of desired behavior, instructions (procedural memories) to steer behavior, or facts (semantic memories) give the agent task-relevant context.


One challenge is ensuring that relevant memories are selected. Some popular agents simply use a narrow set of files that are always pulled into context. For example, many code agent use files to save instructions (”procedural” memories) or, in some cases, examples (”episodic” memories). Claude Code uses CLAUDE.md. Cursor and Windsurf use rules files.

But, if an agent is storing a larger collection of facts and / or relationships (e.g., semantic memories), selection is harder. ChatGPT is a good example of a popular product that stores and selects from a large collection of user-specific memories.

Embeddings and / or knowledge graphs for memory indexing are commonly used to assist with selection. Still, memory selection is challenging. At the AIEngineer World’s Fair, Simon Willison shared an example of memory selection gone wrong: ChatGPT fetched his location from memories and unexpectedly injected it into a requested image. This type of unexpected or undesired memory retrieval can make some users feel like the context window “no longer belongs to them”!

Tools

Agents use tools, but can become overloaded if they are provided with too many. This is often because the tool descriptions can overlap, causing model confusion about which tool to use. One approach is to apply RAG (retrieval augmented generation) to tool descriptions in order to fetch the most relevant tools for a task based upon semantic similarity. Some recent papers have shown that this improves tool selection accuracy by 3-fold.

Knowledge

RAG is a rich topic and can be a central context engineering challenge. Code agents are some of the best examples of RAG in large-scale production. Varun from Windsurf captures some of these challenges well:

Indexing code ≠ context retrieval … [We are doing indexing & embedding search … [with] AST parsing code and chunking along semantically meaningful boundaries … embedding search becomes unreliable as a retrieval heuristic as the size of the codebase grows … we must rely on a combination of techniques like grep/file search, knowledge graph based retrieval, and … a re-ranking step where [context] is ranked in order of relevance.

Compressing Context
Compressing context involves retaining only the tokens required to perform a task.

Context Summarization

Agent interactions can span hundreds of turns and use token-heavy tool calls. Summarization is one common way to manage these challenges. If you’ve used Claude Code, you’ve seen this in action. Claude Code runs “auto-compact” after you exceed 95% of the context window and it will summarize the full trajectory of user-agent interactions. This type of compression across an agent trajectory can use various strategies such as recursive or hierarchical summarization.


It can also be useful to add summarization at points in an agent’s design. For example, it can be used to post-process certain tool calls (e.g., token-heavy search tools). As a second example, Cognition mentioned summarization at agent-agent boundaries to reduce tokens during knowledge hand-off. Summarization can be a challenge if specific events or decisions need to be captured. Cognition uses a fine-tuned model for this, which underscores how much work can go into this step.

Context Trimming

Whereas summarization typically uses an LLM to distill the most relevant pieces of context, trimming can often filter or, as Drew Breunig points out, “prune” context. This can use hard-coded heuristics like removing older messages from a message list. Drew also mentions Provence, a trained context pruner for Question-Answering.

Isolating Context
Isolating context involves splitting it up to help an agent perform a task.

Multi-agent

One of the most popular ways to isolate context is to split it across sub-agents. A motivation for the OpenAI Swarm library was “separation of concerns”, where a team of agents can handle sub-tasks. Each agent has a specific set of tools, instructions, and its own context window.


Anthropic’s multi-agent researcher makes a case for this: many agents with isolated contexts outperformed single-agent, largely because each subagent context window can be allocated to a more narrow sub-task. As the blog said:

[Subagents operate] in parallel with their own context windows, exploring different aspects of the question simultaneously.

Of course, the challenges with multi-agent include token use (e.g., up to 15× more tokens than chat as reported by Anthropic), the need for careful prompt engineering to plan sub-agent work, and coordination of sub-agents.

Context Isolation with Environments

HuggingFace’s deep researcher shows another interesting example of context isolation. Most agents use tool calling APIs, which return JSON objects (tool arguments) that can be passed to tools (e.g., a search API) to get tool feedback (e.g., search results). HuggingFace uses a CodeAgent, which outputs code that contains the desired tool calls. The code then runs in a sandbox. Selected context (e.g., return values) from the tool calls is then passed back to the LLM.


This allows context to be isolated from the LLM in the environment. Hugging Face noted that this is a great way to isolate token-heavy objects in particular:

[Code Agents allow for] a better handling of state … Need to store this image / audio / other for later use? No problem, just assign it as a variable in your state and you [use it later].

State

It’s worth calling out that an agent’s runtime state object can also be a great way to isolate context. This can serve the same purpose as sandboxing. A state object can be designed with a schema (e.g., a Pydantic model) that has fields that context can be written to. One field of the schema (e.g., messages) can be exposed to the LLM at each turn of the agent, but the schema can isolate information in other fields for more selective use.

Conclusion
Patterns for agent context engineering are still evolving, but we can group common approaches into 4 buckets — write, select, compress, and isolate —:

Writing context means saving it outside the context window to help an agent perform a task.
Selecting context means pulling it into the context window to help an agent perform a task.
Compressing context involves retaining only the tokens required to perform a task.
Isolating context involves splitting it up to help an agent perform a task.
Understanding and utilizing these patterns is a central part of building effective agents today.


[← Back to README](https://github.com/humanlayer/12-factor-agents/blob/main/README.md)

### 3. Own your context window

You don't necessarily need to use standard message-based formats for conveying context to an LLM.

> #### At any given point, your input to an LLM in an agent is "here's what's happened so far, what's the next step"

<!-- todo syntax highlighting -->
<!-- ![130-own-your-context-building](https://github.com/humanlayer/12-factor-agents/blob/main/img/130-own-your-context-building.png) -->

Everything is context engineering. [LLMs are stateless functions](https://thedataexchange.media/baml-revolution-in-ai-engineering/) that turn inputs into outputs. To get the best outputs, you need to give them the best inputs.

Creating great context means:

- The prompt and instructions you give to the model
- Any documents or external data you retrieve (e.g. RAG)
- Any past state, tool calls, results, or other history
- Any past messages or events from related but separate histories/conversations (Memory)
- Instructions about what sorts of structured data to output

![image](https://github.com/user-attachments/assets/0f1f193f-8e94-4044-a276-576bd7764fd0)


### on context engineering

This guide is all about getting as much as possible out of today's models. Notably not mentioned are:

- Changes to models parameters like temperature, top_p, frequency_penalty, presence_penalty, etc.
- Training your own completion or embedding models
- Fine-tuning existing models

Again, I don't know what's the best way to hand context to an LLM, but I know you want the flexibility to be able to try EVERYTHING.

#### Standard vs Custom Context Formats

Most LLM clients use a standard message-based format like this:

```yaml
[
  {
    "role": "system",
    "content": "You are a helpful assistant..."
  },
  {
    "role": "user",
    "content": "Can you deploy the backend?"
  },
  {
    "role": "assistant",
    "content": null,
    "tool_calls": [
      {
        "id": "1",
        "name": "list_git_tags",
        "arguments": "{}"
      }
    ]
  },
  {
    "role": "tool",
    "name": "list_git_tags",
    "content": "{\"tags\": [{\"name\": \"v1.2.3\", \"commit\": \"abc123\", \"date\": \"2024-03-15T10:00:00Z\"}, {\"name\": \"v1.2.2\", \"commit\": \"def456\", \"date\": \"2024-03-14T15:30:00Z\"}, {\"name\": \"v1.2.1\", \"commit\": \"abe033d\", \"date\": \"2024-03-13T09:15:00Z\"}]}",
    "tool_call_id": "1"
  }
]
```

While this works great for most use cases, if you want to really get THE MOST out of today's LLMs, you need to get your context into the LLM in the most token- and attention-efficient way you can.

As an alternative to the standard message-based format, you can build your own context format that's optimized for your use case. For example, you can use custom objects and pack/spread them into one or more user, system, assistant, or tool messages as makes sense.

Here's an example of putting the whole context window into a single user message:
```yaml

[
  {
    "role": "system",
    "content": "You are a helpful assistant..."
  },
  {
    "role": "user",
    "content": |
            Here's everything that happened so far:

        <slack_message>
            From: @alex
            Channel: #deployments
            Text: Can you deploy the backend?
        </slack_message>

        <list_git_tags>
            intent: "list_git_tags"
        </list_git_tags>

        <list_git_tags_result>
            tags:
              - name: "v1.2.3"
                commit: "abc123"
                date: "2024-03-15T10:00:00Z"
              - name: "v1.2.2"
                commit: "def456"
                date: "2024-03-14T15:30:00Z"
              - name: "v1.2.1"
                commit: "ghi789"
                date: "2024-03-13T09:15:00Z"
        </list_git_tags_result>

        what's the next step?
    }
]
```

The model may infer that you're asking it `what's the next step` by the tool schemas you supply, but it never hurts to roll it into your prompt template.

### code example

We can build this with something like:

```python

class Thread:
  events: List[Event]

class Event:
  # could just use string, or could be explicit - up to you
  type: Literal["list_git_tags", "deploy_backend", "deploy_frontend", "request_more_information", "done_for_now", "list_git_tags_result", "deploy_backend_result", "deploy_frontend_result", "request_more_information_result", "done_for_now_result", "error"]
  data: ListGitTags | DeployBackend | DeployFrontend | RequestMoreInformation |
        ListGitTagsResult | DeployBackendResult | DeployFrontendResult | RequestMoreInformationResult | string

def event_to_prompt(event: Event) -> str:
    data = event.data if isinstance(event.data, str) \
           else stringifyToYaml(event.data)

    return f"<{event.type}>\n{data}\n</{event.type}>"


def thread_to_prompt(thread: Thread) -> str:
  return '\n\n'.join(event_to_prompt(event) for event in thread.events)
```

#### Example Context Windows

Here's how context windows might look with this approach:

**Initial Slack Request:**
```xml
<slack_message>
    From: @alex
    Channel: #deployments
    Text: Can you deploy the latest backend to production?
</slack_message>
```

**After Listing Git Tags:**
```xml
<slack_message>
    From: @alex
    Channel: #deployments
    Text: Can you deploy the latest backend to production?
    Thread: []
</slack_message>

<list_git_tags>
    intent: "list_git_tags"
</list_git_tags>

<list_git_tags_result>
    tags:
      - name: "v1.2.3"
        commit: "abc123"
        date: "2024-03-15T10:00:00Z"
      - name: "v1.2.2"
        commit: "def456"
        date: "2024-03-14T15:30:00Z"
      - name: "v1.2.1"
        commit: "ghi789"
        date: "2024-03-13T09:15:00Z"
</list_git_tags_result>
```

**After Error and Recovery:**
```xml
<slack_message>
    From: @alex
    Channel: #deployments
    Text: Can you deploy the latest backend to production?
    Thread: []
</slack_message>

<deploy_backend>
    intent: "deploy_backend"
    tag: "v1.2.3"
    environment: "production"
</deploy_backend>

<error>
    error running deploy_backend: Failed to connect to deployment service
</error>

<request_more_information>
    intent: "request_more_information_from_human"
    question: "I had trouble connecting to the deployment service, can you provide more details and/or check on the status of the service?"
</request_more_information>

<human_response>
    data:
      response: "I'm not sure what's going on, can you check on the status of the latest workflow?"
</human_response>
```

From here your next step might be:

```python
nextStep = await determine_next_step(thread_to_prompt(thread))
```

```python
{
  "intent": "get_workflow_status",
  "workflow_name": "tag_push_prod.yaml",
}
```

The XML-style format is just one example - the point is you can build your own format that makes sense for your application. You'll get better quality if you have the flexibility to experiment with different context structures and what you store vs. what you pass to the LLM.

Key benefits of owning your context window:

1. **Information Density**: Structure information in ways that maximize the LLM's understanding
2. **Error Handling**: Include error information in a format that helps the LLM recover. Consider hiding errors and failed calls from context window once they are resolved.
3. **Safety**: Control what information gets passed to the LLM, filtering out sensitive data
4. **Flexibility**: Adapt the format as you learn what works best for your use case
5. **Token Efficiency**: Optimize context format for token efficiency and LLM understanding

Context includes: prompts, instructions, RAG documents, history, tool calls, memory


Remember: The context window is your primary interface with the LLM. Taking control of how you structure and present information can dramatically improve your agent's performance.

Example - information density - same message, fewer tokens:

![Loom Screenshot 2025-04-22 at 09 00 56](https://github.com/user-attachments/assets/5cf041c6-72da-4943-be8a-99c73162b12a)


### Don't take it from me

About 2 months after 12-factor agents was published, context engineering started to become a pretty popular term.

<a href="https://x.com/karpathy/status/1937902205765607626"><img width="378" alt="Screenshot 2025-06-25 at 4 11 45 PM" src="https://github.com/user-attachments/assets/97e6e667-c35f-4855-8233-af40f05d6bce" /></a> <a href="https://x.com/tobi/status/1935533422589399127"><img width="378" alt="Screenshot 2025-06-25 at 4 12 59 PM" src="https://github.com/user-attachments/assets/7e6f5738-0d38-4910-82d1-7f5785b82b99" /></a>

There's also a quite good [Context Engineering Cheat Sheet](https://x.com/lenadroid/status/1943685060785524824) from [@lenadroid](https://x.com/lenadroid) from July 2025.

<a href="https://x.com/lenadroid/status/1943685060785524824"><img width="256" alt="image" src="https://github.com/user-attachments/assets/cac88aa3-8faf-440b-9736-cab95a9de477" /></a>



Recurring theme here: I don't know what's the best approach, but I know you want the flexibility to be able to try EVERYTHING.


[← Own Your Prompts](https://github.com/humanlayer/12-factor-agents/blob/main/content/factor-02-own-your-prompts.md) | [Tools Are Structured Outputs →](https://github.com/humanlayer/12-factor-agents/blob/main/content/factor-04-tools-are-structured-outputs.md)
