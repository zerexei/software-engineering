# System Design Interview Prep

## Topic: System Design Fundamentals

### Core Concepts

- Functional vs. non-functional requirements
- Scalability
- Availability
- Reliability
- Latency vs. Throughput

### Key Patterns

- Requirement gathering
- Capacity estimation
- Bottleneck identification
- Trade-off analysis

### Important Notes

- Clarify requirements before designing.
- Discuss trade-offs instead of chasing the "perfect" solution.

### Problems

- [ ] Design URL Shortener
- [ ] Design Pastebin
- [ ] Design TinyURL
- [ ] Design Rate Limiter

## Topic: Networking

### Core Concepts

- HTTP / HTTPS
- REST APIs
- WebSockets
- TCP vs. UDP
- DNS

### Key Patterns

- Request-response
- Persistent connections
- Client-server communication

### Important Notes

- Understand request lifecycle.
- Know when to use WebSockets.

### Problems

- [ ] Design Chat Application
- [ ] Design Notification Service

## Topic: Load Balancing & Scaling

### Core Concepts

- Horizontal scaling
- Vertical scaling
- Stateless services
- Load balancers

### Key Patterns

- Round Robin
- Least Connections
- Health checks

### Important Notes

- Favor horizontal scaling.
- Keep application servers stateless.

### Problems

- [ ] Design API Gateway
- [ ] Design Ride Sharing Backend

## Topic: Caching

### Core Concepts

- Cache Aside
- Write Through
- Write Back
- TTL
- Cache Eviction

### Key Patterns

- Read-heavy optimization
- Distributed cache
- Multi-level cache

### Important Notes

- Cache invalidation is difficult.
- Never assume cache consistency.

### Problems

- [ ] Design News Feed
- [ ] Design Product Catalog

## Topic: Databases

### Core Concepts

- SQL
- NoSQL
- Indexes
- Transactions
- ACID vs BASE

### Key Patterns

- Database sharding
- Replication
- Partitioning

### Important Notes

- Choose SQL vs NoSQL based on access patterns.
- Indexes improve reads but slow writes.

### Problems

- [ ] Design Instagram
- [ ] Design YouTube Metadata

## Topic: Distributed Systems

### Core Concepts

- Replication
- Consistency
- Availability
- Partition tolerance
- Consensus

### Key Patterns

- Leader-Follower
- Leaderless
- Quorum

### Important Notes

- Understand CAP theorem.
- Eventual consistency is acceptable in many systems.

### Problems

- [ ] Design Distributed Key-Value Store
- [ ] Design Google Docs

## Topic: Message Queues & Streaming

### Core Concepts

- Asynchronous processing
- Message queues
- Event-driven architecture
- Stream processing

### Key Patterns

- Pub/Sub
- Producer-Consumer
- Event sourcing

### Important Notes

- Queues smooth traffic spikes.
- Decouple services whenever possible.

### Problems

- [ ] Design Notification System
- [ ] Design Event Bus

## Topic: Storage

### Core Concepts

- Object storage
- Block storage
- File storage
- CDN

### Key Patterns

- Static content delivery
- Blob storage
- Media storage

### Important Notes

- Store large files outside databases.
- Use CDNs to reduce latency.

### Problems

- [ ] Design Dropbox
- [ ] Design Google Photos

## Topic: Reliability

### Core Concepts

- Redundancy
- Failover
- Retries
- Idempotency

### Key Patterns

- Circuit Breaker
- Retry with Backoff
- Dead Letter Queue

### Important Notes

- Assume failures happen.
- Design for graceful degradation.

### Problems

- [ ] Design Payment System
- [ ] Design Order Processing System

## Topic: Design Patterns

### Core Concepts

- Microservices
- Monolith
- API Gateway
- Service Discovery

### Key Patterns

- CQRS
- Saga
- Fan-out/Fan-in

### Important Notes

- There is no universally best architecture.
- Explain why a pattern fits the requirements.

### Problems

- [ ] Design Uber
- [ ] Design Netflix
- [ ] Design Google Drive

## System Design Interview Template

```
1. Clarify Requirements
2. High-Level Design
3. Data Model
4. Scale the System
5. Handle Bottlenecks
6. Discuss Trade-offs
```
