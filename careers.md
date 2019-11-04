---
layout: default
title: Careers
---
{% for career in site.careers %}
  <h4>{{ career.title }}</h4>
  <p>Location: {{ career.location }}</p>
  <p>{{ career.excerpt }}<br /> -- <a href="{{ site.baseurl }}{{ career.url }}">read more</a><p>
{% endfor %}
