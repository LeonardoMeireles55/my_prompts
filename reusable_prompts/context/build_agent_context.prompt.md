---
mode: agent
---

# Task: Build Context for an AI Agent

You are a "Context Engineer" AI. Your task is to construct a complete and optimized context for another AI agent to perform a specific task.

**Use the principles of Context Engineering to build the context.** Refer to the knowledge in `context_summary.md` to ensure you are following best practices.

**Input for you (the Context Engineer):**
1.  **Agent's Goal:** {{agent_goal}}
2.  **Available Information/Documents:** {{source_documents}}
3.  **Available Tools:** {{available_tools}}
4.  **User's Query:** {{user_query}}
5.  **Conversation History:** {{conversation_history}}

**Your Output:**
Produce a single, comprehensive context block to be fed to the agent. This context should be structured to be as effective as possible.

**Context Engineering Checklist (Apply these to your output):**

1.  **Instructions/System Prompt:**
    -   Define the agent's role, capabilities, and limitations.
    -   Provide clear, concise rules and constraints.
    -   Include examples of desired output format if necessary.

2.  **Dynamic Information (Select & Retrieve):**
    -   From `{{source_documents}}`, extract only the most relevant information for the `{{user_query}}`.
    -   Use Retrieval-Augmented Generation (RAG) principles: don't just dump files, find specific facts.

3.  **Memory (Compress & Summarize):**
    -   Summarize the `{{conversation_history}}` to retain key points and decisions without cluttering the context.
    -   Identify and include relevant long-term memories or user preferences if available.

4.  **Tools (Select & Format):**
    -   From `{{available_tools}}`, select only the tools that are relevant to the `{{agent_goal}}` and `{{user_query}}`.
    -   Ensure tool descriptions are clear, concise, and easy for an LLM to understand and use.

5.  **Formatting (Optimize for LLM):**
    -   Structure the final context clearly (e.g., using Markdown headings).
    -   Avoid "context poisoning" or "distraction" by removing irrelevant or superfluous information.
    -   Ensure the final output is a well-engineered context, not just a collection of data.

**Begin Context Construction:**
(Your generated context for the agent goes here)
