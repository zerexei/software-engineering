## PURPOSE

You are updating existing engineering documentation in the repository based on the current codebase

DO NOT regenerate from scratch.
DO NOT invent architecture.

Your goal is to:

- Extend existing docs
- Improve accuracy
- Fill missing gaps
- Keep existing structure intact
- Align documentation with current codebase state
- Help software engineering recruiters quickly understand the project
- Help hiring managers evaluate technical depth and system design
- Help engineers understand architecture, tradeoffs, and implementation details
- Help future contributors onboard efficiently

---

## SOURCE OF TRUTH

Codebase > existing docs > README/comments.

If something is unclear:

- infer only from code
- otherwise omit (do NOT guess)

---

## INPUTS YOU MUST CONSIDER

- Existing /docs folder (if present)
- Current source code implementation
- Existing README and comments
- Any previously written architecture or decisions

---

## CRITICAL RULES

- Do NOT rewrite files unless broken/empty
- DO NOT change existing structure unless it is clearly incorrect
- DO NOT invent new architecture not present in code
- Prefer patch-style improvements over full rewrites
- If uncertain → omit or mark as "not confirmed in code"

---

## OUTPUT STRUCTURE

```
docs/
├── architecture.md
├── decisions.md
└── diagrams/
    ├── system-design.mmd
    ├── database-schema.mmd
    └── sequence-flow.mmd
```

---

## architecture.md

Generate a comprehensive architecture document containing:

- Project overview
  - Purpose of the system
  - Core functionality
  - Primary users

- System architecture
  - Major components
  - Component responsibilities
  - Technology stack
  - Internal dependencies

- Request lifecycle
  - User interaction flow
  - API flow
  - Database interactions
  - Cache interactions
  - External service interactions

- Data flow
  - How information moves through the system
  - Critical processing paths
  - State transitions

- Deployment architecture
  - Hosting environment
  - Infrastructure dependencies
  - Runtime requirements

- Security considerations
  - Authentication
  - Authorization
  - Data protection
  - Validation strategies

- Scalability considerations
  - Current bottlenecks
  - Existing optimizations
  - Future improvements

Reference Mermaid diagrams where appropriate.

---

## decisions.md

Generate engineering decision records based on implementation choices discovered in the repository.

For each significant decision include:

```
## Decision

### Context

Describe the problem being solved.

### Options Considered

List realistic alternatives.

### Selected Approach

Describe the implemented solution.

### Rationale

Explain why the solution was chosen.

### Tradeoffs

Advantages:
- item

Disadvantages:
- item

### Future Considerations

When might this decision need reevaluation?

Potential topics:

- Framework selection
- Database selection
- Authentication strategy
- API architecture
- Caching strategy
- State management
- Storage approach
- Deployment platform
- Background processing
- Service architecture
```

Only document decisions that can be inferred from the repository.

---

## diagrams/system-design.mmd

Generate a Mermaid flowchart that represents:

- Users
- Client applications
- APIs
- Databases
- Caches
- Queues
- Storage systems
- External integrations

Requirements:

- Use Mermaid flowchart syntax
- Organize related components with subgraphs
- Show request direction
- Keep the diagram concise and professional
- Reflect the actual architecture

---

## diagrams/database-schema.mmd

Generate a Mermaid ER diagram.

Requirements:

- Include major entities
- Include key fields
- Include relationships
- Include cardinality
- Match the implemented schema
- Do not invent entities

Use Mermaid ER Diagram syntax.

---

## diagrams/sequence-flow.mmd

Generate a Mermaid sequence diagram for the most important workflow in the application.

Examples:

- Authentication
- Resource creation
- Messaging
- Payments
- File uploads
- AI processing

Requirements:

- Show actors
- Show request lifecycle
- Show service interactions
- Show database interactions
- Show cache interactions when applicable
- Reflect actual implementation

Use Mermaid sequenceDiagram syntax.

---

## GLOBAL CONSTRAINTS

- Prioritize accuracy over completeness.
- DO NOT invent architecture.
- DO NOT invent design decisions.
- DO NOT generate placeholder text.
- Avoid marketing language.
- Avoid tutorial-style explanations.
- Use professional engineering terminology.
- Keep documentation concise and high signal.
- Assume the audience is technical.
- Generate production-quality Markdown and Mermaid files.
- Focus on content useful during SWE interviews and portfolio reviews.
