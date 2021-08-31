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

Looking back on my dissertation,
the first reflective question that comes to mind is
what has been motivating the mix of
statistics, machine learning and discrete choice?

I see at least 3 answers.

One motivator is interesting industrial choice problems, e.g. the choice of:
  - words, e.g. content-generation/support-chatbot, huggingface.co
  - location, e.g. yelp
  - clothing, e.g. stitchfix

These problems attract researchers from fields considered more "boring."

<!-- Perhaps three sets of image/icon pairs?
Something generic for word/location/clothing + corporate icons next to it? -->

---

## What motivates the disciplinary mix? (opportunities)

Beyond inherently interesting applications,
a second motivator is the lucrative business opportunities that are created
by accurately modelling choices.
The prospect of money brings all quantitative disciplines to join the party.

<!-- All quantitative disciplines now interested in modeling choices -->
<!-- maybe an image of money partying? -->

---

## What motivates the disciplinary mix? (questions)

Lastly,
there are immediate and interesting methodological questions
that draw researchers to this intersection as well.

For instance:
- how to adapt 'non-choice-specific' quantitative methods to choice modelling,
  like using a coffee-maker to cook one's hot-dogs,
- further, how to understand, appreciate, and assess unfamiliar adaptations?
  <!-- how to promote and permit diversity, that is, -->

<!-- Maybe two images. One for adaptation / overcoming functional-fixedness.
   Another to represent diversity. -->

---

## How did my dissertation contribute? (Overall)

Alright,
now knowing some of the fundamental questions driving the fields' mixing,
how did my dissertation contribute?

Overall, my dissertation modeled the following pattern and adaptation strategy
(yes, all-puns intended):
- starting with a
  - substantive choice modelling problem (i.e. a pot) and
  - unsolved, technical problem with current choice models
- interesting quantitative ideas from outside of choice modelling
  to spice up the work
- customizing the
  - **microeconomic interpretation** / generation / recreation of the methods
  - **implementation** of general idea
    to ameliorate the technical choice modelling problem

The end result was
"The Holy Trinity: Blending Statistics, Machine Learning, and Discrete Choice,
with Applications to Strategic Bicycle Planning" (2018).

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

Looking at specific contributions, we can start with statistics.
Here,

- pot/cauldron = low percentage of bicyclists
  (i.e. class imbalance ~ undesired modeling outcomes)
- spice = asymmetric link functions
  (i.e. allow for generative processes with differential rates of
  adoption and abandonment to 'explain' / model class imbalance)
- spoon = multinomial implementation
  (because typical choice modelling contexts have more than 2 choices,
  but the asymmetric models in statistics only allowed for binary outcomes)

The outcome of this effort was the paper
"Asymmetric, closed-form, finite-parameter models of multinomial choice."
Journal of Choice Modelling, (2018).

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

Moving to machine learning, here:

- pot/cauldron = (reported) non-compensatory bicycle choice behavior
  vs traditionally compensatory choice models
- spice = decision trees
- spoon = bayesian model trees
  to capture a notion of uncertainty in estimated non-compensatory behavior
  and clear econometric interpretability

The outcome of this work is the pre-print,
"Machine learning meets microeconomics:
The case of decision trees and discrete choice." ArXiv, (2017).

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

Lastly, we come to causal inference.

Here,
- pot/cauldron = (bicycle-infrastructure) goals, where we want
  causal predictions not just associations as we will be intervening
- spice = causal graphical models as closest perspective
  for performing model-based causal inference in a clear and systematic manner.
- spoon = latent variable modelling (and suggesting of) to deal with
  unobserved confounding issues likely in econometric contexts

This work resulted in the paper "Causal inference in travel demand
modeling (and the lack thereof)." Journal of choice modelling (2018).

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
Regarding my statistical contributions, there've been a couple of applications:

Applications
- Route Choice [Covariate-dependent asymmetric models]
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

<!-- Turning to machine learning,
  we see that not much occurred with trees & their econometric interpretations.
  However, there's been a successful
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

