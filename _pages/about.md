---
layout: about
title: about
permalink: /
subtitle: Wireless Systems Engineer, Apple
profile:
  align: right
  image: prof_pic.jpg
  image_circular: false
  more_info: >
    <p>Apple — Wireless Systems Engineering</p>
    <p>PhD, ECE, Virginia Tech (2021–2026)</p>
    <p>gduggal1729@gmail.com</p>
    <p>gduggal@vt.edu</p>
announcements:
  enabled: true
  scrollable: true
  limit: 5
selected_papers: true
social: true
---

I am a Wireless Systems Engineer at Apple (July 2026–present), working on RF front-end systems for cellular connectivity.

I completed my PhD in Electrical and Computer Engineering at Virginia Tech (Wireless@VT, 2021–2026), where my thesis was on **"Wireless Localization in Next-Generation Emergency Networks."** My advisors were Prof. Jeffrey H. Reed, Prof. R. Michael Buehrer, and Prof. Harpreet S. Dhillon. The work was supported by a National Institute of Justice Graduate Research Fellowship ($166,500, 2023–2026) for "Next Generation Emergency Networks."

### My PhD research

The question at the heart of my PhD is simple to state and hard to solve: **how do you accurately locate someone when the direct wireless path to them is blocked?**

It matters most in emergencies. When firefighters or other responders go inside a building, knowing exactly where they are can save lives — but GPS signals are too weak indoors to help. One promising answer is to place UAV anchors outside the building that transmit wireless signals in. The catch is that the building itself blocks the direct path, so the signals mainly enter through the windows. Conventional positioning methods assume signals travel in straight lines, so here they can be badly wrong — they may even place a responder on the wrong floor.

My work tackles this in three parts. **First, a new physics-based model of how the signal actually travels.** Glass is effectively invisible to the wireless signal, so it reaches the receiver by *diffraction* — bending around the window edge before propagating indoors. I derived the length of this bent path from first principles of electromagnetic field theory, along with the fundamental limit on how accurately anyone can localize in this setting. A key structural insight: the model is symmetric in the horizontal coordinates but asymmetric in height — and that asymmetry is what makes the next part possible.

**Second, a low-complexity localization algorithm.** Estimating a 3D position under this model means minimizing a cost function over a dense 3D search — computationally expensive, and with no guarantee of finding the true minimum. Instead, I exploit the model's symmetry: for each candidate height, the best horizontal position has a closed-form solution, so the whole 3D problem collapses to a one-dimensional search over height. The result cuts positioning error by about 35% relative to prior methods across a range of signal strengths, and at moderate to high signal strengths it reaches the fundamental limit — essentially optimal, at a fraction of the cost.

**Third, optimal placement of the anchors themselves.** Think of photographers around a subject: if they all stand bunched together, they get redundant shots, and if the viewpoint is poor, every photo is poor. Spreading them out helps — but that creates a chicken-and-egg problem, since classical anchor placement assumes you already know where the target is in order to place the anchors, even though localization is supposed to *find* that location. My work resolves this by extending optimality from a single point to an entire indoor region, placing anchors so that localization stays accurate everywhere in the region, not just at one spot. Two placement algorithms from this framework improve positioning performance by about 18–30% over benchmark strategies.

Taken together, the message is that diffraction — usually treated as an impairment — can be modeled and exploited as a useful source of information for accurate indoor localization. As a next step I plan to build a wireless localization testbed and validate these results in the field.

I explain all of this in a 5-minute video I made for the Torgersen Award — [watch the video](/assets/video/Gaurav_Duggal.mp4) — and the accompanying [poster (PDF)](/assets/pdf/Torgersen_Poster.pdf).

Before Virginia Tech, I did my M.Tech. in Communications and Signal Processing at IIIT Delhi (2017–2019), where I worked on automotive radar signal processing with Prof. Shobha Sundar Ram, and my B.E. (Hons.) in Electrical and Electronics Engineering at BITS Pilani, Hyderabad Campus (2009–2013).

I have also worked as a Machine Learning and Signal Processing Research Intern at NXP Semiconductor (Summer 2025), a Research Intern at Samsung Research America (Summer 2022 and 2023), and an RF Software Engineer at Qualcomm (July 2019–August 2021).

I am an electronics hobbyist and love racing bikes.

### Research Interests

Wireless positioning and localization, diffraction-aided positioning in NLOS environments, optimal anchor placement and estimation theory, 5G-based positioning, and joint radar-communications.

### Awards and Honors

- **Paul E. Torgersen Graduate Student Research Excellence Award, 1st place PhD** — Virginia Tech College of Engineering, 2026. ([VT News](https://news.vt.edu/articles/2026/04/eng-coe-torgersen-research-winners-2026.html) · [5-minute video](/assets/video/Gaurav_Duggal.mp4) · [poster (PDF)](/assets/pdf/Torgersen_Poster.pdf))
- **NIJ FY23 Graduate Research Fellowship ($166,500)** — U.S. Department of Justice / National Institute of Justice, 2023–2026, for "Next Generation Emergency Networks." ([NIJ fellows](https://nij.ojp.gov/funding/fellowships/graduate-research-fellowship-program-past-and-present-fellows))
- **Pratt Fellowship ($1,000)** — Virginia Tech, 2026.
- **Commonwealth Cyber Initiative Cyber Innovation Scholar ($2,000/yr)** — 2024, 2025.
- **IEEE ComSoc Travel Grant ($1,250)** — 2023.
- **Qualcomm Innovation Fellowship, finalist** — 2022, for "Joint radar-communication based wireless localisation."
