## What is the intro to my IATBR dissertation review, 2021-08-31?

> Hi everyone, first things first,
> if you want to follow along on your own,
> now or afterwards, see the link on screen.
> See the youtube link to my original dissertation talk,
> for relevant background and details.


---

# Checking models in statistics, machine learning, and discrete choice

## A perspective to bind us all

<!-- Note that the imagery in my mind for the subtitle is the Lord of the Rings,
   "One Ring to bring them all and in the darkness bind them" -->

Timothy Brathwaite, August 2021

---

## Thanks

- Choice Modelling Centre at University of Leeds
  for hosting the seminar and inviting me to speak with you all.
- Everyone for taking time out of their day to attend or watch this seminar.

Unless I've said something that completely confused you,
please hold questions till the end.

<!-- Perhaps I can simply reuse the slide from last time
(with any appropriate font changes if / as needed) -->

---

## What motivates the disciplinary mix? (problems)

I believe that the mix is partially driven by the hard and complex
choice problems being faced in industry, e.g. the choice of:
  - words, e.g. content-generation/support-chatbot, huggingface.co
  - location, e.g. yelp
  - clothing, e.g. stitchfix

<!-- Perhaps three sets of image/icon pairs?
Something generic for word/location/clothing + corporate icons next to it? -->

---

## What motivates the disciplinary mix? (opportunities)

Beyond inherently interesting applications,
there is money to be made by accurately modelling choices,
so all quantitative disciplines have joined the party.

<!-- All quantitative disciplines now interested in modeling choices -->
<!-- maybe an image of money partying? -->

---

## What motivates the disciplinary mix? (questions)

- Immediate and interesting methodological questions are:
  - how to adapt 'non-choice-specific' quantitative methods to choice modelling,
    like using a coffee-maker to cook one's hot-dogs,
  - further, how to understand, appreciate, and assess unfamiliar adaptations?
  <!-- how to promote and permit diversity, that is, -->

<!-- Maybe two images. One for adaptation / overcoming functional-fixedness.
   Another to represent diversity. -->

---

## How did my dissertation contribute? (Overall)

By modelling the following pattern and adaptation strategy:
- starting with a
  - substantive choice modelling problem and
  - unsolved, technical problem with current choice models
- interesting quantitative ideas from outside of choice modelling
- customizing the
  - microeconomic interpretation / generation / recreation of the methods
  - implementation of general idea
    to ameliorate the technical choice modelling problem

<!-- I imagine three images with captions.
  A big pot/bowl for cooking soup or a cauldron.
  Caption = choice modelling problem.

  Some spices. Caption = outside idea.

  Spoon. Caption = choice modelling implementation. -->

Citation:
Brathwaite, Timothy. The Holy Trinity: Blending Statistics, Machine Learning and
Discrete Choice, with Applications to Strategic Bicycle Planning.
University of California, Berkeley, 2018.

---

## How did my dissertation contribute? (Statistics)

- pot/cauldron = low percentage of bicyclists
  (i.e. class imbalance ~ undesired modeling outcomes)
- spice = asymmetric link functions
  (i.e. allow for generative processes with differential rates of
  adoption and abandonment to 'explain' / model class imbalance)
- spoon = multinomial implementation
  (because typical choice modelling contexts have more than 2 choices)

<!-- I'm imagining three images with caption (use wording above).
   pot = arrow-down, percentage sign, bicycle image
   spice = two links where one is or is made much longer than the other
   spoon = N > 2
 -->

Citation:
Brathwaite, Timothy, and Joan L. Walker.
"Asymmetric, closed-form, finite-parameter models of multinomial choice."
Journal of choice modelling 29 (2018): 78-112.

---

## How did my dissertation contribute? (Machine Learning)

- pot/cauldron = (reported) non-compensatory bicycle choice behavior
- spice = decision trees
- spoon = bayesian model trees
  to capture a notion of uncertainty in estimated non-compensatory behavior

<!-- I'm imagining three images with caption (use wording above).
   pot = drake [meme](https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.ujpgnl14FmLIiCaomE7WgQAAAA%26pid%3DApi&f=1) where no = car and yes = bicycle
   spice = a decision tree image/icon such as https://clipground.com/images/decision-tree-clipart-4.png
   spoon = perhaps the words Bayes overlaid on an image of a 'model tree' such as http://preview.turbosquid.com/Preview/2014/05/21__00_30_15/tree_stvol8.jpgd2c63fd7-89b4-462e-8426-a15e639ad48fOriginal.jpg
 -->

