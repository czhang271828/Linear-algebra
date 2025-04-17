**Problem Set for 07 April 2025**

**Exercise** Let $V$ be a vector space over $\mathbb{F}$, and define $\mathrm{End}(V) := \mathrm{Hom}_{\mathbb{F}}(V,V)$. Define:

- $f \in \mathrm{End}(V)$ as *almost zero* (denoted $f \in \mathrm{AZ}(V)$), provided $\dim \mathrm{im}(f) < \infty$.
- $f \in \mathrm{End}(V)$ as *almost an isomorphism* (denoted $f \in \mathrm{AI}(V)$), provided $\dim \ker f + \dim \frac{V}{\mathrm{im}(f)} < \infty$.

Now finish the following. 

1. If $\dim V < \infty$, determine $\mathrm{AZ}(V)$ and $\mathrm{AI}(V)$.

   > $\mathrm{AZ}(V) = \mathrm{AI}(V) = \mathrm{End}(V)$. 
2. If $V =  \mathbb{R}[x]$, find an injective $f \in \mathrm{AI}(V)$ and a surjective $g \in \mathrm{AI}(V)$. Additionally, find some $h \notin  \mathrm{AI}(V) \cup \mathrm{AZ}(V)$.

   > $f$ 右移, $g$ 左移. 将 $\mathbb R[x]$ 依照奇偶函数写作 $V_1\oplus V_2$, 则
   > $$
   > \varphi : V_1\oplus V_2 \to V_1\oplus V_2,\quad (f,g) \mapsto (f,0)
   > $$
   > 满足 $\dim \ker \varphi , \dim \operatorname{im} \varphi , \dim \frac{\mathbb R[x]}{\operatorname{im} \varphi } = \infty$. 
3. Determine whether $\mathrm{AZ}(V)$ is a subspace of $\mathrm{End}(V)$. What about $\mathrm{AI}(V)$?

   > 先看 $\mathrm{AZ}(V)$, 下分别证明 $\mathrm{AZ}(V)$ 对数乘和加法封闭.
   >
   > 1. $f \in \mathrm{AZ}(V)$, 则 $\operatorname {im}(\lambda f) \subset \mathrm{im}(f)$ 是有限维的. 
   > 2. $f,g \in \mathrm{AZ}(V)$, 则 $\operatorname{im}(f+g) \subset \operatorname{im}(f) + \operatorname{im}(g)$ 是有限维的. 
   >
   > $0 \notin \mathrm{AI}(V)$, 从而 $\mathrm{AI}(V)$ 不是线性子空间. 
4. Show that for arbitrary $f , g \in \mathrm{AZ}(V)$, one has $g \circ f \in \mathrm{AZ}(V)$.

   > 下一问的弱化. 
5. Prove that $\mathrm{AZ}(V)$ is an **ideal** in $\mathrm{End}(V)$. The term **ideal** is defined in *20 March 2025*.

   > 若 $f \in \mathrm{AZ}(V)$, 由满射
   > $$
   > \varphi : \mathrm{im}(f) \twoheadrightarrow \mathrm{im}(g\circ f) ,\quad f(v) \mapsto g(f(v)),
   > $$
   >  此时 $\dim \mathrm{im}(g\circ f) \leq \mathrm{im}(f)$. 从而 $g \circ f \in \mathrm{AZ}(V)$. 
   >
   > 若 $g \in \mathrm{AZ}(V)$, 显然 $\mathrm{im}(g\circ f)  \subset \mathrm{im}(g)$ 是有限维的. 从而 $g \circ f \in \mathrm{AZ}(V)$. 
   >
   > $\mathrm{AZ}(V)$ 是线性空间, 且 
   > $$
   > \mathrm{AZ}(V) \circ \mathrm{End}(V) \subset \mathrm{AZ}(V) \supset \mathrm{End}(V) \circ \mathrm{AZ}(V). 
   > $$
   > 从而是理想. 
