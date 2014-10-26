Body Mass Index (BMI) Calculator Shiny App
========================================================
author: A.D. Makarov
date: 25th October, 2014
transition: rotate

<small>
Developing Data Products Coursera MOOC Assignment
</small>

What is BMI?
========================================================

The Body Mass Index (BMI) is a measure of body fat based on height and weight that applies to adult men and women. Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:

* BMI <18.5 : Underweight
* BMI [18.5-24.9] : Normal weight
* BMI [25-29.9] : Overweight
* BMI >=30 : Obesity

To calculate BMI you can use the following formula, which requires weight and height of the subject as an input:
BMI = weight(kg) / height(m)^2

Information via [Wikipedia](http://en.wikipedia.org/wiki/Body_mass_index)

Application Implementation
========================================================

The following diagnostic function to assess the fitness level of the subject was built and embedded into the *server.R* for the shiny app.


```r
BMI<-function(weight,height) {weight/(height^2)}

diagnostic_f<-function(weight,height)
{
    BMI_value<-weight/(height^2)
    ifelse(BMI_value<18.5,"Underweight",
           ifelse(BMI_value<25,"Normal weight",
                  ifelse(BMI_value<30,"Overweight","Obesity")))
}
```

Diagnostic Example
===========

For example, if the subject is **1.85 meters** tall and weights **85 kg**, his BMI is 24.8356 and his fitness level might be addressed by the following function call:


```r
diagnostic_f(85, 1.85)
```

```
[1] "Normal weight"
```

Final Thoughts
===========

The BMI is used in a wide variety of contexts as a simple method to assess how much an individual's body weight departs from what is normal or desirable for a person of his or her height. There is however often vigorous debate, particularly regarding at which value of the BMI scale the threshold for overweight and obese should be set, but also about a range of perceived limitations and problems with the BMI.

The index is the simpliest way to estimate the overall fitness condition of the particular person. However, lots of other physical and biological parameters (such as genetic background, sugar in blood, age etc.) must be taken into account to give a more accurate evaluation of the preson's fitness and health.

Information via [Wikipedia](http://en.wikipedia.org/wiki/Body_mass_index)
