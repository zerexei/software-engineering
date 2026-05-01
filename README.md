# Engineering Knowledge System

This repository is my long-term **backend engineering second brain**.

It is not a course notebook, not interview prep, and not project storage.

It is a structured system for:

- thinking in backend systems
- retaining engineering patterns
- documenting decisions and tradeoffs
- tracking real-world failure modes
- building execution playbooks

---

# 🧠 Core Philosophy

Engineering knowledge is not organized by topics.

It is organized by how systems are actually built and broken:

- Patterns (reusable solutions)
- Systems (full architectures)
- Decisions (why choices are made)
- Failures (how things break)
- Playbooks (how to execute under pressure)

---

# 🧱 Repository Structure

```
engineering/
│
├── 00_core-principles/ → fundamental engineering laws
├── 01_patterns/ → reusable backend patterns
├── 02_systems/ → full system designs
├── 03_decisions/ → engineering tradeoffs & choices
├── 04_failure-modes/ → real-world system breakdowns
├── 05_playbooks/ → execution frameworks & checklists
```

---

# 00_core-principles

## Purpose

Fundamental laws that apply across all systems.

## Examples

- Consistency models (strong vs eventual)
- CAP theorem
- Latency vs throughput tradeoffs
- Backpressure
- Idempotency

## Rule

These are not solutions.  
They are **constraints under which all systems operate.**

---

# 01_patterns

## Purpose

Reusable solutions to recurring backend problems.

## Examples

- Caching
- Queue-based processing
- Rate limiting
- Sharding
- Fan-out / fan-in
- CQRS

## Template

Each pattern should include:

- Problem
- Solution
- Variants
- When to use
- When NOT to use

---

# 02_systems

## Purpose

Full system designs (end-to-end architectures).

## Examples

- URL Shortener
- Chat system
- Feed system
- Rate limiter
- Notification system

## Template

Each system should include:

- Requirements (functional + non-functional)
- Architecture
- Data model
- API design
- Scaling strategy
- Bottlenecks
- Tradeoffs

---

# 03_decisions

## Purpose

Record of engineering judgment calls.

## Examples

- Why Redis over in-memory cache?
- SQL vs NoSQL decision
- Queue vs direct processing
- Sync vs async architecture

## Template

Each entry must include:

- Context
- Options considered
- Decision
- Tradeoffs
- Outcome

---

# 04_failure-modes

## Purpose

Understand how systems break in reality.

## Examples

- Cache stampede
- Thundering herd problem
- DB connection exhaustion
- Race conditions
- Partial failures in distributed systems
- Retry storms

## Template

Each failure mode should include:

- What it is
- Why it happens
- Impact
- Detection signals
- Mitigation strategies

---

# 05_playbooks

## Purpose

Execution frameworks for engineering work.

## Examples

- Designing a backend system in 45 minutes
- Debugging production issues
- API design checklist
- Scaling checklist
- System review checklist

## Rule

These should feel like **mental scripts used in real work situations**.

---

# 🔁 How I Use This System

This repo is updated continuously as I:

### DSA work

- extract patterns → store in /01_patterns

### System design work

- design systems → store in /02_systems

### Engineering decisions

- log tradeoffs → store in /03_decisions

### Real failures / bugs

- document breakdowns → store in /04_failure-modes

### Repeated workflows

- convert into playbooks → /05_playbooks

---

# ⚡ Key Rule

If something is learned but not stored here:

> it is considered temporary knowledge

---

# 🎯 Long-Term Goal

This system should evolve into:

- a personal backend engineering reference system
- a reusable thinking framework
- a decision history of engineering growth
- a catalog of system behaviors (normal + failure states)

---

# 🧠 End State

I should be able to:

- design systems faster
- recognize patterns instantly
- avoid known failure modes
- justify engineering decisions clearly
- operate like a production backend engineer under constraints
