---
layout: about
title: about
permalink: /
subtitle: Wireless Systems Engineer, Apple
announcements:
  enabled: true
  scrollable: true
  limit: 5
selected_papers: true
social: true
---

<!-- ============================ HERO ============================ -->
<section class="gd-hero">
  <div class="gd-hero-text">
    <p class="gd-eyebrow">Wireless Systems Engineer &middot; Apple</p>
    <h1 class="gd-name">Gaurav Duggal</h1>
    <p class="gd-lede">
      I work on wireless systems that have to hold up in the real world. At Apple I build
      RF front-end systems for cellular connectivity. In my PhD at Virginia Tech, I worked out how
      to find people inside buildings using radio signals that <em>bend around window edges</em>.
    </p>
    <ul class="gd-facts">
      <li><i class="fa-solid fa-graduation-cap"></i> PhD, ECE, Virginia Tech (Wireless@VT), 2021&ndash;2026</li>
      <li><i class="fa-solid fa-trophy"></i> Torgersen Research Excellence Award, 1st place PhD, 2026</li>
      <li><i class="fa-solid fa-award"></i> NIJ Graduate Research Fellow, 2023&ndash;2026</li>
    </ul>
    <div class="gd-actions">
      <a class="gd-btn gd-btn-primary" href="/assets/pdf/Gaurav_duggal_full_resume.pdf"><i class="fa-solid fa-file-lines"></i> CV</a>
      <a class="gd-btn" href="https://scholar.google.com/citations?user=OklRZKgAAAAJ"><i class="ai ai-google-scholar"></i> Scholar</a>
      <a class="gd-btn" href="https://www.linkedin.com/in/gaurav-duggal-09416157"><i class="fa-brands fa-linkedin"></i> LinkedIn</a>
      <a class="gd-btn" href="https://github.com/gauravduggal"><i class="fa-brands fa-github"></i> GitHub</a>
      <a class="gd-btn" href="mailto:gduggal1729@gmail.com"><i class="fa-solid fa-envelope"></i> Email</a>
    </div>
  </div>
  <div class="gd-hero-photo">
    <img src="/assets/img/prof_pic.jpg" alt="Gaurav Duggal" loading="eager">
  </div>
</section>

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
<section class="gd-section" id="research">
  <div class="gd-section-head">
    <h2>My PhD research</h2>
  </div>

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
        Advised by Prof. Jeffrey H. Reed, Prof. R. Michael Buehrer and Prof. Harpreet S. Dhillon.
        Funded by a National Institute of Justice Graduate Research Fellowship ($166,500, 2023&ndash;2026).
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

<!-- ========================== BACKGROUND ========================== -->
<section class="gd-section" id="background">
  <div class="gd-section-head">
    <h2>Background</h2>
    <a class="gd-more" href="/cv/">Full CV &rarr;</a>
  </div>
  <div class="gd-timeline-grid">
    <div>
      <h3 class="gd-subhead">Experience</h3>
      <ul class="gd-timeline">
        <li><span class="gd-when">2026&ndash;now</span><strong>Apple</strong>, Wireless Systems Engineer<br><span class="gd-muted">RF front-end systems for cellular connectivity</span></li>
        <li><span class="gd-when">2025</span><strong>NXP Semiconductors</strong>, ML &amp; Signal Processing Research Intern</li>
        <li><span class="gd-when">2022, 2023</span><strong>Samsung Research America</strong>, Research Intern</li>
        <li><span class="gd-when">2019&ndash;2021</span><strong>Qualcomm</strong>, RF Software Engineer</li>
      </ul>
    </div>
    <div>
      <h3 class="gd-subhead">Education</h3>
      <ul class="gd-timeline">
        <li><span class="gd-when">2021&ndash;2026</span><strong>Virginia Tech</strong>, PhD, Electrical &amp; Computer Engineering<br><span class="gd-muted">Wireless@VT</span></li>
        <li><span class="gd-when">2017&ndash;2019</span><strong>IIIT Delhi</strong>, M.Tech., Communications &amp; Signal Processing<br><span class="gd-muted">Automotive radar signal processing with Prof. Shobha Sundar Ram</span></li>
        <li><span class="gd-when">2009&ndash;2013</span><strong>BITS Pilani, Hyderabad</strong>, B.E. (Hons.), Electrical &amp; Electronics Engineering</li>
      </ul>
    </div>
  </div>

  <h3 class="gd-subhead">Research interests</h3>
  <ul class="gd-tags">
    <li>Wireless positioning &amp; localization</li>
    <li>Diffraction-aided positioning in NLOS</li>
    <li>Optimal anchor placement</li>
    <li>Estimation theory</li>
    <li>5G positioning</li>
    <li>Joint radar-communications</li>
  </ul>

  <p class="gd-muted gd-personal"><i class="fa-solid fa-bicycle"></i> Outside work I tinker with electronics and race bikes.</p>
</section>

<!-- ============================ AWARDS ============================ -->
<section class="gd-section" id="awards">
  <div class="gd-section-head">
    <h2>Awards &amp; honors</h2>
  </div>
  <ul class="gd-awards">
    <li class="gd-awards-top">
      <span class="gd-when">2026</span>
      <div><strong>Paul E. Torgersen Graduate Student Research Excellence Award, 1st place PhD</strong>, Virginia Tech College of Engineering
        <span class="gd-links"><a href="https://news.vt.edu/articles/2026/04/eng-coe-torgersen-research-winners-2026.html">VT News</a> &middot; <a href="/assets/video/Gaurav_Duggal.mp4">video</a> &middot; <a href="/assets/pdf/Torgersen_Poster.pdf">poster</a></span></div>
    </li>
    <li class="gd-awards-top">
      <span class="gd-when">2023&ndash;26</span>
      <div><strong>NIJ FY23 Graduate Research Fellowship ($166,500)</strong>, U.S. Department of Justice, for &ldquo;Next Generation Emergency Networks&rdquo;
        <span class="gd-links"><a href="https://nij.ojp.gov/funding/fellowships/graduate-research-fellowship-program-past-and-present-fellows">NIJ fellows</a></span></div>
    </li>
    <li><span class="gd-when">2026</span><div><strong>Pratt Fellowship</strong> ($1,000), Virginia Tech</div></li>
    <li><span class="gd-when">2024, 2025</span><div><strong>Commonwealth Cyber Initiative Cyber Innovation Scholar</strong> ($2,000/yr)</div></li>
    <li><span class="gd-when">2023</span><div><strong>IEEE ComSoc Travel Grant</strong> ($1,250)</div></li>
    <li><span class="gd-when">2022</span><div><strong>Qualcomm Innovation Fellowship, finalist</strong>, for &ldquo;Joint radar-communication based wireless localisation&rdquo;</div></li>
  </ul>
</section>
