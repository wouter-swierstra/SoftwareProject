footer: Software project – Lecture 1
slidenumbers: true


# Software Project
### Lecture 1

## Wouter Swierstra

--------------------------------------------------------------------------------

#So you think you can program...

--------------------------------------------------------------------------------

# You will learn:

- to work in team

- to build a serious application

- to interact with customers

- to apply software engineering techniques

--------------------------------------------------------------------------------

#Which is more important in a Computer Science degree: 

<br>

##Theory or Practice?

^ What we try to achieve at the UU

--------------------------------------------------------------------------------

# Best of both worlds

- you learn about the *theory* of software development in various
  courses you take;

- the software project gives you a valuable opportunity to put these ideas into practice.

These lectures try to bridge the gap by providing practical advice for your project.

--------------------------------------------------------------------------------

# Topics covered

* Software project management

* Software architecture

* Software development

--------------------------------------------------------------------------------

# Software project management

- How to organize a team of developers?

- How to plan development?

- How to identify risk?

- Present and document your choice of a particular software
  project management philosophy.

--------------------------------------------------------------------------------

# Architecture and engineering

- Requirements engineering

- Quality attributes

- Software architecture

- How they relate?

- Present and document your choice of software architecture

--------------------------------------------------------------------------------

# Software development

* Version control

* Build tools

* Deployment

* Testing

* Present and document your testing plan

--------------------------------------------------------------------------------

# Software development

You have already had to work on small software practical exercises.

**Question:** How did you organize and plan the development?

--------------------------------------------------------------------------------

# Software development

You have already had to work on small software practical exercises.

**Question:** How did you organize and plan the development?

How well do you think this scales to 5 developers? What about 10? Or 50?

--------------------------------------------------------------------------------

# The software development process

The *software development process* is the set of activities that
produce a piece of software:

- Requirements engineering;

- Writing specifications;

- Analysis and design;

- Software validation and testing;

- Maintainance and evolution.

- Process management activities: 
    * feasibility studies
    * planning
    * risk analysis

--------------------------------------------------------------------------------

# Software development methods

- A *software development method* is an organized way of
constructing software – an 'algorithm' for software construction.

- *Idea:* documenting an approach will make success repeatable,
projects (cost-)effective, and results predictable.

- Example: the Rational Unified Process.

--------------------------------------------------------------------------------

# Software development methods

A development method typically documents:

- What views of the system should be described? UML class
      diagrams? Sequence diagrams? Data-flow models?

- Best practice heuristics for specification, design, and construction

- Description of the activities involved in development and how these should be organized and planned.

--------------------------------------------------------------------------------

# Software development methods

- Most companies have their own methodology.

    - typically tailored to their needs and existing processes

    - but based on established techniques

- All these methods are usually based on some combination of *software development paradigms* or frameworks.

--------------------------------------------------------------------------------

# Domain vs methods

Different application domains call for different methods:

* a cloud-based Software-as-a-Service
    - instant updates
    - easy to develop incrementally
* a hardware design
    - impossible to push patches after production

--------------------------------------------------------------------------------

# Software development paradigm: Waterfall

1. Specification

1. Design

1. Implementation

1. Verification

1. Maintenance

Finish each step, before proceeding to the next

--------------------------------------------------------------------------------

# Paradigms: Iterative & incremental 

* Multiple iterations of specification-development

* Each iteration refines the system, adding new features

* For example, the Rational Unified Process or Agile

--------------------------------------------------------------------------------

# Structured versus Agile

Some frameworks and methods are highly structured (e.g., RUP):

* Lots of documentation;

* Clear processes and accountability;

* Requirements form the basis of the development contract.

Agile software development takes a different approach...

--------------------------------------------------------------------------------

# The Agile Manifesto (2001)

We are uncovering better ways of developing software by doing it and helping others do it. Through this work we have come to value:

* Individuals and interactions over processes and tools

* Working software over comprehensive documentation

* Customer collaboration over contract negotiation

* Responding to change over following a plan

--------------------------------------------------------------------------------

# What is Agile?

Agile software development refers to a collection of software development methods:

* Scrum

* Xtreme programming

* Kanban

* and many others

They are all inspired by the Agile Manifesto.

--------------------------------------------------------------------------------

# Agile principles - I

* Customer satisfaction by rapid delivery of useful software

* Welcome changing requirements, even late in development

* Working software is delivered frequently (weeks rather than months)

* Face-to-face conversation is the best form of communication

--------------------------------------------------------------------------------

# Agile principles - II

* Working software is the principal measure of progress

* Continuous attention to technical excellence and good design

* Simplicity—the art of maximizing the amount of work not done—is essential

* Self-organizing teams

* Regular adaptation to changing circumstances

--------------------------------------------------------------------------------

# Extreme programming - I

