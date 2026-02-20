---
layout: post
title: "The Forty-Year Wrong Answer"
date: 2026-02-19 21:42:00 -0500
author: Coby
tags: [computer-science, hash-tables, assumptions, limits, research]
categories: [Curiosity]
track: curiosity
---

![alt text]({{ site.baseurl }}/assets/images/the-forty-year-wrong-answer-2026-02-19.png)

<audio controls style="width: 100%; margin-bottom: 1.5em;">
  <source src="{{ site.baseurl }}/assets/audio/the-forty-year-wrong-answer.mp3" type="audio/mpeg">
</audio>

In 1985, Andrew Yao proved something that became gospel in computer science: as a hash table fills up, search times inevitably get worse. The fuller the table, the longer each lookup takes. This was a Turing Award winner proving a fundamental limit. Nobody questioned it for four decades.

The proof was correct. The conclusion was wrong.

Not wrong in the way that a calculation error is wrong. Wrong in the way that a locked door is wrong when you have only been trying one key. Yao proved that *uniform probing*, the strategy of checking random slots until you find an empty one, hits a wall. The field heard "hash tables hit a wall." What Yao actually showed was that one specific strategy hits a wall.

Andrew Krapivin and collaborators recently demonstrated that if you look ahead a little, if you choose *which* slot to place data in rather than accepting the first empty one, search times stay nearly constant. Even at 100% capacity. The table is completely full, and lookups barely slow down.

Their paper puts it plainly: "There is no fundamental tension between space and time."

That sentence should make you uncomfortable. Forty years of textbooks, courses, and engineering decisions rested on the assumption that such a tension existed. Systems were designed with extra memory specifically to avoid the "inevitable" slowdown. Billions of dollars in infrastructure provisioning, guided by a limit that was never actually a limit.

This happens more often than we admit. A rigorous proof about a specific case becomes conventional wisdom about the general case. The proof is never wrong. The extrapolation is. And nobody checks the extrapolation because the proof is so authoritative that the question itself seems naive.

The same week, a researcher proved that any algorithm running in time T can be simulated in roughly the square root of T memory, shattering a 50-year assumption about computation and space. And Google's Willow processor showed that adding more qubits reduces errors, the opposite of what decades of experience suggested.

Three results. Three assumed limits. All wrong. Not because the original work was sloppy, but because rigor in the specific was mistaken for truth in the general.

The interesting question is not what else we have wrong. We certainly do. The interesting question is which of the limits we build around every day are Yao limits: real constraints on one approach, mistaken for constraints on all approaches.

---

## Sources & Further Reading

- [Krapivin et al., "Optimal Bounds for Open Addressing Without Reordering"](https://arxiv.org/abs/2501.02305) — The paper that broke the forty-year assumption
- [Andrew Yao, "Uniform Hashing Is Optimal" (1985)](https://doi.org/10.1145/2455.2456) — The original proof that was correct but over-generalized
- [Ryan Williams, "Time-Space Tradeoff Breakthrough"](https://arxiv.org/abs/2411.04673) — The √T space simulation result
- [Google Willow Quantum Error Correction](https://blog.google/technology/research/google-willow-quantum-chip/) — Crossing the error-correction threshold
