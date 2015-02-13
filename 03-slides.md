footer: Software project – Lecture 3
slidenumbers: true


# Software Project
### Lecture 3

### Wouter Swierstra

--------------------------------------------------------------------------------

# Last time

<br><br><br>

* Establishing a product backlog

* Planning iterations

--------------------------------------------------------------------------------

# Today

<br><br><br>

* Risks, constraints, and quality attributes

* Software architecture

--------------------------------------------------------------------------------

# Your current situation...

* You have a prioritized product backlog.

* You've had a planning session to fill your first sprint backlog.

* You're aiming to develop a first prototype in the first iterations.

What can possibly go wrong?

--------------------------------------------------------------------------------

# Risk

## What is your marshmallow?

![](img/01-marshmallow.jpeg)

--------------------------------------------------------------------------------

# Risks

**Risk** is determined by perceived probability and perceived impact.

It is impossible to accurately estimate either factor.

Instead use this to decide the risks on which to focus.

* It is very likely that you will get your estimates wrong for the first sprint. This isn't so bad.

* If the UU server's disk crashes, you could lose all your work. This is highly unlikely.

--------------------------------------------------------------------------------

# Risk assessment for software projects

* You have little experience working in a team;

* You are exposed to unfamiliar technology;

* You have to work in an unfamiliar domain;

* Besides the project, you all have other courses, jobs, etc.

You *cannot* change this, but you *can* act accordingly.

* Software architecture

--------------------------------------------------------------------------------

# Risk

![](img/01-spekjes.jpg)

--------------------------------------------------------------------------------

# About risk

As computer scientists, we are trained to focus on *technical risk*

* How to implement feature X? 

* How to interface with system Y? 

* How to call library Z?

Sometimes the important risk is *not* in the technical part.

^ Example: restaurant-dating website

--------------------------------------------------------------------------------

# Non-engineering risks

* "The lead developer's hobbies are base-jumping and cage fighting."

* "Senior VP hates our manager."

* "The customer doesn't know what he wants."

* "Bob and Alice refuse to work together."

--------------------------------------------------------------------------------

# But that won't happen to us.

--------------------------------------------------------------------------------

# Risks: example

In a recent project there was an outspoken student who strongly pushed technology X.

When I asked them about their choice for X, they list the 'standard' advantages of using X, but hadn't thought about whether it was the right tool for this project.

^ Let's say X is Haskell.

--------------------------------------------------------------------------------

# Risks: example

In a recent project there was an outspoken student who strongly pushed technology X.

When I asked them about their choice for X, they list the 'standard' advantages of using X, but hadn't thought about whether it was the right tool for this project.

This student abandoned the software project halfway through. The remaining students threw away their code and started from scratch.

--------------------------------------------------------------------------------

# The good news

<br><br><br>

You need to **identify risks**...

... and take decisions to minimize them.

... many of these decisions are *architectural*.

 --------------------------------------------------------------------------------

![right fit](img/02-software-architecture.jpg)

###Just Enough Software Architecture
#### A Risk-Driven Approach

--------------------------------------------------------------------------------

# What is software architecture?

--------------------------------------------------------------------------------

<br><br><br>

*The highest-level breakdown of a system into its parts; the decisions that are hard to change; there are multiple architectures in a system; what is architecturally significant can change over a system's lifetime; and, in the end, architecture boils down to whatever the important stuff is.*

Martin Fowler's definition of Software Architecture

--------------------------------------------------------------------------------

<br><br><br>

*The fundamental organization of a system embodied in its components, their relationships to each other and to  the environment and the principles guiding its design and evolution*

Software Architecture (IEEE 1471)

--------------------------------------------------------------------------------

<br><br><br>

*The software architecture of a computing system is the set of structures needed to reason about the system, which comprise software elements, relations among them, and properties of both*

Software Engineering Institute (Clements et al., 2010)

--------------------------------------------------------------------------------

# Example architecture: Rackspace

Rackspace is a company that manages hosted email servers.

Engineers must search log files to diagnose problems.

Rackspace developed three different versions of this tool.

--------------------------------------------------------------------------------

# Rackspace - I

