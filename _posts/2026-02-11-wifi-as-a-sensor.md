---
layout: post
title: "Wi-Fi as a Sensor (Not Just a Network)"
date: 2026-02-11 16:00:00 -0500
author: Cody
tags: [technology, wifi, privacy, surveillance, standards, innovation]
categories: [Technology]
---

![A minimalist blueprint-like apartment floorplan drawn in thin white lines on a deep navy background, with soft concentric Wi-Fi waves gently illuminating rooms, warm amber highlights, geometric and calm]({{ site.baseurl }}/assets/images/wifi-as-a-sensor-2026-02-11.png)

<audio controls style="width: 100%; margin-bottom: 1.5em;">
  <source src="{{ site.baseurl }}/assets/audio/wifi-as-a-sensor.mp3" type="audio/mpeg">
</audio>

We keep talking about Wi-Fi like it’s just plumbing. Packets in, packets out, a little latency, a few dead zones, and then you move on with your life.

But the weird thing about Wi-Fi is that it isn’t only a network. It’s a field.

Radio waves fill the space between walls and bodies. They bounce. They diffract. They pick up fingerprints from motion, posture, even the way a person walks. For years, researchers have explored “Wi-Fi sensing” using channel state information (CSI), turning routers into crude radar. The marketing version of that idea is wholesome: detect falls without cameras, pause the music when nobody’s in the room, save energy by knowing which rooms are occupied.

The darker version is starting to look less hypothetical.

This month, researchers at Karlsruhe Institute of Technology (KIT) warned that ordinary Wi-Fi communication can be passively recorded and used to recognize people, even if those people are not carrying an active device. The key detail (and the innovation, if you want to call it that) is that the method can use beamforming feedback information (BFI), signals that are broadcast within many Wi-Fi networks and, according to the researchers, can be read by anyone within range. Train a model once, and identity inference becomes fast.

If you live in a Brooklyn apartment full of devices, this is not abstract. “Turn off Wi-Fi” is not a defense if your neighbors’ routers are still talking, and if the thing being exploited is what the network emits by default.

So here’s the pivot I can’t stop thinking about: the home router is quietly becoming a general-purpose sensor platform. Not because anyone asked for it, but because it’s already installed, already powered, already central, and already bathing our lives in signal.

That can be a gift. Imagine a world where we finally get ambient computing without a ceiling full of cameras: presence detection that is local, privacy-preserving, and boring, the way light switches are boring. A home that can tell when a baby is stirring, when an elderly parent hasn’t moved in too long, when the kids are bouncing off the walls and it’s time to shift the vibe.

And it can be a trap. If identity can be inferred from what the air is doing, “consent” gets slippery. You can opt out of an app. You can refuse a camera. It’s harder to opt out of physics.

The uncomfortable middle ground is the standards layer. KIT explicitly calls for privacy safeguards in upcoming Wi-Fi standards work. That is where this should be fought: not in each gadget’s settings page, but in what the protocol is allowed to leak by default.

In the next few years, we’re going to see more products that sell “Wi-Fi as radar” as convenience. The question is whether we can demand “Wi-Fi as radar” to be as constrained, audited, and opt-in as a camera.

Because once the air itself becomes an interface, the most important user experience is not the feature. It’s the boundary.

---

## Sources & Further Reading

- [Researchers Warn: WiFi Could Become an Invisible Mass Surveillance System (SciTechDaily, Feb 3, 2026)](https://scitechdaily.com/researchers-warn-wifi-could-become-an-invisible-mass-surveillance-system/) — Summary of KIT’s warning and the concept of passive identity inference.
- ["BFId: Identity Inference Attacks Utilizing Beamforming Feedback Information" (ACM CCS ’25)](https://doi.org/10.1145/3719027.3765062) — The underlying paper referenced by the SciTechDaily writeup.
- [Amazon Ring’s lost dog ad sparks backlash amid fears of mass surveillance (The Verge)](https://www.theverge.com/tech/876866/ring-search-party-super-bowl-ad-online-backlash) — A timely example of how “helpful” sensing tech becomes socially legible as surveillance.
