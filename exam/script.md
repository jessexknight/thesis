# Title
Reexamining Assumptions in
Compartmental Models of Heterosexual HIV Transmission
applied to Eswatini

# Motivation

# HIV Epidemic: Context
- Eswatini
  - small landlocked country of ~ 1M b/w South Africa + Mozambique
  - highest HIV prevalence 28%
  - recently achieved 95-95-95 treatment cascade, population overall:
    - UNAIDS targets for % diagnosed, % on treatment, % virally suppressed
    - achieving predicted to reduce incidence, *U = U*
- KP, including FSW
  - experience disproportionate risk, acquisition + transmission
  - risks often stem from root conditions which also create barriers to care
    - for example:
      - women enter sex work, economic vulnerability, patriarchy, sexual violence
      - then: criminalization, stigma, condom confiscation
  - KP need tailored programs

# HIV Epidemic: Transmission Modelling
- one tool which can highlight importance of reaching KP is transmission modelling
  - unlike stats: captures indirect benefits of interrupt
- models have many applications, strength in mechanistic -> causal inference ...
- most popular type of model: compartmental
  - stratify pop: memoryless, homogeneous groups
    - at odds with key concept in HIV epidemiology:
- *Risk Heterogeneity*
  - acquisition risk, transmission risk, but also overlap with intervention heterogeneity
  - previous work: representations of RH influence model outputs
  - RH defined by:
    - structure of the model
    - which data are used + how
    - equations of the model
      *all reflecting assumptions*
- overall R.Q.:
  *How do modelling assumptions* --- assumptions reflecting structure, data, and equations ---
  *influence outputs from compartmental models of heterosexual HIV transmission*

# Overview
<!-- Chapter 5 order -->
**...**
<!-- slides: simplified results -->

# Chapter 2: Scoping Review of Heterogeneity in Models
*How might model assumptions influence prevention impacts of treatment?*

# Systematic Review: Missing Heterogeneity
- reviewed 94 compartmental modelling studies of treatment scale-up, of those:
  - only 2/3 considered risk heterogeneity
  - only 1/3 considered key populations
  - only 1/8 considered differences in treatment cascade across KP
- also: meta-regression for influence of factors on CIA* & IR due to treatment scale-up
  - RH alone: no major effect
  - RH + turnover: decrease TPI
  - KP prioritized: increased TPI
  - KP lagging: **no models** explored (among reviewed)
- this research gap then motivated chapter 5
  - discuss next, out of order vs thesis

# Chapter 5: Intersecting Risk & Treatment Gaps
*How can we improve assumptions about treatment coverage?*

# Treatment as Prevention: Impact of Who is Left Behind
- using the model of heterosexual HIV transmission in Eswatini developed in ch 3-4
- calibrated to observed scale-up in Eswatini: 95-95-95 by 2020 (pop overall) -> *base case*
- defined *hypothetical* (counterfactual) scenarios:
  - different risk groups disproportionately left behind
  - pop overall: 80-80-90
- relative additional infections vs base case
  - more infections in both hypothetical
  - about 2x more leaving FSW & clients behind vs not
- important that models capture data on cascade differences across KP

# Chapter 3: Model Design, Parameterization, & Calibration
*How can we improve assumptions in model design & parameterization?*
<!-- reorder? -->

# Model Design & Parameterization: Usual Assumptions
- Chapter 2: identified usual assumptions
- Chapter 3: compared with quantitative data, qualitative insights, more precise interpretation
  - potentially improved assumptions
**...**

# Eswatini Model Structure
- 8 risk groups + 4 partnership types
- features ~ improved assumptions
- data sources: 3 household surveys, 3 FSW surveys
- how to model transmission among these groups -> chapter 4

# Chapter 4: Beyond Instantaneous Partnerships
*How can we improve assumptions in incidence equation?*
<!-- mention UNAIDS, Goals, Optima, etc. ? -->

