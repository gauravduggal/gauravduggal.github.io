---
layout: page
title: projects
permalink: /projects/
description: Hands-on hardware and signal-processing projects outside my main research.
nav: true
nav_order: 3
---

<div class="gd-page gd-grid-2">
  <article class="gd-card">
    <span class="gd-icon"><i class="fa-solid fa-satellite-dish"></i></span>
    <h4>Micro-Doppler radar using HB100 and RCWL-0516</h4>
    <p>
      I built a Doppler radar by sampling a Doppler radar front end with an Arduino ADC and streaming the
      data over serial to a computer. In Python, I processed the samples with an STFT using a Hamming window.
      The micro-Doppler signature of spinning blades shows up clearly in the spectrogram.
    </p>
    <ul class="gd-tags gd-tags-sm">
      <li>Radar</li><li>Arduino</li><li>Python</li><li>STFT</li>
    </ul>
  </article>

  <article class="gd-card">
    <span class="gd-icon"><i class="fa-solid fa-tower-broadcast"></i></span>
    <h4>Phased-array antenna for an ADS-B receiver</h4>
    <p>
      In the Antenna Design course at IIIT Delhi, I built and tested a 16-element linear phased array for an
      ADS-B receiver at 1090&nbsp;MHz, extending the receiver's range to 400&nbsp;km.
    </p>
    <ul class="gd-tags gd-tags-sm">
      <li>Antennas</li><li>Phased array</li><li>1090 MHz</li><li>IIIT Delhi</li>
    </ul>
  </article>

  <article class="gd-card">
    <span class="gd-icon"><i class="fa-solid fa-dice"></i></span>
    <h4>Estimating &pi; with a probability experiment</h4>
    <p>
      The probability that two random natural numbers are co-prime is 6/&pi;<sup>2</sup>. Each trial draws two
      numbers uniformly between 1 and 100,000. Over many trials, the fraction of co-prime pairs converges to
      6/&pi;<sup>2</sup>, which gives an estimate of &pi;.
    </p>
    <ul class="gd-tags gd-tags-sm">
      <li>Probability</li><li>Monte Carlo</li>
    </ul>
  </article>
</div>