6. Show that for arbitrary $f , g \in \mathrm{AI}(V)$, one has $g \circ f \in \mathrm{AI}(V)$.

   > 只需证明以下事实. 
   >
   > 1. $\dim \ker f + \dim \ker g \geq \dim \ker (g \circ f)$. 
   > 2. $\dim \frac{V}{\mathrm{im}(f)} + \dim \frac{V}{\mathrm{im}(g)} \geq \dim \frac{V}{\mathrm{im}(g \circ f)}$. 
   >
   > 第一问, 构造
   > $$
   > f_s: \ker (g \circ f) \to \ker (g),\quad x \mapsto f(x).
   > $$
   > 这一映射的 image 是 $\ker g$ 的子空间, kernel 是 $\ker(g\circ f) \cap \ker f = \ker f$. 从而
   > $$
   > \dim \ker (g \circ f) = \dim \ker f + \dim \ker g - \dim \frac{\ker g}{f(\ker (g \circ f))}.
   > $$
   > 由 $\dim \frac{\ker g}{f(\ker (g \circ f))} \leq \dim \ker g < \infty$, 左式是有限的. 
   >
   > 第二问, 构造
   > $$
   > g_q: \frac{V}{\mathrm{im}(f)} \to \frac{V}{\mathrm{im}(g \circ f)} ,\quad (v + f(V)) \mapsto (g(v)+g(f(V))).
   > $$
   > 这一 $g_q$ 是良定义的, 因为
   > $$
   > \Phi : V \to \frac{V}{\mathrm{im}(g \circ f)},\quad v \mapsto (g(v) + g(V))
   > $$
   > 的 kernel 包含了 $\mathrm{im}(f)$, 从而 $\Phi$ 可以定义在商空间上, 得 $g_q$. 特别地, 
   > $$
   > \begin{align*}
   > \frac{V / \mathrm{im}(g \circ f)}{\mathrm{im}(g_q)} & =  \frac{V / \mathrm{im}(g \circ f)}{\mathrm{im}(\Phi)}  \quad \text{由 $\Phi = g_q \circ \text{``某满射''}$}\\ 
   > & =   \frac{V / \mathrm{im}(g \circ f)}{\{g(v) + \mathrm{im}(g \circ f)\}} \quad\text{由定义}\\
   > & =   \frac{V / \mathrm{im}(g \circ f)}{\mathrm{im}(g) / \mathrm{im}(g \circ f)} \quad\text{写作商空间的子空间}\\
   > & =   \frac{V }{\mathrm{im}(g)} \quad\text{同构定理}.
   > \end{align*}
   > $$
   > 因此 $g_q(\frac{V}{\mathrm{im}(f)})$ 是满射 $\frac{V}{\mathrm{im}(g \circ f)} \twoheadrightarrow \frac{V}{\mathrm{im}(g)}$ 的 kernel. 从而
   > $$
   > \dim \frac{V}{\mathrm{im}(g \circ f)}  = \dim \frac{V}{\mathrm{im}(g)} + \dim \frac{V}{\mathrm{im}(f)} - \dim \ker g_q.
   > $$
   > 由 $\dim \ker g_q \leq \dim \frac{V}{\mathrm{im} (f)} < \infty$, 左式是有限的. 
7. Demonstrate that if any two elements of $\{f,g,g\circ f\}$ belong to $\mathrm{AI}(V)$, then so does the third.

   > *Hint:* for $f \in \mathrm{AI}$, set $\Phi (f) := \dim \ker f - \dim \frac{V}{\mathrm{im}(f)}$, show that $\Phi (f\circ g) = \Phi(f) + \Phi (g)$.
   >
   > Hint 中的等式成立, 当且仅当上述
   > $$
   > \dim \frac{\ker g}{f(\ker (g \circ f))} = \dim \ker g_q.
   > $$
   > 实际上, 
   >
   > 1. $\ker g_q = \frac{\ker g + \operatorname {im} f}{\operatorname {im} f}$; 
   > 2. $\frac{\ker g}{f(\ker (g \circ f))} = \frac{\ker g}{\operatorname {im} f \cap \ker g}$. 
   >
   > 得证. 

8. Show that for arbitrary $f \in \mathrm{AZ}(V)$, one has $(\mathrm{id}_V + f) \in \mathrm{AI}(V)$.

   > 若 $(\mathrm{id}_V + f)(v)=0$, 则 $v \in \operatorname {im} f$. 从而 $\ker (\mathrm{id}_V + f) \subset \operatorname{im} f$ 是有限维的. 
   >
   > 对偶地, 只需证明存在满射 $\operatorname{im}f \twoheadrightarrow \frac{V}{\operatorname{im}(\mathrm{id}_V + f)}$, 依照同构定理, 即证 $\ker f \subset \operatorname{im}(\mathrm{id}_V + f)$. 若 $f(v)=0$, 则 $v = (\mathrm{id}_V + f)(v)$, 得证. 
