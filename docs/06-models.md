# Models {#models}

In this part, we will introduce you to the tidyverse-way of modeling.
We will not cover the mechanics of individual statistical models but scratch the surface of a very intuitive way of coding up your models in R.
You might have come across the standard way of coding up a linear regression in R --- the function `lm()`.
Instead of using `lm()`, we introduce you to the *tidy* way of linear regressions in R through the `tidymodels` package.
This approach builds on the tidy approach to data visualization and data wrangling.

We will not go through all slides during the lecture --- the main focus lies on the *tidy* way of modeling and not the actual statistics behind it.
If you want to refresh your knowledge on linear regressions, feel free to read through the remaining slides we cannot cover in the course.

## Slides, application exercises, and references

::: slide-deck
**Unit 4 - Deck 2: Fitting and interpreting models**

::: slides
[Slides](https://lukas-jue.github.io/intro-tidyverse-2022/slides/u4-d02-fitting-interpreting-models/u4-d02-fitting-interpreting-models.html#1)
:::

::: reading
IMS :: [Chp 3 - Introduction to linear models](https://openintro-ims.netlify.app/intro-linear-models.html)
:::
:::

### Additional material not covered in class

We will not cover this unit due to time constraints.
If you want to refresh your knowledge of regressions, feel free to study the slides on your own.

::: slide-deck
**Unit 4 - Deck 1: The language of models**

::: slides
[Slides](https://lukas-jue.github.io/intro-tidyverse-2022/slides/u4-d01-language-of-models/u4-d01-language-of-models.html#1)
:::
:::

::: slide-deck
**Unit 4 - Deck 3: Modelling nonlinear relationships**

::: slides
[Slides](https://lukas-jue.github.io/intro-tidyverse-2022/slides/u4-d03-modeling-nonlinear-relationships/u4-d03-modeling-nonlinear-relationships.html#1)
:::
:::

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 4: Models with multiple predictors** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d04-model-multiple-predictors/u4-d04-model-multiple-predictors.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d04-model-multiple-predictors) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/mjkNabD4oi4) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- IMS :: [Sec 4.1 - Regression with multiple predictors](https://openintro-ims.netlify.app/multi-logistic-models.html#regression-multiple-predictors) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 5: More models with multiple predictors** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d05-more-model-multiple-predictors/u4-d05-more-model-multiple-predictors.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d05-more-model-multiple-predictors) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/nJAYRnLPb10) -->

<!-- ::: -->

<!-- ::: -->

<!-- ### Classification and model building -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 6: Logistic regression** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d06-logistic-reg/u4-d06-logistic-reg.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d06-logistic-reg) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/AidXFYSYfJg) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- IMS :: [Sec 4.5 - Logistic regression](https://openintro-ims.netlify.app/multi-logistic-models.html#logistic-regression) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 7: Prediction and overfitting** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d07-prediction-overfitting/u4-d07-prediction-overfitting.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d07-prediction-overfitting) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/Qd4lu_Lmwi0) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- tidymodels :: [Build a model](https://www.tidymodels.org/start/models/) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 8: Feature engineering** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d08-feature-engineering/u4-d08-feature-engineering.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d08-feature-engineering) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/wZt9ab4jBZ4) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- tidymodels :: [Preprocess your data with recipes](https://www.tidymodels.org/start/recipes/) -->

<!-- ::: -->

<!-- ::: -->

<!-- ### Model validation -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 9: Cross validation** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d09-cross-validation/u4-d09-cross-validation.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d09-cross-validation) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/L1KfIISmUT4) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- tidymodels :: [Evaluate your model with resampling](https://www.tidymodels.org/start/resampling/) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.application-exercise} -->

<!-- **The Office + Feature engineering, Pt. 1** -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/application-exercises/ae-09-feat-eng-cv/theoffice.Rmd) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/qsUYstdN4LQ) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.application-exercise} -->

