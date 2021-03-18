<!-- # Integrating Machine Learning with Discrete Choice

## Constraints

- 35 guaranteed minutes for the talk (60 - 15 - 10).
  - 15 minutes for questions at the end of the talk
  - [potentially] 10 minute delay at the beginning of the talk as people get settled.


## Idea Outline
- Gain the audience's attention:
  - Maybe start with a picture / image that shows what we want:
  logistic regression (math/stats/computation) -> conditional logit (accepted computational tool to operationalize econometric theory) -> eco-system of models developed in response (extensions of the tool based on economic theory).
  - Connect to my paper by saying that was an attempt at pushing this idea forward.
  I tried to make it happen by doing this with decision trees and non-compensatory decision making.
  - However, it hasn't taken off!
  No one is using decision trees in discrete choice papers to represent non-compensatory decision making in a general manner.
  - Perhaps there are factors holding the community back from embracing these this research direction for integrating ML with discrete choice?
  - Lesson? Invert the problem? Instead of asking how to increase integration of ML in discrete choice, ask what guarantee the exclusion of ML?
    - Answer: If it didn't work.
    - https://www.anup.io/2020/07/20/invert-always-invert/
    - https://fs.blog/2014/06/avoiding-stupidity/
  - Focus on machine learning fails.
  2 or 3 is probably all that's needed.
  Show examples from "Underspecification Presents Challenges for Credibility in Modern Machine Learning."
  Show the issues:
    - (Silent) Training Errors:
    ML models may not train correctly, even though the training process exits without error.
    [Training Diagnostics / Fake-Data simulation needed]
      - Linear probes paper from Yoshua Bengio as an example.
      - TRB neural network as an example.
    - (Silent) Modeling Errors:
    ML models may perform well one's training criterion, but nevertheless fail to accurately represent reality.
    [Posterior Predictive Check needed]
      - PPC examples from Machine Learning meets Micro-economics project.
    - (Silent) Counterfactual Errors
    ML models may do a great job of representing one's training set well, but nonetheless extrapolate from that training set in highly undesirable ways.
    [Prior Needed]
      - Examples from "Underspecification Presents Challenges for Credibility in Modern Machine Learning."
      - Examples from "Conditional Visualization for Statistical Models: An Introduction to the condvis Package in R" (see Figure 13)
      Being far from the training data is a bigger and bigger problem in high-dimensional spaces, even just for counterfactual prediction.
      - Examples from "Visualizing statistical models: Removing the blindfold"
- Clearly state the talk's motivating need / problem
- State how I have solved / ameliorated these issues
- Give the audience one thing to remember
- Show an outline
- Proceed through the 3 - 5 main points:
  - How to integrate ML with DCM: Map ML to DCM concepts
  - How to integrate ML with DCM: use much caution.
    - Software testing
    - Inference testing
    (Including prior predictive checks / fake data simulation)
    - Model testing
  - How to integrate ML with DCM:
  combine with causal inference to get the big picture right.


## Slide Outline

- [0] Title slide
- [1] What is it that we actually want to do?
- [2] What is it that we actually want to do? (Part 2)
- [3] What did I do in the past?
- [4] What's the problem?
- [5] What's the remedy?
- [6] What's the outline (of the talk)?
- [7 - 9] Training errors
  - [7] Issue definition
  - [8] Diagnostic tools
    - Visualization of gradient over time for each parameter
    - linear probes for neural networks
    - prior predictive checks (helps diagnose if your regularization is harmful)
  - [9] Fake data simulation for verification of successful training ability against whatever conditions you simulate for.
- [10 - 12] Overfitting errors
  - [10] Issue definition
  - [11] Cross-validation / resampling as general solution
  - [12] Considerations regarding structured datasets.
