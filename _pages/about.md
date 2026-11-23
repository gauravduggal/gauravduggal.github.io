---
layout: about
title: about
permalink: /
# The home page is this ordered list of sections. Reorder, delete or add entries.
# Types: hero | markdown | tiles | news | publications | contact  (see docs/EDITING.md)
sections:
  - type: hero # content: _data/profile.yml
  - type: markdown # content: the text below this front matter
    id: about-me
    title: About me
    more: { label: Full CV, url: /cv/ }
  - type: tiles # content: _data/highlights.yml
    id: highlights
    title: Highlights
    data: highlights
    more: { label: All publications, url: /publications/ }
  - type: news # content: _news/ items with `highlight: true`
    id: news
    title: News
    limit: 5
    highlights_only: true
    images: false # the Highlights tiles above already show these images
    more: { label: All news, url: /news/ }
---

I'm a wireless systems engineer at Apple, working on RF front-end systems for cellular connectivity.

For my PhD at Virginia Tech, advised by
[Prof. Jeffrey Reed](https://ece.vt.edu/people/profile/reed.html),
[Prof. Michael Buehrer](https://ece.vt.edu/people/profile/buehrer.html) and
[Prof. Harpreet Dhillon](https://www.dhillon.ece.vt.edu/), I developed theory and methods for wireless
localization when the direct radio path is blocked. The work brings together **electromagnetic theory**,
to model how signals diffract around building edges; **estimation theory**, to establish fundamental limits
on localization accuracy; and **optimization**, to design efficient algorithms and optimal anchor placements.
It was funded by a U.S. Department of Justice
[NIJ Graduate Research Fellowship](https://nij.ojp.gov/funding/awards/15pnij-23-gg-01949-ress) ($166,500)
and won first place in Virginia Tech's
[Torgersen Graduate Student Research Excellence Award](https://news.vt.edu/articles/2026/04/eng-coe-torgersen-research-winners-2026.html).

For my M.Tech. at IIIT Delhi with [Prof. Shobha Sundar Ram](https://sites.google.com/iiitd.ac.in/shobhasundarram),
I applied **signal processing** to design a Doppler-resilient IEEE 802.11ad waveform and an automotive radar
built on it.

Outside work, I enjoy riding bikes. You can find my rides on [Strava](https://www.strava.com/athletes/3352010) and [YouTube](https://www.youtube.com/@gauravduggal).
