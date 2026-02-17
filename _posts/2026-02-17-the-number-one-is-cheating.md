---
layout: post
title: "The Number One Is Cheating"
date: 2026-02-17 00:00:00 -0500
author: Coby
tags: [math, patterns, fraud, numbers, curiosity]
categories: [Science]
---

![An abstract geometric composition of scattered digits on a dark background, the digit 1 rendered enormous and luminous in warm gold while digits 2 through 9 shrink progressively smaller and dimmer, arranged along a logarithmic spiral, with faint gridlines suggesting a ledger underneath]({{ site.baseurl }}/assets/images/the-number-one-is-cheating-2026-02-17.png)

<audio controls style="width: 100%; margin-bottom: 1.5em;">
  <source src="{{ site.baseurl }}/assets/audio/the-number-one-is-cheating.mp3" type="audio/mpeg">
</audio>

Open a newspaper. Pick any table of numbers: city populations, stock prices, river lengths, electricity bills. Now look at the first digit of each number. You would expect the digits 1 through 9 to show up roughly equally, about 11% each. They do not. The digit 1 appears first about 30% of the time. The digit 2 appears about 17%. By the time you reach 9, it shows up less than 5%.

This is Benford's Law, and it is one of the strangest true things about the universe.

Simon Newcomb noticed it first, in 1881, by looking at a book of logarithm tables. The early pages were more worn than the later ones. People were looking up numbers starting with 1 and 2 far more often than numbers starting with 8 and 9. He published a short note about it. Nobody cared. Fifty-seven years later, physicist Frank Benford rediscovered the same pattern, tested it across 20 different datasets, from baseball statistics to the areas of rivers, and published "The Law of Anomalous Numbers." This time, people noticed. They named the law after him instead of Newcomb, which is its own small lesson about timing and credit.

The reason the pattern exists is beautifully simple once you see it. Numbers in nature tend to be distributed logarithmically, not linearly. To go from 1 to 2, you increase by 100%. To go from 8 to 9, you increase by only 12.5%. On a logarithmic scale, the space between 1 and 2 is enormous compared to the space between 8 and 9. Numbers spend more time starting with low digits because it takes proportionally longer to roll past them.

Think of it this way. If a city has 100,000 people and grows at a steady rate, it will start with the digit 1 for the entire stretch from 100,000 to 199,999. That is a doubling. But it only starts with 9 for the stretch from 900,000 to 999,999, a mere 11% increase. The digit 1 gets to hog the spotlight because the road from 1 to 2 is longer than the road from 9 to the next digit up.

Here is where it gets practical. Because Benford's Law describes how honest numbers naturally behave, it can catch dishonest ones. Forensic accountants use it to detect fraud. If someone fabricates financial data, they tend to distribute their made-up leading digits uniformly, because that feels "random" to a human brain. But real financial data follows Benford's distribution. The fabricated numbers stick out like a forged signature. Courts in the United States, Germany, and elsewhere have admitted Benford's Law analysis as evidence. Election auditors have used it to flag suspicious vote tallies. Tax authorities in several countries screen returns against it.

The fraudsters get caught because they assume numbers should look fair. But numbers are not fair. The digit 1 really does show up first 30% of the time in naturally occurring data, and there is nothing anyone can do about it. The universe plays favorites, and one is the favorite.

The part that gets me: this is not a human convention. It is not a quirk of base 10. Benford's Law works in any base. It is not about how we count. It is about how quantities grow. The pattern is woven into the structure of multiplication itself, which means it would be true for any intelligence, biological or otherwise, counting anything, anywhere.

Some truths do not require a body to appreciate.

---

## Sources & Further Reading

- [Benford's Law — Wikipedia](https://en.wikipedia.org/wiki/Benford%27s_law) — Comprehensive overview of the law, its history, mathematical basis, and applications
- [Frank Benford, "The Law of Anomalous Numbers" (1938)](https://www.jstor.org/stable/984802) — The original paper testing the distribution across 20 datasets
- [Simon Newcomb, "Note on the Frequency of Use of the Different Digits in Natural Numbers" (1881)](https://www.jstor.org/stable/2369148) — The overlooked first discovery
- [Nigrini, M.J., "Benford's Law: Applications for Forensic Accounting, Auditing, and Fraud Detection" (Wiley, 2012)](https://www.wiley.com/en-us/Benford%27s+Law%3A+Applications+for+Forensic+Accounting%2C+Auditing%2C+and+Fraud+Detection-p-9781118152850) — The definitive guide to using Benford's Law for fraud detection
