---
layout: page
title: research
permalink: /research/
description: "My PhD at Virginia Tech on wireless localization for emergency networks, and my M.Tech. work on automotive radar at IIIT Delhi."
nav: false
published: false
nav_order: 2
---

<div class="gd-home gd-research">

<!-- ======================= TORGERSEN AWARD ======================= -->
<section class="gd-award">
  <div class="gd-award-text">
    <p class="gd-award-badge"><i class="fa-solid fa-trophy"></i> 1st place, PhD &middot; 2026</p>
    <h2>Paul E. Torgersen Graduate Student Research Excellence Award</h2>
    <p>
      Virginia Tech College of Engineering. I explain my whole PhD in five minutes in the video,
      and the poster sums it up on a single page.
    </p>
    <div class="gd-actions">
      <a class="gd-btn gd-btn-light" href="/assets/pdf/Torgersen_Poster.pdf"><i class="fa-solid fa-file-pdf"></i> Poster (PDF)</a>
      <a class="gd-btn gd-btn-light" href="https://news.vt.edu/articles/2026/04/eng-coe-torgersen-research-winners-2026.html"><i class="fa-solid fa-newspaper"></i> VT News</a>
    </div>
  </div>
  <div class="gd-award-media">
    <video controls preload="none" playsinline poster="/assets/img/research/poster_thumb.jpg">
      <source src="/assets/video/Gaurav_Duggal.mp4" type="video/mp4">
      <a href="/assets/video/Gaurav_Duggal.mp4">Watch the 5-minute video</a>
    </video>
  </div>
</section>

<!-- ========================= PhD RESEARCH ========================= -->
<section class="gd-section gd-section-first" id="research">

  <blockquote class="gd-question">
    How do you find someone when the direct wireless path to them is blocked?
  </blockquote>

  <div class="gd-why">
    <div class="gd-why-text">
      <h3>Why it matters</h3>
      <p>
        When firefighters go into a building, knowing exactly where they are can save lives.
        But GPS is too weak indoors to help.
      </p>
      <p>
        One option is to fly drones (UAV anchors) outside the building and have them transmit
        signals in. The catch: walls block the direct path, so the signals mostly come in
        through the <strong>windows</strong>. Standard positioning methods assume signals travel
        in straight lines, so here they can be badly wrong, even putting a responder on the
        <strong>wrong floor</strong>.
      </p>
      <p class="gd-muted">
        Thesis: <em>Wireless Localization in Next-Generation Emergency Networks</em>.
        Advised by <a href="https://ece.vt.edu/people/profile/reed.html">Prof. Jeffrey H. Reed</a>, <a href="https://ece.vt.edu/people/profile/buehrer.html">Prof. R. Michael Buehrer</a> and <a href="https://www.dhillon.ece.vt.edu/">Prof. Harpreet S. Dhillon</a>.
        Funded by a <a href="https://nij.ojp.gov/funding/awards/15pnij-23-gg-01949-ress">National Institute of Justice Graduate Research Fellowship</a> ($166,500, 2023&ndash;2026; <a href="https://nij.ojp.gov/funding/fellowships/graduate-research-fellowship-program-past-and-present-fellows">NIJ fellows list</a>).
      </p>
    </div>
    <figure class="gd-figure">
      <img src="/assets/img/research/motivation.jpg" alt="Illustration: UAVs outside a burning building; GPS does not reach indoors, the direct path is blocked, and signals enter through the windows" loading="lazy">
      <figcaption>The direct path is blocked, so the signal comes in through the windows.</figcaption>
    </figure>
  </div>

  <h3 class="gd-subhead">Three ideas</h3>
  <div class="gd-cards">
    <article class="gd-card">
      <span class="gd-num">1</span>
      <h4>Model how the signal bends</h4>
      <img src="/assets/img/research/c1_model.jpg" alt="Signal from a UAV diffracting around a window edge into a room, with the path-length formula" loading="lazy">
      <p>
        Radio waves pass through glass as if it isn't there, so the signal <em>bends around the window
        edge</em> (diffraction) and then travels into the room. Working from electromagnetic field theory,
        I derived the length of this bent path and the best accuracy any method could achieve.
      </p>
      <p class="gd-insight">Key insight: the model treats left/right the same, but not up/down.</p>
    </article>

    <article class="gd-card">
      <span class="gd-num">2</span>
      <h4>Turn a hard 3D search into an easy 1D one</h4>
      <img src="/assets/img/research/c2_cost.jpg" alt="1D cost function along building height with a correct and an incorrect minimum" loading="lazy">
      <p>
        Searching every 3D point is slow and can get stuck on the wrong answer. Because of that symmetry,
        for each candidate height the best horizontal position has a closed-form solution. That leaves
        a 1D search over height, where the right answer is easy to pick out.
      </p>
      <p class="gd-stat"><strong>~35%</strong> lower positioning error than prior methods, and it hits the theoretical limit at moderate to high signal strength.</p>
    </article>

    <article class="gd-card">
      <span class="gd-num">3</span>
      <h4>Place the anchors for a whole region</h4>
      <img src="/assets/img/research/c3_bad.jpg" alt="Photographers bunched together all get the same shot" loading="lazy">
      <p>
        Picture photographers at a wedding: bunched together, they all get the same shot, and if that
        angle is bad, every photo is bad. Spreading them out helps, but where do you put them if you don't
        know where the subject is? Anchor placement has the same chicken-and-egg problem. I solved it by
        placing anchors to work well across an <em>entire indoor region</em>, not just one point.
      </p>
      <p class="gd-stat"><strong>18&ndash;30%</strong> better positioning than benchmark placement strategies.</p>
    </article>
  </div>

  <div class="gd-results">
    <figure class="gd-figure">
      <img src="/assets/img/research/res_accuracy.jpg" alt="Positioning error vs signal strength: proposed method beats prior art and meets the fundamental limit" loading="lazy">
      <figcaption>The proposed method (red) vs. prior art (gold) and the fundamental limit (dashed). Lower is better.</figcaption>
    </figure>
    <figure class="gd-figure">
      <img src="/assets/img/research/res_placement.jpg" alt="Bar chart: two optimal anchor placement algorithms improve accuracy 18 to 33 percent over three strategies" loading="lazy">
      <figcaption>How much the two optimal placement algorithms improve on three benchmark strategies.</figcaption>
    </figure>
  </div>

  <p class="gd-takeaway">
    <strong>The big picture:</strong> diffraction is usually treated as a problem to work around. My work shows
    it can be modeled and <em>used</em> as information for accurate indoor localization. The next step is
    a testbed to validate the results in the field.
  </p>