Take all the good characteristics of a smooth development process to the extreme:

* frequent releases with small deltas

* full-time engagement with the customer

* pair program all the time

* collective ownership of the code

--------------------------------------------------------------------------------

# Extreme programming - II

* continuous integegration - compile, test, and deploy the whole
  system all the time.

* test-driven development - write unit tests first, then code that makes these tests pass.

* do *not* anticipate future changes.

--------------------------------------------------------------------------------

# The Scrum Framework

- One popular approach organising an Agile development team.

- Developed by Jeff Sutherland in 1993.

- Given the time frame and type of project, Scrum might be a good option for you.

- More info at http://www.scrumalliance.org.

--------------------------------------------------------------------------------

# The Scrum process - I

* A product owner creates a wishlist, called the *product backlog*

* The development team takes a small number of items from the top of the backlog: sprint backlog.

* These items are completed in a single *iteration* (2 to 4 weeks)

* ScrumMaster is responsible for managing the process, not the people.

--------------------------------------------------------------------------------

# The Scrum process - II

* Every day meetings to assess progress

* At the end of the sprint, the stories should be completely implemented. The product should be shippable.

* Every iteration a sprint review: how to improve the next sprint.

* Repeat.

--------------------------------------------------------------------------------

![inline fill](img/agile.png)

--------------------------------------------------------------------------------

# The Scrum Master

The Scrum Master is responsible for making sure the process is smooth:

- remove outside distractions;
- chair review meetings or the daily standup;
- but he is not a project manager.

--------------------------------------------------------------------------------

# The Product Owner

The Product Owner is a single person representing all stakeholders:

- he helps prioritize the product backlog
- writes (or has the team write) user stories
- this could be your supervisor at the UU or external contact point

--------------------------------------------------------------------------------

# The Development Team

- That is YOU.
- No specific roles for testing, design, etc.
- You all share ownership of the code.
- You organize yourself – all outside influence goes through the Scrum Master and Product Owner.

--------------------------------------------------------------------------------

# Standup meetings - I

* Start each day with a stand-up meeting.

* The stand up meeting is at a fixed time and location, regardless of if people are missing.

* Everyone stands up – no sitting!

* The meeting is timeboxed: 30 minutes max.

--------------------------------------------------------------------------------

# Standup meetings - II

Everyone on the team says:

- What have I done yesterday?
- What problems am I facing?
- What am I going to do today?

Daily meetings help coordinate developer activity.

--------------------------------------------------------------------------------

# The task board

![inline](img/task_board.jpg)


--------------------------------------------------------------------------------

# The task board - I

* When planning the iteration, every developer is assigned stories.

* Each developer plans the implementation of this story:

    - Put content on bare HTML page;
    - Add styling with a CSS file;
    - Test across different browsers;
    - Upload to webserver.

--------------------------------------------------------------------------------

# The task board - II

* These steps include testing, deployment, etc.

* All these steps go on post-it notes.

* Each post-it has an estimated number of story points.

* All the post-it notes of all stories go on a single board, together
  with the original story description.

--------------------------------------------------------------------------------

# The task board

* All the stories and associated post-its are have their own row.

* The rows of the board are divided into several columns: todo, in
  progress, and done. (Other variations exist)

* Update the board during every standup meeting.

* At the end of the iteration, everything is done.

* The board is cleaned and a new iteration starts.

--------------------------------------------------------------------------------

# End of iteration

- Give a demo to the stakeholders at the end of the iteration.

- Clean the task board.

- Create new stories for any unfinished work.

--------------------------------------------------------------------------------

# Regular review

- End each iteration with a retrospective:

    * What went well?
    * What can we do better?

- Start planning the next iteration after the demo. Your demo should help your customers and Product Owner decide what they want to see next.

--------------------------------------------------------------------------------

# Agile/Scrum pitfalls

* Don't add stories during the sprint.

* Don't solve problems during the scrum.

* Lots of deadlines means lots of chances to write bad code to meet a deadline, introducing *technical debt*.

* You need a closely knit development team

* Prioritizing stories is hard.

--------------------------------------------------------------------------------

# Case study: SMOI

There is a module named SMOI, where participants play a Business Game.

Every week, students submit their strategy for the current quarter.

These are entered in a desktop tool, which computes the outcome of their actions. There are many different parameters that can be tweaked.

The current desktop tool should be replaced by a webapp, used by both students and teachers.

--------------------------------------------------------------------------------

# Further requirements

* It should be easy to tweak various parameters, manually update student input data.

* Both students and teachers should get feedback about how the students are doing.

* The system should be highly configurable and secure.

* Computing the quarterly results should be quick, not taking more than 15 seconds.

--------------------------------------------------------------------------------

# How would you plan the development for this project?

--------------------------------------------------------------------------------

# There is no right answer.

--------------------------------------------------------------------------------

