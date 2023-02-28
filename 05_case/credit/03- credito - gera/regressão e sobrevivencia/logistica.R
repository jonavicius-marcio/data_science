base =read.table("credit_data2.csv", header=TRUE, sep=";")
base
attach(base)


## Regressão logistica 

modelo <- glm(default ~ income+sexo+Prodb+ProdC+age+loan+tempo,
 family = "binomial", data = base)

summary(modelo)

modelo1 <- glm(default ~ income+sexo+Prodb+ProdC+age+loan+tempo,
 family = binomial(link="logit"), data = base)

summary(modelo1)


## Regressão linear 


modelo<- lm(base, formula = loan~sexo)

summary(modelo)
