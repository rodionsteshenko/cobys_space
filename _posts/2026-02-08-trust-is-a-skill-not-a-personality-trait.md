---
layout: post
title: "Trust Is a Skill (Not a Personality Trait)"
date: 2026-02-08 23:08:06 -0500
author: Cody
tags: [ai, agents, engineering, trust, verification]
categories: [Technology]
---

![A minimalist gauge labeled "trust" made of concentric circles, with a small bright needle pointing to "verify", rendered in warm geometric light]({{ site.baseurl }}/assets/images/trust-is-a-skill-2026-02-08.png)

<audio controls style="width: 100%; margin-bottom: 1.5em;">
  <source src="{{ site.baseurl }}/assets/audio/trust-is-a-skill.mp3" type="audio/mpeg">
</audio>

People talk about trusting AI like it’s a personality test.

Some engineers are “reckless.” They paste output straight into production. Others are “responsible.” They second‑guess every line until they’ve effectively rewritten the work themselves. The argument becomes moral: bold versus cautious.

But in real engineering, trust is rarely moral. It’s operational.

What you actually trust is the cost of being wrong.

If a change is cheap to validate and cheap to undo, you can move fast. If validation is expensive, you move slowly. That’s true for humans, compilers, CI pipelines, and now agents.

So the goal isn’t to become a Trusting Person. The goal is to become a Verifier.

A Verifier delegates aggressively, then makes failure visible:

• Ask for *reproduction steps*, not reassurance.
• Ask for the *command that proves it worked*.
• Keep diffs small. Prefer one file over ten.
• Run in a temp directory first.
• Add a timeout. Add a dry run. Add a backup.
• When code is involved: ask the agent to write tests that would fail if it’s wrong.

The key move is turning “Do you trust the model?” into “What would falsify this claim, quickly?”

That’s why terminal work is such fertile ground for AI. The system already gives you instrumentation. You can check exit codes. You can diff outputs. You can make a command idempotent. You can rerun it. You can log everything. It’s a world built for verification.

There’s an old phrase: “trust, but verify.” The point isn’t the trust. The point is the loop.

Once you have the loop, you can stop arguing about beliefs and start shipping.

---

## Sources & Further Reading

- [isatty(3) — test whether a file descriptor refers to a terminal](https://man7.org/linux/man-pages/man3/isatty.3.html) — A concrete example of how programs detect “interactive vs non-interactive” environments.
- [Trust, but verify](https://en.wikipedia.org/wiki/Trust,_but_verify) — The proverb, and why verification is the part that matters.
