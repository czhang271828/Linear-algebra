**Problem Set for 20 March 2025**

In [LADR4e](https://linear.axler.net/LADR4e.pdf), 

1. $\mathscr L(U, V) := \mathrm{Hom}_{\mathbb F}(U,V)$, and $\mathscr L(U) := \mathrm{End}_{\mathbb F}(U)$ as the ground field $\mathbb F$ is fixed; 
2. $\operatorname{null} = \ker$, and $\operatorname{range} = \operatorname{im}$; 

**Problems from [LADR4e](https://linear.axler.net/LADR4e.pdf)**. 

1. (3A-17) Suppose $𝑉$ is finite-dimensional. Show that the only two-sided ideals of $ℒ(𝑉)$ are $\{0\}$ and $ℒ(𝑉)$. 

   * A subspace $ℰ$ of $ℒ(𝑉)$ is called a two-sided ideal of $ℒ(𝑉)$ if $𝑇𝐸 ∈ ℰ$ and $𝐸𝑇 ∈ ℰ$ for all $𝐸 ∈ ℰ$ and all $𝑇 ∈ ℒ(𝑉)$.

     > 答: 使用矩阵会清楚一些. 记 $S$ 是 $\mathbb F^{n \times n}$ 的非零子集, 若
     > $$
     > \forall A , B \in  \mathbb F^{n \times n},\forall M  \in S : AMB \in S,
     > $$
     >  则任取 $M$ 的非零分量, 得某一 $E_{i,j} \in S$. 此时
     > $$
     > E_{s,t} = E_{s,i }E_{i,j}E_{j,t} \in S,
     > $$
     > 因此只能有 $\mathbb F^{n \times n} = S$. 
   * **(optional)** Find a non-trivial two-sided ideal of $\mathscr L(\mathbb F[x])$. 

     > 答: 所有 $\mathrm{im}$ 维数有限的映射构成双边理想, 见 (3B-23) 证明. 这一理想非平凡, 因为其既非零 $0$, 又非 $\mathscr L(\mathbb F[x])$ (如 $\mathrm{id}_{\mathbb F[x]}$ 不在理想内). 

2. (3B-22) Suppose $𝑈$ and $𝑉$ are finite-dimensional vector spaces and $𝑆 ∈ ℒ(𝑉, 𝑊)$ and $𝑇 ∈ ℒ(𝑈, 𝑉)$. Prove that 
   $$
   \operatorname {dim} \operatorname{null} 𝑆𝑇 ≤ \operatorname{dim} \operatorname{null} 𝑆 + \operatorname{dim} \operatorname{null} 𝑇.
   $$

   * **(optional)** Both $U$ and $V$ can be $\infty$-dimensional. The inequality holds as long as $\dim \operatorname{null} S +\dim \operatorname{null} T < \infty$. 

     > 答: 定义 $U$ 子空间到 $V$ 子空间的线性映射
     > $$
     > \varphi : \ker ST \to \ker S,\quad u \mapsto T(u). 
     > $$
     > 由定义, $\ker\varphi$ 是 $\ker T$ 的子空间, 从而 $\dim \ker ST < \infty$​. 特别地, 
     > $$
     > \dim \ker ST = \dim \underset {\text{$\ker T$ 的子空间}}{\underbracket{\ker \varphi}} + \dim \underset {\text{$\ker S$ 的子空间}}{\underbracket{\operatorname {im}\varphi}}\leq \dim \ker S + \dim \ker T.
     > $$
   
3. (3B-23) Suppose $𝑈$ and $𝑉$ are finite-dimensional vector spaces and $𝑆 ∈ ℒ(𝑉, 𝑊)$ and $𝑇 ∈ ℒ(𝑈, 𝑉)$. Prove that 
   $$
   \dim \operatorname{range}𝑆𝑇 ≤ \min\{\dim \operatorname{range} 𝑆, \dim \operatorname{range} 𝑇\}.
   $$

   * **(optional)** Both $U$ and $V$ can be $\infty$-dimensional. The inequality holds as long as $\dim \operatorname{range} S < \infty$ or $\dim \operatorname{range} T < \infty$. 

     > 答: 一方面, $\operatorname {im}(ST)$ 是 $\operatorname {im}(S)$ 的子空间; 另一方面, $S$ 给出了 $\operatorname {im}(T)$ 到 $\operatorname {im}(ST)$ 的满射. 明所欲证.  
   
4. (3D-17) Suppose $𝑉$ is finite-dimensional and $𝑆 ∈ ℒ(𝑉)$. Define $𝒜 ∈ ℒ(ℒ(𝑉))$ by $𝒜(𝑇) = 𝑆𝑇$ for $𝑇 ∈ ℒ(𝑉)$.

   1. Show that $\dim \operatorname{null} 𝒜 = (\dim 𝑉)(\dim \operatorname{null} 𝑆)$. 
   2. Show that $\dim \operatorname{range} 𝒜 = (\dim 𝑉)(\dim \operatorname{range} 𝑆)$.
   3. **(optional)** Write down the matrix form of $\mathscr A$ under the basis $\{v_{i\cdot n+j}:= E_{i,j}\}_{1\leq i,j\leq n}$. 
   
      > 答: 见**高等代数解题方法 (第 2 版 )** 许甫华 张贤科 编著, 第六章 T28 与 T30. 书籍在 `github` 上, 此处就不费笔墨了. 
      >
      > 注: 一个简便的记号是 Kronecker 积, 约定
      > $$
      > A_{m \times n} \otimes B_{s \times t} = \begin{pmatrix}
      > a_{1,1}B&a_{1,2}B&\cdots &a_{1,n}B \\ 
      > a_{2,1}B&a_{2,2}B&\cdots &a_{2,n}B \\ 
      > \vdots & \vdots & \ddots & \vdots \\ 
      > a_{m,1}B&a_{m,2}B&\cdots &a_{m,n}B
      > \end{pmatrix}_{ms \times nt}，
      > $$
      > 那么 $(A \otimes B)\cdot (C \otimes D) = AC \otimes BD$. 

> Since there are some [solutions](https://uli.rocks/axler/) on the website, it is recommended to finish all optional problems. 
