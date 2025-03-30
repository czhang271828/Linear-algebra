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
   > &\overset \ast \geq\qquad\qquad  (\dim U - \dim V)+ \dim E. 
   > \end{align*}
   > $$
   > $\color{red}\text{特别提示}$ $\mathrm{im}(f_E)$ 是 $E$ 的子空间 (不必取等), 因为 $f$ 未必是满射. 
   >
   > 最后 $\ast$ 解释如下: 将 $\mathrm{im}(f_E)$ 扩充成 $E$ 的子空间, 需要额外添加线性无关组 $\mathscr B \subset V \setminus \mathrm{im}(f)$. 使用该 $\mathscr B$ 扩充 $\mathrm{im}(f)$, 得 $V$ 的子空间. 从而
   > $$
   > \dim V - \dim \mathrm{im}(f) \geq \dim E - \dim \mathrm{im}(f_E).
   > $$
   
2. When $f$ is surjective, the equality holds. 

   > 答: $f$ 满时, 
   > $$
   > \dim V - \dim \mathrm{im}(f) = 0 = \dim E - \dim \mathrm{im}(f_E).
   > $$
