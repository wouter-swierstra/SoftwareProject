---
title: Gametechnologie en Softwareproject
layout: default
---

###Laatste nieuws

<ul>
  {% for post in site.posts %}
    <li>
      <em> {{ post.date | date_to_string }} </em> <br>
      {{ post.content }}
    </li>
  {% endfor %}
</ul>