A shell script to ssh to each machine, and grep the mail log.

Engineers can use different greps to perform different queries.

As the number of searches increased, overhead became noticeable.

It requires an engineer, rather than tech support to query the logs.

--------------------------------------------------------------------------------

# Rackspace - II

Move logs off email servers and make it searchable by tech support through a web interface.

All logs collected on a central machine, and loaded into a database.

The centralized server is constantly under heavy load, as it was constantly adding new entries.

Slowdown and random failures, resulting in the loss of data.


--------------------------------------------------------------------------------

# Rackspace - III

Log data saved into a distributed file system, spread over many machines, indexed in parallel.

Three copies of everything, spread over different machines.

Capable of handling 140 gigabytes of data generated per day, six terabytes of data total.

Queries over webinterface were fast and reliable.

Indexing is not cheap – logs were 15 minutes stale.

--------------------------------------------------------------------------------

![fit](img/question.jpg)

# What do these architectures share? What makes them different?

^ Quality attributes

^ Scalability

^ Modifiability

^ Latency

^ Usability

--------------------------------------------------------------------------------

# Why software architecture?

### Software architecture is the skeleton of a system

Your architecture defines the overall structure of your system.

Your requirements and constraints determine suitable architecture.

Rackspace:

* Powerful search tools, immediate access to logs, poor scalability.

* Scales well, stale logs, limited search facilities.

    --------------------------------------------------------------------------------

# Why software architecture?

### Architecture influences quality attributes

Consider the Rackspace example again...

Pretty much the same functionality implemented in three different ways.

* Ease of use? (grep vs webinterface)

* Scalability? (centralized vs distributed log files)

* Delay? (stale, decentralized logs vs querying one machine)

--------------------------------------------------------------------------------

# Why software architecture?

###  Architecture is (mostly) orthogonal to functionality.

There is no single 'best' architecture.

There are many ways to deliver the same functionality.

Depending on your needs, you need to choose the best architecture for your project.

--------------------------------------------------------------------------------

# Why software architecture?

### Architecture constrains systems

You have the freedom to choose which constraints are important.

* Exchanging data freely? Or only over secure connections with trusted parties?

* Scalable? Or easy to set up and maintain?

Your choice of architecture influences what a system can and cannot do easily.

--------------------------------------------------------------------------------

# Constraints

Where (non-functional) requirements and user stories specify your goal, *constraints* limit the solution space.

* Technical: existing systems, languages used, platforms, etc.

* Organizational: client availability, existing business processes, ...

* Financial

* Time

^ Constraints are the invariants in the development process

--------------------------------------------------------------------------------

# A hard truth

You are not a software architect.

After this course, you will still not be software architect.

After the course on Software Architecture, you will still not be a software architect.

Come back in twenty years.

--------------------------------------------------------------------------------

# 'Real' software architecture

Many software architecture documents are give an extensive overview of many different views of a system:

* Physical machines running software components;

* Decomposition into components and classes;

* Dynamic behaviour of processes;

* User's perspective.

These documents are lengthy and complicated (and outdated).

^ Software architecture is anti-agile

--------------------------------------------------------------------------------

# The good news

Your project is 'small enough' to do without a thoroughly thought out, fully-documented architecture.

Architecture documents are too big a hammer for our projects.

What I would encourage you to do is:

1. Identify risks, constraints, and quality attributes.

1. Make architectural decisions accordingly.

--------------------------------------------------------------------------------

# Risk scenario

![fit](img/question.jpg)

One software project had to develop software to help plan where to build wind turbine parks.

They were responsible for the visualization; the actual calculation and data management would be done by a third party.

It was not ready yet... Integration was going to be a huge risk.

**What can you do to minimize risk?**

^ One solution: build a mock prototype that doesn't do any interesting calculation, but does fix the interface

--------------------------------------------------------------------------------

# Strategies for dealing with risk

* Avoidance – take precautions: favoring stable technology, working with mocks and stubs, etc.

* Minimization – share code ownership to avoid stagnation when one person is ill; creating prototypes to demo to the customer.

* Contingency plans – we accept this risk, but provide an alternative: how will we reduce the scope of the project, if we realise we cannot finish on time.

