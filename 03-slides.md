footer: Software project – Lecture 3
slidenumbers: true


# Software Project
### Lecture 3

### Wouter Swierstra

--------------------------------------------------------------------------------

# Last time

* Establishing a product backlog

* Planning iterations

--------------------------------------------------------------------------------

# Today

* Software architecture

* Risks

--------------------------------------------------------------------------------

# Do you have a product backlog

# How are you managing it?

# What risks have you identified?

# What are the key stories for your first iteration?

--------------------------------------------------------------------------------

![right fit](img/02-software-architecture.jpg)

###Just Enough Software Architecture
#### A Risk-Driven Approach

--------------------------------------------------------------------------------

![fit](img/question.jpg)

# What is software architecture?

--------------------------------------------------------------------------------

*The highest-level breakdown of a system into its parts; the decisions that are hard to change; there are multiple architectures in a system; what is architecturally significant can change over a system's lifetime; and, in the end, architecture boils down to whatever the important stuff is.*

Martin Fowler's definition of Software Architecture

--------------------------------------------------------------------------------

*The fundamental organization of a system embodied in its components, their relationships to each other and to  the environment and the principles guiding its design and evolution*

Software Architecture (IEEE 1471)

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

Support techs can search the database through a web interface.

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

# Why should you care?

1. Software architecture is the skeleton of a system

1. Architecture influences quality attributes

1. Architecture is (mostly) orthogonal to functionality.

1. Architecture constrains systems.

^ Fixes overall structure. No best skeleton. Choose the right one for your project.

^ Rackspace -- same functionality, different quality attributes.

^ Your choice of architecture influences what the system can and cannot do.

--------------------------------------------------------------------------------

# A hard truth

You are not a software architect.

After this course, you will still not be software architect.

After the course on Software Architecture, you will still not be a software architect.

Come back in twenty years.

--------------------------------------------------------------------------------

# The good news

Your project is 'small enough' to do without a thoroughly thought out, fully-documented architecture.

But you need to **identify risks**...

... and take architectural decisions to minimize them.

 --------------------------------------------------------------------------------

# Risks

**Risk** is determined by perceived probability and perceived impact.

It is impossible to accurately estimate either factor.

Instead use this to decide the risks on which to focus.

--------------------------------------------------------------------------------

# Risk assessment for software projects

* You have little experience working in a team;

* You are exposed to unfamiliar technology;

* You have to work in an unfamiliar domain;

* Besides the project, you all have other courses, jobs, etc.

You *cannot* change this, but you *can* act accordingly.

--------------------------------------------------------------------------------

# Top ten risk factors

* Personnel shortfall
* Unrealistic schedule/budget 
* Wrong functionality 
* Wrong user interface 
* Goldplating - adding the wrong features

--------------------------------------------------------------------------------

# Top ten risk factors

* Requirements volatility
* Bad external components - bad software 
* Bad external tasks - bad subcontractors
* Real-time shortfalls - bad performance 
* Capability shortfalls - untried technology

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

![fit](img/question.jpg)

# What are the biggest risks that you have already identified?

--------------------------------------------------------------------------------

# Backlog prioritization exercise

You have your MoSCoW-ed user stories. Print out the Must-haves.

Every team member gets 8 green and 4 red poker chips.

Everyone assigns *green* poker chips to important stories and *red* chips to risky stories.

Record this risk-value assessment in your product backlog.

--------------------------------------------------------------------------------

# Where to start?

Start with high-value stories.

But should you focus on high-risk or low-risk stories?

--------------------------------------------------------------------------------

# Where to start?

Start with high-value stories.

But should you focus on high-risk or low-risk stories?

**High-risk stories have priority.**

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

# Quality attributes

There are huge catalogs of *software quality attributes*, describing the non-functional properties of software systems.

These are typically not documented in user stories.

But your system does have non-functional requirements, with their associated *risk*.

**Question:** What are the key non-functional requirements that you can identify? Which ones carry the highest risk?

--------------------------------------------------------------------------------

# Planning & addressing risk 

Even if you work using Agile, you still need to plan what to do each
iteration.

How should you do this?

* Estimate the value of features

* Estimate the cost of implementing features

* Estimate what you will learn from implementing certain features

These factors help determine what stories to address.

--------------------------------------------------------------------------------

# Risk scenario

One software project had to develop software to help plan where to build a wind turbine park on see.

They were responsible for the visualization; the actual calculation would be done by a third party.

It was not ready yet...

What can you do to minimize risk?

^ One solution: build a mock prototype that doesn't do any interesting calculation, but does fix the interface

--------------------------------------------------------------------------------

# Strategies for dealing with risk

* Avoidance – take precautions: buy more memory, hire consults,

* Minimization – share code ownership to avoid stagnation when one person is ill; creating prototypes to demo to the customer.

* Contingency plans – we accept this risk, but provide an alternative: how will we reduce the scope of the project, if we realise we cannot finish on time.

--------------------------------------------------------------------------------

# Product backlog: beyond user stories

Create stories for dealing with the risks you identify.

* Build a prototype that does X.

* Find the best technology to do Y.

* ...

These stories go in the product backlog and are taken into account during the planning of in every iteration.



1. Look at the [lists of quality attributes](http://en.wikipedia.org/wiki/List_of_system_quality_attributes): which non-functional requirements are important to your project? How big is the associated risk? Write stories to handle risks.

1. What non-engineering risks can you identify? How will you handle them? Fill your product backlog accordingly.