Citation:
Brathwaite, Timothy, Akshay Vij, and Joan L. Walker. "Machine learning meets
microeconomics: The case of decision trees and discrete choice."
arXiv preprint arXiv:1711.04826 (2017).

---

## How did my dissertation contribute? (Causal Inference)

- pot/cauldron = (bicycle-infrastructure) intervention goals
  we want causal predictions not just associations
- spice = causal graphical models as perspective for performing model-based
  causal inference in a clear and systematic manner.
- spoon = latent variable modelling (and suggesting of)

<!-- I'm imagining three images with caption (use wording above).
   pot = aerial street design image
   spice = small causal graph image (see https://cicero.xyz/v3/remark/0.14.0/github.com/timothyb0912/presentations/stable/visuals/how-not-to-integrate-ml-and-dcm/2021-03-19_how-not-to-integrate-ml-and-dcm.md/#38)
   spoon = "ICLV connections" with ICLV in a cool font?
 -->

Citation:
Brathwaite, Timothy, and Joan L. Walker. "Causal inference in travel demand
modeling (and the lack thereof)." Journal of choice modelling 26 (2018): 1-18.

---

## What follow-up research has occurred? (Statistics)

After demonstrating the research pattern in my dissertation,
it's natural to wonder what follow up research has occurred.
In statistics:

Applications
- Route Choice
	Associate Professor Dawei Li et al. (in preparation), Southeast University
- Auto vs Rail vs Air Travel Mode Choice [Latent class + asymmetric models]
  Tinessa, Fiore, et al.
  "Evaluating the choice behaviour of high-speed rail passengers in Italy:
  a latent class structure with alternative kernel models to the
  Multinomial Logit." 2020 IEEE International Conference on Environment and
  Electrical Engineering and 2020 IEEE Industrial and Commercial Power Systems
  Europe (EEEIC/I&CPS Europe). IEEE, 2020.

---

## What follow-up research has occurred? (Machine Learning)

<!-- Not much occurred with trees and their econometric interpretations, but there's been a successful
  Rise of the (Neural) Nets: Choice modeller's working with neural networks have
  followed the adaptation strategy described earlier and are producing novel
  combinations at a tremendous rate.
  E.g. the work of Shenhao Wang we'll hear from in the next IATBR seminar,
  and work not published yet such as Yafei Han's work from MIT.-->

Rise of the (Neural) Nets:
- Wong, Melvin, and Bilal Farooq.
  "ResLogit: A residual neural network logit model for data-driven
  choice modelling." Transportation Research Part C: Emerging Technologies 126
  (2021): 103050.
- Wang, Shenhao, Qingyi Wang, and Jinhua Zhao.
  "Deep neural networks for choice analysis:
  Extracting complete economic information for interpretation."
  Transportation Research Part C: Emerging Technologies 118 (2020): 102701.
- Sifringer, Brian, Virginie Lurkin, and Alexandre Alahi.
  "Enhancing discrete choice models with representation learning."
  Transportation Research Part B: Methodological 140 (2020): 236-261.

---

## What follow-up research has occurred? (Causal Inference)

Oops! Not much to see here.

Research still baking.

<!-- The reality is that there has not been any known follow-ups on my causal
inference work yet. There is some in progress work by my colleagues and I at
UC Berkeley. However, this is the most recent and most difficult set of problems
I considered in my dissertation, and I'm not surprising that few successful applications and follow-ups have
been completed so far.-->

---

## How have the topics aged? (Overall)

- Relevance/usefulness of ideas remain
  as shown by
  - application results,
  - research results following the same process, and
  - class imbalance commonality.
- Choice modelling opportunities remain
  (as highlighted in future work sections of each paper)--since industrially, there is much to be gained now from:
  - accurate predictive models
  - credible causal models

---

## How have the topics aged? (The Bad)

When considering the particulars of what has not gone well
with the aging of my dissertation's efforts,
implementation difficulties have hindered adoption of:

- Usage of custom asymmetric choice models.
- Trees with econometric interpretations and concerns.
- credible causal graphical models,
  especially with latent variables.

---

## How have the topics aged? (The Good)

The good is that ongoing work related to my dissertation includes
- Accelerating neural network research on the index function of choice models,
  as a complement to my asymmetric link function work,
- Foundational / enabling work in
  machine learning, statistics, and causal inference
  - with trees
    (neural network adaptations enabling
    continuous-optimization and easier uncertainty-quantification)
  - with causal graphical models
    (continuous-optimization for discovery + theory)

This is all super exciting and paves the way for future
connections to and research from choice modellers.

---

## How to make sense of it all? (original)

> Of course, with all this research going on,
> we need a way to understand everything.

> Originally, during my dissertation
> I'd suggest learning all fields then translating.

> But truthfully, after working in industry,
> it's clear that's too slow and unreasonable.
> Ain't nobody got time for that!

- Learn + Translate all three fields? -> No.

<!-- I’m imagining an image of a dictionary,
juxtaposed with the “ain’t nobody got time for that” slogan or meme/image -->

---

## How to make sense of it all? (modern) [2min]

So now, the modern approach I suggest to understand
choice modelling work from all quantitative disciplines is to
perform
- Simulation-based model checking
  (competing analogies w/ most-preferred first, though both are accurate):
  - Overall,
    listen to a constant soloist against varying choirs.
    Here, reality is the constant soloist.
    Each model supplies its own chorus of simulated realities.
    To assess and understand differences between models,
    we play each model one by one, and
    we assess differences in how each chorus harmonizes with reality's soloist.
  <!-- - Look at a common picture under varying lights.
    View reality before a backdrop of model simulations from any field's models. -->

Citation:
Brathwaite, Timothy. "Check yourself before you wreck yourself:
Assessing discrete choice models through predictive simulations."
arXiv preprint arXiv:1806.02307 (2018).
https://github.com/timothyb0912/check-yourself

---

## What is simulation-based model checking?

See https://cicero.xyz/v3/remark/0.14.0/github.com/timothyb0912/presentations/stable/visuals/how-not-to-integrate-ml-and-dcm/2021-03-19_how-not-to-integrate-ml-and-dcm.md/#23

Here's what I mean, technically,
by simulation-based model checking.
The overall process is that we have explanatory variables X,
people's choice-making process, and the outcomes or choices Y.
We build a model to mimic individuals' choice processes,
and we can extract simulated outcomes or choices, Y_sim.
We then ask how similar Y_sim is to Y.

---

## How to check your models (step 1--frequentist)

See 2020-04-09_Model Checking slide 15.

Let's step through this one at a time.
We have a model.
All models have parameters.
We estimate the model somehow,
and we need to simulate from a distribution of the model parameters.

As a frequentist, you might have a maximum likelihood estimate from your model,
and so you might simulate from the parameters' asymptotic sampling distribution,
so a normal distribution, centered at the maximum likelihood estimate
and using the negative inverse of the hessian as the covariance matrix.

---

## How to check your models (step 1--computational)

See 2020-04-09_Model Checking slide 16.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 1--bayesian)

See 2020-04-09_Model Checking slide 17.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 2)

See 2020-04-09_Model Checking slide 18.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 3)

See 2020-04-09_Model Checking slide 19.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 4)

See 2020-04-09_Model Checking slide 20.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 5)

See 2020-04-09_Model Checking slide 21.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## How to check your models (step 6)

See 2020-04-09_Model Checking slide 22.

The hope is to copy the slide contents exactly,
and the slide sub-headings somewhat (e.g. leave out “in-detail”).

---

## Example: Checking SwissMetro

Dataset & choice situation description

CITATION: Link to code/repository/notebooks.

---

## SwissMetro backgrounds (Example 1)

Code-generated image to be talked about.

---

## SwissMetro backgrounds (Example 2)

Code-generated image to be talked about.

---

## SwissMetro backgrounds (Example 3)

Code-generated image to be talked about.

---

## Recap and future directions

- hard problems + fiscal opportunity is driving stats + ML + choice modelling
- lets welcome stats and machine learning via creations of
  pot-of-soup + spice + spoon.
- use model-checking to understand the modeling creations that we cook up.

---