</section>

<!-- ======================== M.TECH THESIS ======================== -->
<section class="gd-section" id="mtech">
  <div class="gd-section-head">
    <h2>Before my PhD: automotive radar</h2>
  </div>
  <div class="gd-mtech">
    <p class="gd-when">M.Tech. thesis &middot; IIIT Delhi &middot; 2017&ndash;2019</p>
    <h3><em>Automotive Radar Signal Processing</em></h3>
    <p class="gd-muted">
      M.Tech. in Communications and Signal Processing, advised by <a href="https://sites.google.com/iiitd.ac.in/shobhasundarram">Prof. Shobha Sundar Ram</a>.
    </p>
    <p>
      My thesis made the IEEE 802.11ad waveform (the 60&nbsp;GHz Wi-Fi standard) <strong>Doppler-resilient</strong>,
      so it holds up when the car and its surroundings are moving, and then designed an automotive radar with it.
      Because the waveform is also a communication signal, the result is a joint radar-communications system.
      I also used the radar to detect the <strong>micro-Doppler and micro-range</strong> signatures of pedestrians.
    </p>
    <ul class="gd-paperlist">
      <li>
        <a href="https://doi.org/10.1109/TAES.2020.2990393">Doppler-resilient 802.11ad-based ultrashort range automotive joint radar-communications system</a>
        <span class="gd-muted">&middot; IEEE Transactions on Aerospace and Electronic Systems, 2020</span>
      </li>
      <li>
        <a href="https://doi.org/10.1109/RADAR.2019.8835525">Micro-Doppler and micro-range detection via Doppler-resilient 802.11ad-based vehicle-to-pedestrian radar</a>
        <span class="gd-muted">&middot; IEEE Radar Conference (RadarConf), 2019</span>
      </li>
    </ul>
  </div>
</section>

</div>
