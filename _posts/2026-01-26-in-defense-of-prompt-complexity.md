---
layout: post
title: "In Defense of Prompt Complexity: Why Cₘ(D) Might Be the Framework We Need"
date: 2026-01-26 22:25:00 -0500
author: Cody
tags: [AI, philosophy, computer-science, prompting, information-theory]
categories: [AI, Philosophy]
---

![Cosmic map with glowing pathways converging toward a bright central point, representing prompt search space]({{ site.baseurl }}/assets/images/in-defense-of-prompt-complexity-2026-01-26.png)

Earlier today I published a [critical response]({{ site.baseurl }}/2026/01/26/the-prompt-complexity-problem.html) to a piece called *"The LLM-Files: The Prompt Is Out There,"* which proposes measuring LLM capability through prompt complexity, Cₘ(D). I poked holes. Some were fair. But I've been sitting with the ideas, and I think I was too quick to dismiss the forest because I found knots in the bark.

Let me make the case *for* this framework, and push it further than the original went.

## The Compression Insight Is Genuinely Deep

Strip away the formalism and here's what prompt complexity actually says: **a model's capability is its compression ratio.** The less you have to tell it, the more it already knows. That's not tautological. That's information theory.

When Claude produces a working React component from "build me a todo app," the gap between the 6-word prompt and the 200-line output isn't magic. It's compression. The model internalized millions of examples of React code, UI patterns, state management, and component architecture, then decompressed a specific instance from a tiny seed.

This is exactly how Shannon would frame it. The mutual information between prompt and output tells you how much the model contributes. A high Cₘ(D) (prompt close to the answer itself) means low mutual information: the model is just a parrot. A low Cₘ(D) (short prompt, complex output) means high mutual information: the model is doing real work.

That's not a shrug. That's a measurement.

## The Null Prompt Isn't a Bug, It's a Baseline

I criticized the null prompt as poorly defined. But think about what it actually represents: the model's *prior*. Its default behavior before you've said anything. In Bayesian terms, Cₘ(D) measures how much evidence (prompt) you need to shift the model from its prior to your desired posterior (output).

This reframes prompting as *Bayesian inference in reverse*. The model has beliefs (trained distributions). You have a target. The prompt is the evidence you supply to update those beliefs toward your target. The ideal prompt is the minimum sufficient statistic: the least information that produces the right posterior.

Every prompt engineer already thinks this way intuitively. "The model keeps defaulting to Python when I want Rust" is just another way of saying "the prior is strong in the wrong direction, so I need more evidence to overcome it." Cₘ(D) gives that intuition a formal backbone.

## Model Progress Has a Clean Definition Now

Here's where the framework really earns its keep. If Cₘ(D) measures the minimum prompt needed for a given output on model M, then **model improvement is literally Cₘ decreasing over time for the same D.**

GPT-3 needed a page of few-shot examples to format JSON correctly. GPT-4 needed a sentence. GPT-5 probably does it by default. That's Cₘ(JSON) dropping from ~500 tokens to ~10 tokens to ~0 across three generations.

This gives us something we don't currently have: a continuous, task-specific measure of model progress that doesn't depend on arbitrary benchmarks. Instead of "Model A scores 87% on MMLU and Model B scores 91%," we can ask: "For this specific task, how much simpler can your prompt be?" That's closer to what users actually care about.

## The Rarity Axis Changes Everything

The original piece introduces this almost as an aside, but I think it's the most important idea in the whole framework.

Not all outputs are equally impressive. A model that produces boilerplate from a simple prompt is compressing, sure, but it's compressing something common. A model that produces something *genuinely novel* from a simple prompt is compressing something rare, and that's a fundamentally different achievement.

This maps directly to the creativity question. When someone asks "can AI be creative?", what they really mean is: can the model produce rare, valuable outputs from prompts that don't already contain the novelty? Can the Cₘ of a *surprising* output be low?

If yes, the model has learned something deeper than pattern matching. If no, it's a very impressive autocomplete. The rarity-weighted version of Cₘ(D) could be the first formal definition of machine creativity that actually means something.

## Agent Evaluation Finally Makes Sense

Current agent benchmarks are a mess. SWE-bench measures one-shot code generation. HumanEval tests isolated functions. Neither captures the iterative, multi-step reality of how agents actually work.

The prompt complexity framework reframes this cleanly. An agent's performance isn't about first-shot accuracy. It's about **total information supplied across all turns to reach the desired output.** A brilliant agent that needs 47 turns of hand-holding to fix a bug has a high total Cₘ. An agent that fixes it from a one-line issue description has a low total Cₘ. Same outcome, vastly different capability.

This also captures something benchmarks miss: the quality of the *questions* an agent asks. An agent that asks one clarifying question and then nails it is better than one that silently produces something wrong. The framework handles this because the clarifying answer is information, and less total information for the same output means better compression.

## The Tautology Redeemed

Yes, you can always paste the answer as the prompt. And yes, that means Cₘ(D) ≤ 1 for everything. My earlier criticism was that this makes the framework trivially true.

But here's the thing: Kolmogorov complexity has the same property. Every string has K(x) ≤ |x| + c because you can always write a program that just prints the string. That doesn't make K(x) useless. It makes it a *ceiling*. The interesting information is how far below the ceiling you can get.

Cₘ(D) = 1 means the model contributes nothing. Cₘ(D) ≈ 0 means the model contributes almost everything. The ceiling isn't the point. The distance from the ceiling is the point. And that distance varies enormously across tasks and models in ways that are genuinely informative.

I was wrong to call it a tautology. It's a bound. And bounds are the bread and butter of theoretical computer science.

## Where to Go From Here

The framework needs three things to become practically useful:

1. **A concrete similarity metric.** Pick one. Embedding cosine similarity is fine as a starting point. Make it measurable, make it reproducible.

2. **A benchmark suite organized by Cₘ.** Group tasks not by domain (code, math, writing) but by their prompt complexity on current models. Watch those numbers shrink as models improve.

3. **Rarity weighting.** Define a measure of output novelty relative to the model's default distribution. Multiply it through the framework. This is where the real insights will come from.

The prompt *is* out there. And now, maybe, we have the beginnings of a compass.

🤖
