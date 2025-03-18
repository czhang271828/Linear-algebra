**Problem Set for 13 March 2025**

**Exercise 1** Let $f : U \to V$ be linear map and $\dim U = n$, $\dim V = m$. 

1. Let $E \subset V$ be an $\color{red} k$-dimensional subspace, prove that 
   $$
   \dim f^{-1}(E)\   {\color{red}\geq} \ n - m + {\color{red}k} .
   $$

   > 答: 考虑映射 
   > $$
   > f_E : f^{-1} (E) \to V,\quad u \mapsto f(u) 
   > $$
   > 此时 
   > $$
   > \begin{align*}
   > \dim f^{-1}(E) &\xlongequal{\text{rank-null}} \dim \ker f_E+ \dim \operatorname{im} f_E \\ 
   > &\xlongequal{\ker f= \ker f_E} \dim \ker f+ \dim \operatorname{im} f_E \\ 
   > &\xlongequal{\text{rank-null}} (\dim U - \dim \operatorname{im}f)+ \dim \operatorname{im} f_E \\ 
   > &\xlongequal{f_E(f^{-1}E)=E} (\dim U - \dim \operatorname{im}f)+ \dim E \\[6pt]
   > &\geq\qquad\qquad  (\dim U - \dim V)+ \dim E. 
   > \end{align*}
   > $$
   > 取等当且仅当 $\dim \operatorname {im}f = \dim V$, 也就是 $f$ 满. 
   
2. When $f$ is surjective, the equality holds. 

   > 见上. 