# Usual Assumption: Instantaneous Partnerships
- recall: compartments are homogeneous and memoryless
  - thus: cannot track individual partnerships
- instead: model partnerships as a rate
  - with cumulative risk per-partnership @ moment of partnership change
- however: *imagine* a real partnership, lasts 20 years
  - if transmission occurs within 1st year: 19 years cannot transmit
- "wasted sex acts": *cannot result in transmission*
  - adjust for wasted sex acts *within* partnerships using binomial probability model
    - approaches but never exceeds 1
  - *imagine* someone with multiple partnerships per year: only get infected once
    - some modellers have then adjusted for wasted sex acts *between* partnerships
    - "competing risks"

# Instantaneous Partnerships: Problems
1. under instant partnerships assumption ...
    - after transmission, newly infected can immediately transmit again via same partnership
    - "instant risk of onward transmission"
2. adjusting for wasted sex acts *within* partnerships, forced trade off:
  - consider full partnership duration (green):
    - reduce transmission now in *anticipation* of future wasted acts -> "frontload"
      *underestimate* transmission via longer partnerships
  - many modellers: consider only 1-year (blue):
    - *ignore* majority of wasted sex acts in long partnerships
      *overestimate* transmission via longer partnerships
3. *between* partnerships: unnecessary
  - models use instantaneous rate (period of 1 year is arbitrary)
  - model accounts for infection -> no longer susceptible
- solutions: change modelling framework: IBM, pair-based models: own limitations
  - compartmental models remain popular: relative simplicity to parameterize + run

# Effective Partnerships Adjustment
- proposed solution in the thesis
- cannot track *partnerships*, but can track *people*
  - people who recently acquired or transmitted
    - holding state -> remove from incidence equation
- remove until they change partners
- if 2+ partners: decrease effective partners by 1
- next: compared the proposed approach with existing approaches

# Comparing Incidence Approaches: Equal Parameters
- approaches:
  - green: full partnership duration for wasted acts, sum rates from different partnerships
  - blue: 1-year partnership duration, sum rates <!-- common -->
  - purple: 1-year duration + all partnership competing <!-- common -->
  - yellow (gold): new proposed, assume gold standard (repeated all panels)
- incidence per-person year: LR (no sex work), FSW
  - same model parameters
- within-duration (green)
  - incidence lags immediately & stays lower -> *frontloading* wasted acts
  - relative difference larger for LR
- within-1-year (blue)
  - incidence matches early, then overestimates (LR) -> *ignoring* wasted acts
- between-1-year (purple)
  - same, but incidence limited to < 1 among FSW -> *false saturation* (1 year arbitrary)

# Comparing Incidence Approaches: Re-Fit Parameters
- same approaches, now attributable fraction, considering onward transmission
  - 1, 3, 10-year time horizons since 2010
  - different partnership types
- main/spousal [14 - 19 years]
  - 1-year approaches (blue + purple): overestimate AF, little differences
  - within-duration (green): underestimate, but still reasonable
- casual [3 month - 1.5 years]
  - opposite main/spousal
- sex work [6 month - 2 years]
  - same as casual, smaller differences, swr slightly longer
- even after recalibrating: differences remain

# Conclusion

# Current Models Undervalue Key Populations

1. scoping review: KP still not modelled
2. if they are: simplified, without considering latest data & insights, e.g.
  - turnover, main/spousal partnerships, heterogeneity within KP
3. (biggest contribution) problems with incidence equations; mainly:
  - too few wasted sex acts *within* partnerships
    - overestimate AF of main/spousal, underestimate AF of shorter partnerships
  - too many wasted sex acts *between* partnerships
    - underestimate incidence among KP (reduced via fitting)
- AF of unmet KP needs, compounds:
4. assumptions about who is reached by interventions, or who is left behind
- thesis: highlight these issues + provide new methods to move beyond these usual assumptions

# Thanks