<!-- Finally, we come to follow-ups to my causal inference work.
The reality is that there have not been any known follow-ups on this work yet.
There is some in progress work by my colleagues and I at UC Berkeley.
Given that causal inference issues are the most recent and most difficult
set of problems that I considered in my dissertation,
I'm not surprised that few successful applications and extensions have
been completed so far.-->

---

## How have the topics aged? (Overall)

As shown by the application results of asymmetric choice models,
and as shown by research results obtained following the general process
outlined earlier, the present usefulness of the ideas in my dissertation remain.

Looking ahead, the commonality of class imbalance problems,
and the profits to be gained from more accurate predictive and causal models,
are combining to ensure that the choice modelling opportunities that I described
in my dissertation will remain as important or moreso,
for some time into the future.

<!-- - Relevance/usefulness of ideas remain
  as shown by
  - application results,
  - research results following the same process, and
  - class imbalance commonality.
- Choice modelling opportunities remain
  (as highlighted in future work sections of each paper)--since industrially,
  there is much to be gained now from:
  - accurate predictive models
  - credible causal models -->

---

## How have the topics aged? (The Bad)

Now, we can also consider the particulars of what has not aged well
from my dissertation.

Across the board, implementation difficulties have hindered adoption of:

- **custom** asymmetric choice models.
- Trees with econometric interpretations and concerns.
- credible causal graphical models,
  especially with latent variables.

---

## How have the topics aged? (The Good)

And, for balance, here are some good fruit of my dissertation's aged tree:
- In statistics,
  a choice model is specified by a link function and an index function.
  From this perspective,
  the accelerating neural network research concerns the index function,
  and this complements my (asymmetric) link function work.
- In machine learning and causal inference,
  there is foundational / enabling continuous-optimization work
  - with trees
    (neural network adaptations and uncertainty-quantification)
  - with causal graphical models
    (causal discovery + theory)

This is all super exciting and paves the way for future
connections to and research from choice modellers.

---

## How to make sense of it all? (original)

> Of course, with all this research going on,
> we need a way to make sense of it all,
> to understand everything.

> Originally, during my dissertation
> I'd suggest learning all fields then translating.

> But truthfully, after working in industry,
> it's clear that this is too slow and unreasonable.
> Ain't nobody got time for that!

- Learn + Translate all three fields? -> No.

<!-- I’m imagining an image of a dictionary,
juxtaposed with the “ain’t nobody got time for that” slogan or meme/image -->

---

## How to make sense of it all? (modern) [2min]

Nowadays, the modern approach I suggest to understand
choice modelling work from all quantitative disciplines is to
perform
- Simulation-based model checking:
  Metaphorically,
  the idea is listen to a constant soloist against varying choirs.
  Here, reality is the constant soloist.
  Each model supplies its own chorus of simulated realities.
  To assess and understand differences between models,
  we play each model one by one, and
  we assess differences in how each chorus harmonizes with reality's soloist.
  <!-- - Look at a common picture under varying lights.
    View reality before a backdrop of model simulations from any field's models. -->

The specifics along with tons of examples and code and discussion,
is available in my paper
"Check yourself before you wreck yourself:
assessing discrete choice models through predictive simulations,"
available as a preprint on ArXiv and on GitHub at the links shown on the screen.

Citation:
Brathwaite, Timothy. "Check yourself before you wreck yourself:
Assessing discrete choice models through predictive simulations."
arXiv preprint arXiv:1806.02307 (2018).
https://github.com/timothyb0912/check-yourself

---

## What is simulation-based model checking?

<!-- See https://cicero.xyz/v3/remark/0.14.0/github.com/timothyb0912/presentations/stable/visuals/how-not-to-integrate-ml-and-dcm/2021-03-19_how-not-to-integrate-ml-and-dcm.md/#23 -->

Technically, here's what I mean by simulation-based model checking.
The overall process is that we have explanatory variables X,
people's choice-making process, and the outcomes or choices Y.
We build a model to mimic individuals' choice processes,
and we can extract simulated outcomes or choices, Y_sim.
We then ask how similar Y_sim is to Y.

---