9. **(Optional)** By Axiom of Choice, every subspace has a complementary subspace. Prove that $f \in \mathrm{AI}(V)$ can always be expressed as the summation of a map of $\mathrm{AZ}(V)$-type and an automorphism (i.e., auto = iso + endo). Conversely, show that any such summation belongs to $\mathrm{AI}(V)$.

   > 对 $f$, 考虑 
   > $$
   > V = \ker f \oplus V_1 \xrightarrow f \mathrm{im}(f) \oplus V_2 = V.
   > $$
   > 以上诱导的 $V_1 \to \operatorname{im} f$ 是同构. 由于 $\ker f$ 和 $V_2$ 是有限维的, 任何通过 $\ker f$ 或 $V_2$ 分解的映射都是 $\mathrm{AZ}(V)$-类型的. 可以将 $f$ 写作列向量之间的矩阵, 即
   > $$
   > \begin{pmatrix}a & b \\ c & d\end{pmatrix} : \ker f \oplus V_1 \to \mathrm{im}(f) \oplus V_2 ,\quad (x,y) \mapsto (a(x)+b(y),c(x)+d(y)).
   > $$
   > 此时 $\begin{pmatrix}a & b \\ c & d\end{pmatrix}  = \begin{pmatrix}0 & b \\ 0 & 0\end{pmatrix}  + \begin{pmatrix}a & 0 \\ c & d\end{pmatrix}$ 就是所求的分解. 
10. **(Optional)** Show that $\frac{\mathrm{End}(V)}{\mathrm{AZ}(V)}$ is a quotient ring with a well-defined subset $\frac{\mathrm{AI}(V)}{\mathrm{AZ}(V)}$, consisting precisely of the invertible elements. In this quotient ring, the operators $\frac{\operatorname{d}}{\operatorname{d}x}(-)$ and $\int_0^x(-)\operatorname{d}x$ are mutually inverse.

    > 本小问面向熟悉环论的同学, 其实没什么新东西. 

<div style="page-break-after: always;"></div>

**Problem (Optional)** Let $V$ be a vector space over $\mathbb{F}$. We define
$$
\prod_{i \in I} V := V \underset{\text{$I$-copies}}{\underbracket{\times \cdots \times}} V \simeq \mathrm{Hom}_{\mathrm{Sets}}(I, V)
$$
as an $\mathbb{F}$-vector space whose elements are sequences $(v_i)_{i \in I}$. Informally, $\prod_{i \in I} V$ represents the space of sequences indexed by $I$ with values in $V$.

1. Define $e_i :=(\ldots, 0, 0, \underset{\text{$i$-th entry}}{\underbracket{1_{\mathbb{F}}}}, 0, 0,\ldots) \in \prod _{i \in I} \mathbb{F}$. Determine when $\{e_i\}_{i \in I}$ forms a basis of $\prod _{i \in I}\mathbb{F}$.

   > 当且仅当 $I$ 有限. 

2. Describe $\mathrm{span}(\{e_i\}_{i \in I})$ in natural language.

   > $\prod _{i \in I} \mathbb{F}$ 中有且仅有有限项非零的东西. 

3. Substituting $I$ with $V_{\text{as a set}}$, the underlying set of $V$ as an $\mathbb{F}$-vector space, prove that $\pi$ is a linear surjection and determine the equivalence relation $R_{\mathbb{F}}$ as defined in *24 March 2025*:
   $$
   \pi : \mathrm{span}(\{e_v\}_{v \in V_{\text{as a set}}}) \to  V,\quad e_v \mapsto v.
   $$
   
   > 映射层面, $\mathrm{id_{V_{\text{as a set}}}} : \{e_v\}_{v \in V_{\text{as a set}}} \to V$ 是恒等的. 由于 $\{e_v\}_{v \in V_{\text{as a set}}}$ 是 $\prod_V\mathbb F$ 中的线性无关组, 自然存在唯一定义的
   > $$
   > \pi : \mathrm{span}(\{e_v\}_{v \in V_{\text{as a set}}}) \to  V,\quad e_v \mapsto v.
   > $$
   > 使得限制在基上的映射为 $\pi |_{\{e_v\}_{v \in V_{\text{as a set}}}} = \mathrm{id_{V_{\text{as a set}}}}$. 
   >
   > 这时候, $R_{\mathbb F}$ 就是 $V$ 中本有的线性组合关系. 

**Remark** 以上问题就是将线性空间的定义重新表述了一遍: 结构 = 自由定义的结构商去关系. 
