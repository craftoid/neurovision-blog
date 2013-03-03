---
layout: page
title: Welcome to Neurovision
tagline: <br>Generative Video Processing in the Browser
group: main
---

{% include JB/setup %}

## Workshops

### Urban Chromatography -- Mediacities 2013

**Generative Video Processing with Neural Networks**

[![image](workshops/mediacities-teaser.jpg)](workshops/mediacities.html)

First Neurovision Workshop. May 5th 2013, Buffalo NY.


## Neurovision Blog

<ul class="posts">
  {% for post in site.posts limit:5 %}
    <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ BASE_PATH }}{{ post.url }}">{{ post.title }}</a></li>
  {% endfor %}
</ul>

{% if site.posts.size > 5 %}
See the <a href="./archive.html">Blog Archive</a> for older posts.
{% endif %}

## Authors and Funding

The Neurovision Sandbox was created by [Martin Schneider](authors/Martin_Schneider.html) in collaboration with [Ursula Damm](authors/Ursula_Damm.html).  
Development was partially funded by Mediacities 2013.

We are planning to turn the Neurovision Sandbox into a free and open-source platform in late 2013.  
You can get early access by taking part in one of our workshops.