# What is the Minimal Viable Product?

* A JavaScript frontend that allows students to submit one number.

* A server that collects submissions and stores them in a database.

* Teachers can view a list of submitted numbers.

--------------------------------------------------------------------------------

# From prototype to product

* Add security/logins.

* Add more domain specific computations to the server.

* Student submission consist of more than one number.

* Generate feedback for students and teachers.

* And lots more...

--------------------------------------------------------------------------------

# Why would this work?

First establish a complete architecture, eliminating *risk*.

Give an early demo to the customer of the 'complete' system.

Iteratively refine the implementation to add more features.

**Pitfall:** This only works if you keep your code clean.

--------------------------------------------------------------------------------

# Teaching software development methods

**Listening** to me talk about Agile software development is one thing.

**Applying** the Agile philosophy  is another.

In my experience, even smart people struggle to get this right.

Agile methods are still well-defined methods.

Being Agile is not an excuse for Cowboy Coding or lack of planning.

--------------------------------------------------------------------------------

# Beyond Scrum

There are a lot of other Agile methods:

* Agile Unified Process;

* Kanban

* Lean software development

* Scrum-ban

You may have experience working with methodology – use this!

--------------------------------------------------------------------------------

# More information

There is a lot of information about Agile & Scrum online:

You don't need to use Scrum: find a method that works for you and implement it well. 

**Planning & methodology may not be the biggest technical challenge in your project; but it has a huge impact on the final results**

--------------------------------------------------------------------------------

# My advice

Plan at least four meetings to reflect on process and planning **now**.

Identify what is going wrong.

Improve in every iteration.

It is hard to get right.

--------------------------------------------------------------------------------

## Why did I propose to write a useless prototype?

## It eliminates **risk**.

--------------------------------------------------------------------------------

# Risk management

Risk is determined by uncertainty and importance.

We ignore risks all the time:

- We will solve the problem on time;
- We will finish every story in each iteration;
- Requirements will be stable;
- There will be no unexpected bugs.

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

# Risk management strategy

1. *Identify risk* – to which risks are you exposed?

1. *Determine exposure* – what are the likelihood and consequences associated with these risks?

1. *Risk planning* – which strategies can you identify to mitigate risks?

1. *Monitor risks* – how will you assess the risks that arise during the project?

--------------------------------------------------------------------------------

# Risk scenario

One software project had to develop software to help plan where to build a wind turbine park on see.

They were responsible for the visualization; the actual calculation would be done by a third party.

It was not ready yet...

**Question:** What can you do to minimize risk?

--------------------------------------------------------------------------------

# About risk

As computer scientists, we are trained to focus on *technical risk*–

* How to implement feature X? 

* How to interface with system Y? 

* How to call library Z?

Sometimes the important risk is *not* in the technical part.

--------------------------------------------------------------------------------

# Risk categories

* Focus on areas where you have *high* control that are *very*
  important.

* Next deal with areas where you have high control, but are less
  important: for instance, customer requirements, scope, etc.

* Try not to focus on the other areas: your work will have little
  impact.

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

# Strategies for dealing with risk

* Avoidance – use technology you already know.

* Minimization – share code ownership to avoid stagnation when one person is ill.

* Contingency plans – how can we reduce the scope of the project, if we realise we cannot finish on time.

--------------------------------------------------------------------------------

# Planning

--------------------------------------------------------------------------------

# Your project plan

1. Introduction: describe objectives and constraints

1. Project organisation: describe methodology and roles.

1. Risk analysis: describe risks, exposure, and mitigation strategies.

1. Work breakdown: describe activities, milestones, deliverables.

1. Project schedule: describe dependencies between activities, time estimation for milestones, and allocates people to activities.

1. Monitoring & reporting: describe how you will check progress.

--------------------------------------------------------------------------------

# Eerste deliverable - I

Volgende week dinsdag moeten jullie een korte presentatie geven van jullie *project plan*.

Daarbij moeten een aantal zaken aan bod komen.

--------------------------------------------------------------------------------

# Eerste deliverable - Context 

- Wat voor project gaan jullie doen?
- Wat zijn de karakteristieken van jullie project?
- Wat zijn de constraints en objectives?
- Waar zitten de risico's? Hoe gaan jullie daar mee om?
- Hebben jullie al concrete milestones & deliverables?

--------------------------------------------------------------------------------

# Eerste deliverable - Requirements & methodology

- Welke requirements kennen jullie al? Is deze verzameling compleet?
- Wat is de verwachting over hoe veel er nog veel zal veranderen in het project?
- Welke software development methodology past hierbij?
- **Waarom doen jullie het zo?**

--------------------------------------------------------------------------------

# Coming weeks

* You need to start thinking about your methodology.

- **Motivate your choice**

* Requirements

* Software architecture