--------------------------------------------------------------------------------

# Risk identification exercise

You have your MoSCoW-ed user stories. 

Every team member gets 1,2,3 planning poker cards.

Everyone assigns these cards to the top stories in the product backlog.

Record this risk-value assessment.

--------------------------------------------------------------------------------

# Risk identification exercise

Discuss the results of identifying the high-risk stories:

* How will you cope with this risk?

* What new stories will you introduce?

* How does this insight effect the priorities in your backlog?

--------------------------------------------------------------------------------

# Where to start?

<br><br>

Start with high-value stories.

But should you focus on high-risk or low-risk stories?

--------------------------------------------------------------------------------

# Where to start?

<br><br>

Start with high-value stories.

But should you focus on high-risk or low-risk stories?

**High-risk stories have priority.**

--------------------------------------------------------------------------------

# Quality attributes

There are huge catalogs of *software quality attributes*, describing the non-functional properties of software systems.

These are typically not documented in user stories.

But your system does have non-functional requirements.

These non-functionals are need to be baked into your architecture from the start – adding them as an afterthought can be very difficult.

--------------------------------------------------------------------------------

# Example: security

Suppose your system must handle data that you must keep private.

There are several *architectural tactics* to help achieve this:

* Authentication - negative impact on usability

* Encryption - negative impact on performance (and possibly usability)

* Limit access through firewalls – negative impact on availability

--------------------------------------------------------------------------------

# Example: availability

Similarly, if your system *must* be available at all times:

* Fault detection:  Ping, heartbeat, etc.

* Fault recovery: voting/polling, active redundancy (hot restart), passive redundancy (warm restart), spare servers, etc.

* Fault prevention: checksums, error detection, etc.

--------------------------------------------------------------------------------

# Quality attributes

There is always the temptation to read through a list of quality attributes and select an arbitrary number of properties you consider to be important.

Don't treat quality attributes like your Christmas wishlist.

If someone is holding a gun to your head, which is more important:

* security or usability? (How much authentication will we do?)

* flexibility or scalability? (Distributed Rackspace servers or not?)

--------------------------------------------------------------------------------

# Constraints



--------------------------------------------------------------------------------

# Meta-retrospective

You now know all you need to know to self-organize your team and plan your software project.

The Scrum/Agile approach is probably the most popular software development methodology at the moment.

Does everyone agree that they work?

--------------------------------------------------------------------------------

# Bertrand Meyer

## Agile! The Good, the Hype and the Ugly

### E-book available in the library

![left fit](img/03-meyer-agile.pdf)

--------------------------------------------------------------------------------

# Meyer: the bad and the ugly

* Rejection of any upfront tasks

* User stories of only requirements – resulting software may be hard to adapt and you might miss other important features.

* Feature based development ignores foundation work

--------------------------------------------------------------------------------

# Meyer: the hyped

* There is no credible evidence that pair programming works

* Few teams are experienced enough to be self-organizing

* Planning poker may drown the voice of the experts

* Cross-functional teams ignore individuals

--------------------------------------------------------------------------------

# Meyer: the good & brilliant

* Short daily meetings

* Refactoring is important (but cannot replace design)

* Continuous integration and regression testing

* Short-time boxed iterations

* Refining working software 

--------------------------------------------------------------------------------

# Erik Meijer

#[Sofware is eating the world](https://vimeo.com/110554082)

--------------------------------------------------------------------------------

# Homework - I

* Identify the high-risk high-value stories.

* What non-engineering risks can you identify? How will you handle them? Fill your product backlog accordingly.

* What constraints can you identify?

--------------------------------------------------------------------------------

# Homework - II

*  Look at the [lists of quality attributes](http://en.wikipedia.org/wiki/List_of_system_quality_attributes):   
    * Which are crucial for your project?
    * How big is the associated risk?
    * What decisions need to be made to handle this risk?
    * Which architectural patterns or tactics can help?
    * Which other quality attributes may be negatively affected by these decisions? Is that a problem?



--------------------------------------------------------------------------------

![fit](img/question.jpg)

# Why can your project fail?

# What are you going to do about it?