## How to check your models (step 1--frequentist)

<!-- See 2020-04-09_Model Checking slide 15. -->

Let's go through this one step at a time.
We have a model.
All models have parameters.
We estimate the model somehow,
and we need to simulate from a distribution of the model parameters.

As a frequentist, you might have a maximum likelihood estimate from your model,
and so you might simulate from the parameters' asymptotic sampling distribution,
so a normal distribution, centered at the maximum likelihood estimate
and using the negative inverse of the hessian,
around the maximum likelihood estimate,
as the covariance matrix.

---

## How to check your models (step 1--computational)

<!-- See 2020-04-09_Model Checking slide 16. -->

Alternatively, if you doesn't want to make as many inferential assumptions,
you might bootstrap the estimation to provide samples from
the 'bootstrap' distribution as an approximate
sampling distribution or approximate posterior distribution.

---

## How to check your models (step 1--bayesian)

<!-- See 2020-04-09_Model Checking slide 17. -->

Of if you're using Bayesian estimation methods,
you can directly sample from your approximate posterior distribution.

Sampling technique aside, you collect a set of simulated model parameters.

---

## How to check your models (step 2)

<!-- See 2020-04-09_Model Checking slide 18. -->

Once you have a set of simulated model paramters,
we'll want to predict the choice probabilities
for the observations in one's dataset,
using each of the r simulated model parameters.

---

## How to check your models (step 3)

<!-- See 2020-04-09_Model Checking slide 19. -->

After all of the predictions have been made,
we'll now want to simulate a choice for each individual,
for each set of r predicted probabilities from the previous step.

---

## How to check your models (step 4)

<!-- See 2020-04-09_Model Checking slide 20. -->

Once we have the r sets of simulated choices,
we'll want to define a way of assessing differences betweeen each model's choir
of simulated choices and reality.

This assessment tool is known as the test statistic.

The test statistic can really be anything, scalar or vector valued,
but as a simple example,
imagine the share of observations choosing some fictitious Y = 1
when scalar X = 1.

---

## How to check your models (step 5)

<!-- See 2020-04-09_Model Checking slide 21. -->

Next, we use this test statistic by calculating it once using each of the r
vectors of simulated choices.
This provides a background against which to judge the observed choices.

---

## How to check your models (step 6)

<!-- See 2020-04-09_Model Checking slide 22. -->

Finally, we assess the correspondence of simulated to observed choices
by calculating the test statistic using the observed choices.
We can then visually and/or computationally compare T(X, Y_obs) to T(X, Y_sim).

---

## What's the intuition? (bridge + high-level)

Alright, I know that was a lot.
Usually, I'd show you an example now to illustrate all those steps.
Not today. I'll delay any examples for a moment.

Instead, I'll present the intuition behind this perspective.
- Model checking is analogous to mass spectrometry.
  In both cases we want to characterize the compounds we are working with.
- Models are analogous to molecules.
- Simulated choices given off by our model are analogous
  to ions given off by the molecules.

---

## What's the intuition (test-statistics)

Going further,

- test statistics are analogous to physical properties such as the ions' mass

---

## What's the intuition (spectral diagrams)

And

- Model checking plots are analogous to spectral diagrams
  In both cases we plot the measured properties of derivative objects
  (simulated choices or ions)

---

## What's the intuition (comparing spectral diagrams)

So while,

- comparing spectral diagrams is one way to see differences between molecules

---

## What's the intuition (comparing model checking plots)

- analogously, comparing model checking plots is one way to see
  (and understand) differences between models

---

## What's the intuition (using multiple test statistics)

Lastly,

- using multiple test statistics highlights multiple properties of our models,
  much like measuring a person's height, mass, and flexibility instead of one,
  thereby promoting greater understanding.

---

## Recap and future directions

- hard & interesting problems + fiscal opportunity
  are driving stats + ML + choice modelling
- lets welcome stats and machine learning via creations of
  pot-of-soup + spice + spoon.
- use model-checking to understand the modeling creations that we cook up.
  See my package checkrs for in-progress code to facilitate various types of
  model checking.

---
