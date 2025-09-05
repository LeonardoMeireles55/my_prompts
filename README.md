# My Prompts Collection

A collection of reusable, well-crafted prompts for various programming tasks and contexts. This repository organizes prompts by category to make them easily accessible for different development scenarios.

## About

This repository contains a curated collection of prompts designed to help developers work more effectively with AI assistants and LLMs. The prompts are organized by categories to make them easy to find and use for specific tasks.

The collection reflects the principles of "context engineering" - building dynamic systems to provide the right information and tools in the right format such that the LLM can plausibly accomplish the task.

This work is inspired by and builds upon concepts from:

- [Own Your Prompts](https://github.com/humanlayer/12-factor-agents/blob/main/content/factor-02-own-your-prompts.md)
- [Tools Are Structured Outputs](https://github.com/humanlayer/12-factor-agents/blob/main/content/factor-04-tools-are-structured-outputs.md)

## Repository Structure

```
my_prompts/
├── reusable_prompts/
│   ├── context/
│   ├── general/
│   ├── nextjs/
│   ├── react/
│   ├── security/
│   ├── spring_boot/
│   ├── sql/
│   ├── tailwind/
│   └── typescript/
├── scripts/
│   ├── install_prompts.sh     # Install prompts on Linux/macOS
│   ├── install_prompts.ps1    # Install prompts on Windows
│   ├── add_header_to_prompts.sh
│   └── rename_md_files.sh
├── README.md                  # This file
```

## Categories

### General Prompts
Common prompts applicable to various programming tasks:
- Refactoring and code improvement
- Security analysis
- Naming conventions
- Internationalization
- Grammar review
- Project summaries
- TODO lists
- Performance optimization

### Framework-Specific Prompts
Category-specific prompts for popular frameworks and technologies:
- **Next.js**: API routes, authentication, components, data fetching
- **React**: Component refactoring, hooks optimization, large component splitting
- **Spring Boot**: Configuration, controllers, entities, repositories, services, exception handling
- **SQL**: Query optimization, parameterized queries
- **Tailwind**: CSS class organization, pattern extraction
- **TypeScript**: Strict typing, JSDoc comments, interface usage
- **Security**: Authentication, input validation
- **Context**: Agent context building
 - **MCP**: Prompts leveraging Model Context Protocol servers (Playwright automation, Context7 research)

## Installation

Install the prompts to your VS Code user directory with our cross-platform installation scripts:

### Linux/macOS
```bash
./scripts/install_prompts.sh
```

### Windows
```powershell
.\scripts\install_prompts.ps1
```

After installation, the prompts will be available in VS Code at:
- **macOS/Linux**: `~/Library/Application Support/Code/User/prompts` or `~/.config/Code/User/prompts`
- **Windows**: `%APPDATA%\Code\User\prompts`

## Usage

The prompts are designed to be used with AI coding assistants or LLMs. They can be copied directly into your AI assistant or used as templates for creating more specific prompts.

## Contributing

Contributions are welcome! Please follow these guidelines:
1. Add new prompts to the appropriate category directory
2. Follow the naming convention: `{task}.prompt.md`
3. Include a clear description of what the prompt does
4. Ensure prompts are well-formatted and easy to understand

## Acknowledgments

Inspired by the principles of context engineering and the need for reusable, high-quality prompts in AI-assisted development.