<!-- **The Office + Cross validation, Pt. 2** -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/application-exercises/ae-09-feat-eng-cv/theoffice.Rmd) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/WstIr94Fdjc) -->

<!-- ::: -->

<!-- ::: -->

<!-- ### Uncertainty quantification -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 10: Quantifying uncertainty** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d10-quantify-uncertainty/u4-d10-quantify-uncertainty.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d10-quantify-uncertainty) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/LYpKrtZmQtI) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 11: Bootstrapping** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d11-bootstrap/u4-d11-bootstrap.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d11-bootstrap) -->

<!-- ::: -->

<!-- ::: {.video} -->

<!-- [Video](https://youtu.be/bdqpI3iVOso) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- IMS :: [Sec 5.2 - Bootstrap confidence intervals](https://openintro-ims.netlify.app/intro-stat-inference.html#boot-ci) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 12: Hypothesis testing** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d12-hypothesis-testing/u4-d12-hypothesis-testing.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d12-hypothesis-testing) -->

<!-- ::: -->

<!-- ::: {.reading} -->

<!-- [IMS :: Sec 5.1 - Randomization tests](https://openintro-ims.netlify.app/intro-stat-inference.html#inf-rand) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.slide-deck} -->

<!-- **Unit 4 - Deck 13: Inference overview** -->

<!-- ::: {.slides} -->

<!-- [Slides](https://rstudio-education.github.io/datascience-box/course-materials/slides/u4-d13-inference-overview/u4-d13-inference-overview.html#1) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/slides/u4-d13-inference-overview) -->

<!-- ::: -->

<!-- ::: -->

<!-- ## Labs -->

<!-- ::: {.lab} -->

<!-- **Lab 10: Grading the professor, Pt. 1** -->

<!-- Fitting and interpreting simple linear regression models -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/lab-instructions/lab-10/lab-10-slr-course-evals.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/lab-instructions/lab-10) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/lab/lab-10-slr-course-evals) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.lab} -->

<!-- **Lab 11: Grading the professor, Pt. 2** -->

<!-- Fitting and interpreting multiple linear regression models -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/lab-instructions/lab-11/lab-11-mlr-course-evals.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/lab-instructions/lab-11) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/lab/lab-11-mlr-course-evals) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.lab} -->

<!-- **Lab 12: Smoking while pregnant** -->

<!-- Constructing confidence intervals, conducting hypothesis tests, and interpreting results in context of the data -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/lab-instructions/lab-12/lab-12-inference-smoking.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/lab-instructions/lab-12) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/lab/lab-12-inference-smoking) -->

<!-- ::: -->

<!-- ::: -->

<!-- ## Homework assignments -->

<!-- ::: {.homework} -->

<!-- **HW 7: Bike rentals in DC** -->

<!-- Exploratory data analysis and fitting and interpreting models -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/hw-instructions/hw-07/hw-07-bike-rentals-dc.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/hw-instructions/hw-07) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/hw/hw-07-bike-rentals-dc) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.homework} -->

<!-- **HW 8: Exploring the GSS** -->

<!-- Fitting and interpreting models -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/hw-instructions/hw-08/hw-08-exploring-gss.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/hw-instructions/hw-08) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/hw/hw-08-exploring-gss) -->

<!-- ::: -->

<!-- ::: -->

<!-- ::: {.homework} -->

<!-- **HW 9: Modelling the GSS** -->

<!-- Model validation and inference -->

<!-- ::: {.instructions} -->

<!-- [Instructions](https://rstudio-education.github.io/datascience-box/course-materials/hw-instructions/hw-09/hw-09-modeling-gss.html) -->

<!-- ::: -->

<!-- ::: {.source} -->

<!-- [Source](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/hw-instructions/hw-09) -->

<!-- ::: -->

<!-- ::: {.starter} -->

<!-- [Starter](https://github.com/rstudio-education/datascience-box/tree/master/course-materials/starters/hw/hw-09-modeling-gss) -->

<!-- ::: -->

<!-- ::: -->