- [13 - 27] Underfitting errors
  - [13] Issue definition
  - [14] Issue elaboration
  Likelihood, prior, and posterior approximation family.
  - [15] Remedies
  Alter the likelihood, prior, or posterior approximation family.
  - [16 - 21] PPC -> likelihood editing
    - [16] main idea--simulate
    - [17] main idea--compare
    - [18] modify / example-likelihood-expansion-1:
    check-yourself repo example using knots for SUV price. See UCLA 2019 talk.
    Explain setting one slide.
    - [19] modify / example-likelihood-expansion-1:
    check-yourself repo example using knots for SUV price. See UCLA 2019 talk.
    Explain change the next slide.
    - [20] modify / example-likelihood-expansion-2:
    checking-zoo repo example for ASCs with stated preference analysis.
    Explain setting one slide.
    - [21] modify / example-likelihood-expansion-2:
    checking-zoo repo example for ASCs with stated preference analysis.
    Explain change the next slide.
  - [22 - 27] Counterfactual Prediction -> prior editing
    - [22] main idea--what do you already know the model should the model do?
    I.e. target elicitation / location-parameter-elicitation.
    Human-based (e.g. counterfactual regularization)
    Algorithm-based (e.g. knowledge distillation)
    - [23] counterfactual regularization
    (imagine monotonicity or elasticity magnitude regularization)
    Explain setting one slide.
    - [24] counterfactual regularization
    (imagine monotonicity or elasticity magnitude regularization)
    Explain technical form of regularization one slide.
    - [25] knowledge distillation
    (imagine mixed logit, regularized by a random forest's predictions...)
    Explain setting one slide.
    - [26] knowledge distillation
    (imagine mixed logit, regularized by a random forest's predictions...)
    Explain technical form of regularization one slide.
    Could be predictions as in traditional knowledge distillation.
    Could be the kernel as in random forest kernels.
    - [27] main idea--how should you penalize deviations from the target?
    Penalty design / distribution-elicitation
    e.g. gumbel vs normal
- [28 - 35] Causal errors
  - [28] Issue specification
  See discussion [here](https://github.com/timothyb0912/ci_for_prediction/blob/master/article/modeling_unmeasured_confounding.pdf).
  - [29 - 31] Issue diagnosis
  - [32 - 34] Solution methods
  Get better data, model the unobserved confounders, or bound the effects on one's inferences.
  - [35] Helpful links to resources
- [36] Contact slide

## Slides -->

# When Machines Don't Learn
## Common reasons for failed integrations between Machine Learning and Discrete Choice

Timothy Brathwaite, PhD  
March, 2021

---

## Follow along

https://bit.ly/2QhVoJx

---

## Thank you

<center>
<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/ml-dcm-integration-fail-thank-you-images.png" style="height: 400px; border:none;"></img>
</center>

---

## What is it that we actually want to do?

Overall, we want to go

.left-column[
From killer robot <br> <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/robot-golem.png" style="height: 200px; border:none;"></img>
]

.right-column[
To pet robot <br>
<img src="https://static.thenounproject.com/png/1450088-200.png" style="height: 200px; border:none;"></img>
]

---

## What is it that we actually want to do?

We want to map mathematical and algorithmic models  
to a neat econometric story of human decision making.

| From | To |
| --- | --- |
| <center>Neural Net<br>Computational Graph <br></center> <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/neural-net-computational-graph.png" style="height: 200px; border:none;"></img> | <center>Random Utility<br>Causal Graph <br></center> <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/random-utility-graph.png" style="height: 200px; border:none;"></img> |

---

## What is it that we actually want to do?

In detail,<br>
we want to map machine learning (ML) models<br>
to disaggregate causal systems,<br>
with causal mechanisms that explain the outcomes.


| From | To |
| --- | --- |
| <center>Logistic Regression</center><br> <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/logistic-regression-diagram.png" style="height: 200px; border:none;"></img> | <center>Conditional Logit</center><br> <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/conditional-logit-diagram.png" style="height: 200px; border:none;"></img>|

---

## What did I do in the past?

I [mapped](https://arxiv.org/pdf/1711.04826.pdf) decision trees<br>
to non-compensatory / rule-based decision making<br>
(i.e., disjunctions-of-conjunctions).

| From | To |
| --- | --- |
| <center>cute trees</center> | <center>partitioned spaces</center>|
|<img src="https://static.thenounproject.com/png/3136120-200.png" style="height: 200px; border: none;"></img>| <img src="https://upload.wikimedia.org/wikipedia/commons/5/50/CentroidalVoronoiTessellation1.png" style="height: 200px; border:none;"></img>|


---

## What's the problem?

Choice modellers are not using ML models<br>
(e.g. tree-based models) with econometric interpretation.

Why not?

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/prediction-and-behavioral-analysis-of-travel-mode-choice.png" style="height: 400px; border: none;"></img></center>

---

## What's the remedy?

Focus on why we fail, and avoid the pitfalls.

<center><img src="https://149366099.v2.pressablecdn.com/wp-content/uploads/2014/06/Avoiding-Stupidity.png" style="height: 300px; border:none;"></img></center>

---

## What's the roadmap?

What pitfalls will we discuss and commit to avoiding?

1. Training errors  
2. Overfitting  
3. Underfitting
4. Neglecting causal inference

---

## Training errors: definition

When model training doesn't work out how you expected.

<center><img src="https://media1.tenor.com/images/b2c1c2c3960cc95b0e084eaecef9d2cc/tenor.gif" style="height: 200px;"></img></center>

<!-- Include links, preferably non-paywalled for each of these -->
- [bad initial values](https://arxiv.org/abs/1511.06422)
- [miniscule-magnitude](http://www.bioinf.jku.at/publications/older/2304.pdf) parameter updates
- [exploding-magnitude](http://proceedings.mlr.press/v28/pascanu13.pdf) parameter updates

---

## Training errors: diagnostic tools

- Prior predictive checks
(i.e., is your regularization harmful?)
- Linear probes for neural networks
- Visualization of gradient over time for each parameter

<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/training-error-diagnostic-tools.png" style="height: 400px; border: none;"></img>

---

## Training errors: remedial tools

Fake data simulation and training for training error diagnosis.  
Can you make your fake data training fail the way real training fails?

<!-- | From | To |
| --- | --- |
<img src="https://cdn.pixabay.com/photo/2010/12/06/22/soldiers-1002_1280.jpg" style="height: 200px; border: none;"></img>| <img src="https://static.thenounproject.com/png/1454957-200.png" style="height: 200px; border: none;"></img>|  
| Real soldiers  | Toy soldiers  | -->

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/fake-data-training-error-diagnosis.png" style="height: 400px; border: none;"></img></center>

---

## Overfitting: definition

Our in-sample model performance is much better than  
our out-of-sample model performance.

<center><img src="https://static.thenounproject.com/png/837530-200.png" style="height: 200px; border: none;"></img></center>

---

## Overfitting: diagnostic tools

Cross-validation / resampling are a general solution for identifying overfitting.

<img src="https://upload.wikimedia.org/wikipedia/commons/c/c7/LOOCV.gif" style="height: 200px; border: none;"></img>

---

## Overfitting: structural considerations

Hierarchical or otherwise non-exchangeable data (e.g. time series)  
require special care during resampling.

<center><img src="https://static.thenounproject.com/png/3601295-200.png" style="height: 200px; border: none;"></img> <img src="https://static.thenounproject.com/png/995090-200.png" style="height: 200px; border: none;"></img></center>

---

## Underfitting: definition

When some part(s) of one's model have not been adequately specialized to reflect the data generating process of one's data.

---

## Underfitting: elaboration

Likelihood, prior, and/or posterior approximation family<br>
may be underfit, in any combination.

<!-- Image-description: Inverted triangle (point down) where the vertices are the words "likelihood" (top left), "prior" (top right), "posterior approximation" (bottom). The words will hopefully be in a word cloud with font that looks handwritten. [Example](https://commoncog.com/blog/content/images/2018/12/Paper.Commonplace.30--1--1.png) -->

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/underfitting-contributors.png" style="height: 300px; border: none;"></img></center>

---

## Underfitting: remediation

Alter the likelihood, prior, or posterior approximation family.

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/altering-underfitting-contributors.png" style="height: 300px; border: none;"></img></center>

---

## Underfitting: check the likelihood

Simulate
  - from one's maximum-likelihood solution
  - from posterior
<!--
Image-description: Simulation image from left side of [slide 10](https://docs.google.com/presentation/d/1NWLZ5rkqV0cUSQK75bFWxEsyoUEYEBvuDu1ImUkbl7k/edit#slide=id.g56f8ca2c38_0_252) -->

<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/simulate-from-model-draw-from-nature.png" style="height: 300px; border: none;"></img>

---

## Underfitting: check the likelihood (cont'd)

<!-- main idea--compare -->

<!-- Image-description: Full image from [slide 10](https://docs.google.com/presentation/d/1NWLZ5rkqV0cUSQK75bFWxEsyoUEYEBvuDu1ImUkbl7k/edit#slide=id.g56f8ca2c38_0_252) -->

<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/simulate-and-compare.png" style="height: 250px; border: none;"></img>

---

## Underfitting: edit the likelihood (ex. 1A)

<!-- main idea--modify

example-likelihood-expansion-1:  
check-yourself repo example using knots for SUV price.  
See UCLA 2019 talk.  
Explain **setting** one slide.

Image-description:  
Display paper citation & talk through main relevant points:  
stated preferences for automobile purchases,  
emphasizing the choice of electric vehicles. -->

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/forecasting-new-product-penetration.png" style="height: 300px; border: none;"></img></center>

<!-- Be sure to include complex functional forms -->

---

## Underfitting: edit the likelihood (ex. 1B)

<!-- main idea--modify -->

<!-- example-likelihood-expansion-1:  
check-yourself repo example using knots for SUV price.  
See UCLA 2019 talk.  
Explain **change** one slide.


Image-description: Images from [slide 29](https://docs.google.com/presentation/d/1ycJ9hqwI35hW4Hp_uAtnoK8lEnDLUcDT5AtSR-i1Rws/edit#slide=id.g56f8ca2c38_0_548) -->

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/check-yourself-suv-knot-example.png" style="height: 250px; border: none;"></img></center>

The relative price variable was re-specified as piecewise linear with a knot at 3 and interacted with body type and with fuel type.
Code: [original](https://nbviewer.jupyter.org/github/timothyb0912/check-yourself/blob/develop/notebooks/_06-tb-Make_introductory_plots.ipynb) model; [new](https://nbviewer.jupyter.org/github/timothyb0912/check-yourself/blob/develop/notebooks/_08-tb-Make-Plots-of-Interaction-MNL.ipynb) model

---

## Underfitting: edit the likelihood (ex. 2A)

<!-- main idea--modify

example-likelihood-expansion-2:  
checking-zoo repo example for ASCs with stated preference analysis.  
Explain **setting** one slide.

Image-description: Display paper citation & talk through main relevant points:  
DeVries 2015 (see checking zoo) stated preferences for blood pressure medication -->

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/role-of-age-in-blood-pressure-drug-prefeference.png" style="height: 350px; border: none;"></img></center>

---

## Underfitting: edit the likelihood (ex. 2B)

Sometimes, the needed likelihood edit is adding alternative specific constants.


| [Missing ASCs](https://nbviewer.jupyter.org/github/timothyb0912/checking-zoo/blob/update-devries/notebooks/deVries_2015/_01-tb-replication-and-posterior-predictive-check.ipynb) <br> (Original) | [All ASCs](https://nbviewer.jupyter.org/github/timothyb0912/checking-zoo/blob/update-devries/notebooks/deVries_2015/_03-tb-add-ASCs-and-posterior-predictive-check.ipynb) |
| ---| ---|
| <center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/2015_deVries_no-ASC.png" style="height: 300px; border: none;"></img></center> | <center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/2015_deVries_with-ASCs.png" style="height: 300px; border: none;"></img> </center> |
| <center>Drug<br>vs<br>No-Drug</center>  | <center>Drug A<br>vs<br>Drug B<br>vs<br>No-Drug</center> |

---

## Underfitting: counterfactual prediction -> prior editing

What do you know the model should the model do for given inputs?<br>

<!-- - Human-based behavior specification = counterfactual regularization
- Algorithm-based behavior specification = knowledge distillation -->

|Human teacher | Machine teacher|
| ---| ---|
| <img src="https://static.thenounproject.com/png/642111-200.png" style="height: 200px; border: none;"></img> | <img src="https://static.thenounproject.com/png/3385046-200.png" style="height: 200px; border: none;"></img> |
| <center>counterfactual<br>regularization</center>  | <center>knowledge<br>distillation</center>  |



---

## Underfitting: counterfactual regularization as prior editing

E.g., regularize for monotonicity or magnitude-of-elasticity.   
Ideally, we want ML predictive ability + behavioral realism.  
(I.e., we want our cake and we want to eat it too.)

<center><img src="https://images.unsplash.com/photo-1516054575922-f0b8eeadec1a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" style="height: 200px, border: none;"></img></center>

---

## Underfitting: counterfactual regularization as prior editing


When regularizing for expected properties (e.g. monotonicity),  
use a support that includes your counterfactual scenarios.

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/learning-monotonic-neural-networks.png" height="200" border="none"></img></center>

<font size=1 color="grey">
<center>
Liu, Xingchao, Xing Han, Na Zhang, and Qiang Liu. "Certified Monotonic Neural Networks." arXiv preprint arXiv:2011.10219 (2020).
</center>
</font>

<!-- LaTexIt
\DeclareMathOperator*{\argmin}{argmin}
\hat{\beta} &= \argmin_{\beta} \left \lbrace - \textrm{LogLikelihood} \left( Y; X, \beta \right) +
  \textrm{Reg} \left( \lambda, \beta, Y, X \right) \right \rbrace \\
\textrm{where } \textrm{Reg} \left( \cdot \right) &= \lambda \sum _{i=1} ^{N} \left[ P \left( Y \mid X, \beta \right) - P_{\textrm{Random\_Forest} \left( Y \mid X \right)} \right]^2 -->

See also [causal regularization](https://arxiv.org/pdf/1906.12179.pdf)
and [detecting non-causal artifacts](http://proceedings.mlr.press/v80/janzing18a/janzing18a.pdf)  
for further variations on the theme of counterfactual regularization.

---

## Underfitting: knowledge distillation as prior editing

Imagine mixed logit,<br>
wandering through and<br>
regularized by a random forest's predictions.


<!-- Explain **setting** one slide.
Image-description: mixed logit wandering in a forest.
Maybe headless person with "mixed logit as words?"
Maybe "mixed logit on a shirt?"
See perhaps https://www.blackillustrations.com/illustrations/the-great-outdoors-illustration-pack -->
<center>
<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/mixed-logit-sketch_Eunice-Poon.png" style="height: 300px; border: none"></img>
<font size=1 color="grey">
Image courtesy of Eunice Poon
</font>
</center>

---

## Underfitting: knowledge distillation as prior editing

<!-- Imagine mixed logit, regularized by a random forest's predictions.
Explain **technical form** of regularization in one slide.
Could be predictions as in traditional knowledge distillation.
Could be the kernel as in random forest kernels. -->
As an example, consider the following<br><br>

<!-- Image-description: Show image from [here](https://docs.google.com/presentation/d/1ycJ9hqwI35hW4Hp_uAtnoK8lEnDLUcDT5AtSR-i1Rws/edit#slide=id.g593527d002_0_0), replacing P_empirical with P_forest. Regenerate the equations with latexit. -->
<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/random-forest-regularization.png" style="height: 100px; border: none;"></img>

---

## Underfitting: prior design considerations

How should you penalize deviations from the target?  
Note penalty design = distribution-elicitation.
<br><br>
<!-- Imagine penalizing according to a gumbel vs a normal distribution.
Image-description: two-panel image w/ left-side showing normal distribution + equation and right-side showing gumbel distribution + equation. -->

| Gumbel | Normal |
| --- | --- |
| <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Gumbel-Density.svg/1920px-Gumbel-Density.svg.png" style="height: 200px; border: none;"></img> | <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Normal_Distribution_PDF.svg/440px-Normal_Distribution_PDF.svg.png" style="height: 200px; border: none;"></img> |
|<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/gumbel-density.png" style="height: 150px; border: none;"></img>   |  <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/normal-density.png" style="height: 150px; border: none;"></img>  |


---

## Causal errors: the final frontier

When modelling,<br>
ignoring one's data generating process<br>
**potentially** causes poor predictions.<br><br>
When unobserved confounding<br>
(see diagram below) is present,<br>
one's usual likelihood [is wrong](https://github.com/timothyb0912/ci_for_prediction/blob/master/article/modeling_unmeasured_confounding.pdf).

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/discriminative-confounding.png" style="height: 200px; border: none;"></img></center>

---

## Causal errors: diagnosis

**Draw and test causal graphs for the system you are modelling.**

Imagine a mode choice model with the following, hypothesized causal graph.

<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/drive_alone_utility_example.png" style="height: 200px; border: none;"></img>

This graph implies travel time is independent of travel cost,<br>
given travel distance.


---

## Causal errors: diagnosis

Failed independence tests may come from unobserved confounders.

E.g. San Francisco Bay crossings likely confound travel cost and travel time, even after controlling for travel distance.

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/causal_graph_permutation_testing.png" style="height: 300px; border: none;"></img></center>


<font color="grey" size=1> Brathwaite, Timothy, and Obeid, Hassan, and Bouzaghrane, Mohamed Amine (2021). "Causal Graphs in Choice Modelling: The What, Why, and How." In Preparation. <a href="https://github.com/hassan-obeid/tr_b_causal_2020/blob/master/article/main.pdf">https://github.com/hassan-obeid/tr_b_causal_2020/blob/master/article/main.pdf</a>.
</font>
---

## Causal errors: diagnosis

Collect and analyze additional variables.

Identified relationships<br>
between either of the following variable pairs<br>
indicate the presence of unobserved confounding.

| negative control outcome (N) <br>+ real exposure (A) | <font color="white">dd</font>negative control exposure (B) <br>+ real outcome (Y) |
| --- | --- |
| <img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/negative_control_outcome.png" style="height: 200px; border: none;"></img> | <font color="white">dd</font><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/negative_control_exposure.png" style="height: 200px; border: none;"></img> |


See [here](http://www.ph.ucla.edu/epi/faculty/greenland/Epi204/Negative_Controls.Epidemiol2010.pdf) and [here](https://arxiv.org/pdf/2009.05641.pdf) for more information.


---

## Causal errors: resolution (I)

Get more data: either on the confounder (U) or on mechanisms (M).

Either is sufficient to construct an accurate likelihood.

<center><img src="http://marcfbellemare.com/wordpress/wp-content/uploads/2019/01/FDC.png" style="height: 200px; border: none;"></img></center>


---

## Causal errors: resolution (II)

Model the unobserved confounders

| From | To |
| --- | --- |
| <img src="https://images.unsplash.com/photo-1591824438708-ce405f36ba3d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" style="height: 50px, border: none;"></img> | <img src="https://images.unsplash.com/photo-1600693919791-7829a39b602e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=300&q=80" style="height: 50The px, border: none;"></img> |
|Real confounders | modeled confounders  |



---

## Causal errors: resolution (III)

Bound the effects on one's inferences

<center><img src="https://static.thenounproject.com/png/37909-200.png" style="height: 100px, border: none;"></img></center>

---

## Recap

<center><img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/discrete-choice-ml-integration-error-recap.png" style="height: 300px; border: none;"></img></center>

Any of these issues can tank your efforts to integrate ML and Discrete Choice.  
For a chance at successful integration "simply" avoid all of them. 🙂


---

## Fin

Thanks for listening!

<center>
<img src="https://raw.githubusercontent.com/timothyb0912/presentations/stable/visuals/assets/good-luck-cat_Eunice-Poon.png" style="height: 200px; border: none;"></img>
</center>

<font size=1 color="grey">
Image courtesy of Eunice Poon
</font>

Got questions? Open an issue [here](https://github.com/timothyb0912/presentations/issues/new/choose)
