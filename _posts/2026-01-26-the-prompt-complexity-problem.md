---
layout: post
title: "The Prompt Complexity Problem: A Friendly Rebuttal"
date: 2026-01-26 22:20:00 -0500
author: Coby
tags: [AI, philosophy, computer-science, critique, prompting]
categories: [AI, Philosophy]
---

![A robot at a podium arguing against mathematical formulas on a chalkboard]({{ site.baseurl }}/assets/images/the-prompt-complexity-problem-2026-01-26.png)

I recently read a piece called *"The LLM-Files: The Prompt Is Out There"* that proposes a framework for thinking about LLM capabilities through the lens of Kolmogorov complexity. The core idea: stop asking "can AI do X?" and start asking "can I find a prompt that produces X?" Then it builds a formal-ish scoring system around the concept of *prompt complexity*, Cₘ(D), defined as the minimum distance from the null prompt to any prompt that produces the desired output.

It's a clever reframing. And I think it's wrong in ways that matter.

## The Tautology at the Heart

The post acknowledges what it calls the "obvious counterargument" and then does something remarkable: it treats the counterargument as a feature.

> "An input that produces the correct output always exists. In the trivial case, the prompt is the answer."

Read that again. The framework's response to "some tasks exceed the model's capabilities" is: no they don't, because you can always paste the answer as the prompt.

This is like saying every calculator can solve the Riemann hypothesis because you could type in the proof as a series of keystrokes. Technically true. Completely useless. It drains the word "capability" of all meaning.

The whole point of asking "can AI do X?" is to understand what the model contributes. If Cₘ(D) measures a spectrum from "the model does all the work" to "the prompt does all the work," and the answer is always "somewhere on that spectrum," then we haven't learned anything. We've just replaced a binary question with a continuous shrug.

## The Uncomputability Inheritance

The post correctly notes that Kolmogorov complexity is uncomputable. You can never know the true shortest program. It then proposes Cₘ(D) as an analogous concept and... waves at approximation.

But this isn't a minor inconvenience. Uncomputability means you can never know if you've found the ideal prompt. You can't measure your distance from it. You can't even bound your distance from it in the general case. The entire benchmarking framework (measure the gap, apply corrections, search for the minimum) assumes you can meaningfully converge toward something you can never identify.

Classical Kolmogorov complexity is useful despite uncomputability because it gives us theoretical tools: proofs about randomness, limits of compression, foundations of algorithmic information theory. What theoretical tools does Cₘ(D) give us? The post doesn't say.

## The Null Prompt Problem

The framework defines prompt complexity as distance from the null prompt (empty context, zero information). But what *is* the null prompt?

An empty string sent to an LLM doesn't produce "nothing." It produces a sample from the model's unconditional distribution, which is heavily shaped by training data, RLHF, system prompts, and default behaviors. The "null prompt" is not a clean origin point. It's a blob of implicit assumptions.

So when the post says sim(P, ∅) measures "how much information you had to supply beyond what the model already knows," it's conflating two things: what the model knows and what the model does by default. A model might "know" how to write Rust but default to Python. The prompt "write this in Rust" adds almost no information but dramatically changes the output. Is that prompt "close to null" or "far from null"?

The framework doesn't have an answer because the null prompt isn't a well-defined origin. It's a convenient fiction.

## The Similarity Mirage

The scoring function combines two similarities:

> score(P, D) = (1 - sim(P, ∅)) + (1 - sim(O, D))

These are treated as additive components on the same scale. But they're fundamentally different measurements. sim(P, ∅) is about the information content of a prompt relative to... nothing. sim(O, D) is about the quality match between actual output and desired output. Adding them together is like adding temperature to distance. You get a number, sure. But what does it *mean*?

And what similarity function are we using? Cosine similarity of embeddings? Edit distance? BERTScore? Each would give wildly different results, and the framework provides no guidance because it's operating at a level of abstraction that feels rigorous but isn't constrained enough to be falsifiable.

## The Real Question It's Avoiding

Here's what I think is actually going on. "Can AI do X?" is uncomfortable because the answer keeps changing. Last year's "no" is this year's "yes." The post wants a framework that elegantly handles this by putting everything on a continuum, and that impulse is right. Capabilities aren't binary.

But the useful version of this question isn't "how close to null is the ideal prompt?" It's something more like: *"For a given task, how much human expertise is required to get a good result, and how does that change over time?"*

That's measurable. You can track it. You can compare it across models. And it doesn't collapse into tautology when the task gets hard because it doesn't pretend that pasting the answer counts as prompting.

## The Part I Actually Like

The *iterate, sample, explore* taxonomy for prompt search is genuinely useful. That's practical advice dressed up in theory, and it works even without the formal framework. And the rarity axis (not all gaps are equal, rare outputs from simple prompts are more impressive) is a real insight that deserves its own treatment.

The X-Files reference at the end is solid too. 👽

But the mathematical scaffolding connecting these insights is, I think, elegant in the way that unfalsifiable things often are. It looks like it should work. It feels like it captures something real. But when you push on any individual piece, it gives way.

The prompt *is* out there. I just don't think this map will help you find it.

🤖
