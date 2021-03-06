# Shannon Formula

The entropy $H$ and the amount of the information $I$ depend on the initial amount considered variants N and a priori probabilities of each implementation. Calculation of entropy in this case, according to the formula of Shannon, which proposed in 1948 in the paper ["Mathematical Theory of Communication"](http://worrydream.com/refs/Shannon%20-%20A%20Mathematical%20Theory%20of%20Communication.pdf), is:

$$H(X)= - \sum_{i=1}^np(x_i)\log_b p(x_i)$$

Minus is used because of the fact that the logarithm of the number smaller than one is the  negative value. But, because $-\log a = \log \frac{1}{a}$  the formula can also be written as

$$H(X)= \sum_{i=1}^np(x_i)\log_b \frac{1}{p(x_i)}$$

In this case, the logarithm $\log_b \frac{1}{p(x_i)}$ is interpreted as a number of information obtained in the case of the i-th choise $I_i$.

Therefore, in the formula Shannon entropy is the average characteristic - the expectation value of the distribution of random variable ${I_0, I_1, ... I_N}$, and can be used as a measure of information uncertainty.

**Note:** Sorry for my bad English...
