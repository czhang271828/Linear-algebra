---
title: 期中考试试卷与解答
author: 任明旸 (命题人)
layout: post
category: exam
---

<hr>

**Problem 1** (20points).

1. (10 points). Assume that $p$ is a prime number greater than 2. Prove that the polynomial  

    $$
    f (x) = x^{p-1} + x^{p-2} + \cdots + x + 1
    $$

    is irreducible in the rational number field $ℚ$.

2. (10 points). For an integer coefficient polynomial 

    $$
    f (x) = x^{n} + a_1 x^{n-1} + \cdots + a_{n-1} x + a_{n},
    $$

    the sufficient and necessary condition for $f (x)$ to have **(non-zero)** integer roots is that there are $2(n-1)$ integers $\{ b_i, c_i , \  i = 1, \ldots, n-1\}$ such that

    1. $a_i = b_i  +  c_i$, for $i = 1, \cdots, n-1$; and
    2. $\frac{1}{c_1} = \frac{b_1}{c_2} =  \frac{b_2}{c_3} = \cdots =  \frac{b_{n-2}}{c_{n-1}} =  \frac{b_{n-1}}{a_{n}}$.

*Solution*. 第一问是[原题 (去年试卷第三题)](https://czhang271828.github.io/Linear-algebra/2024%20%E7%A7%8B-%E9%AB%98%E7%AD%89%E4%BB%A3%E6%95%B0/2023/mess%20-%20%E5%89%AF%E6%9C%AC/%E5%B0%8F%E6%B5%8B%E8%AF%95%E5%8D%B7.pdf)的弱化版本 (少了一次求导), 思路完全相同. 考虑换元 ($x := y + 1$) 即可. 此时

$$
g(y) := f(x) = f(y+1) = \frac{(y+1)^p - 1}{(y+1) - 1} = y^{p-1} + \binom{p}{1} y^{p-2} + \cdots + \binom{p}{p-1} y^0.  
$$

依照 EisenStein 判别法, 非最高次项均是 $p$ 的倍数, 常数项不是 $p^2$ 的倍数. 因此 $g$ 与 $f$ 均不可约.

第二问是[原题 (Mar27 习题课)](https://czhang271828.github.io/Linear-algebra/Notes/27Feb%20(%E4%B9%A0%E9%A2%98%E8%AF%BE)/27Feb2025%20(rmy%20%E7%8F%AD).pdf).

1. 关于充分性: 若多项式有实根 $(x-λ)$, 即 $f(x) = h(x) ⋅ (x-λ)$, 展开验证即可 ($b_∙$ 是 $h$ 的系数, 最后的分式是 $-λ⁻¹$).
2. 必要性即倒推充分性, 证明略.

<hr>

**Problem 2** (20 points).  

1. (10 points). Assume that $a,b ∈ ℂ$ are two complex numbers. Prove the following two subspaces of $ℂ[x]$,  

    $$
    \begin{aligned}
    & V_a=\{f(x) \in \mathbb{C}[x] \mid f(a)=0\}, \\[6pt]
    & V_b=\{g(x) \in \mathbb{C}[x] \mid g(b)=0\} ,
    \end{aligned}
    $$

    are isomorphic.
2. (10 points). Assume that $ε_1, ε_2, ε_3$ is a basis of the linear space $V$, and $f_1, f_2, f_3$ is the dual basis of $ε_1, ε_2, ε_3$. Let  

    $$
    α_1=ε_1+ε_2+ε_3,\quad {α}_2=ε_2+ε_3,\quad {α}_3=ε_3.
    $$

    1. Prove that $α_1, α_2, α_3$ is a basis of $V$;
    2. Find the dual basis of $α_1, α_2, α_3$ (using $f_1, f_2, f_3$ to represent).

*Solution*. 第一问先证 $V_a$ (零化 $a$ 之多项式集) 是线性空间.

1. (非空). 零多项式属于 $V_a$.
2. (加法). 若 $f(a) = g(a) = 0$, 则 $(f+g)(a) = 0$.
3. (数乘). 若 $f(a) = 0$, 则 $λ f(a) = 0$.

关于同构的证明方法有如下两类.

1. (不推荐). 构造线性映射 $δ_a : ℂ[x] → ℂ , \quad f ↦ f(a)$, 其 $\operatorname{im}$ 是有限维的, 因此 $V_a = \ker a$ 是可数维的. 显然可数维空间彼此同构 (需要选择公理).
2. (推荐的方法). 取上述 $δ_a$ 与 $δ_b$. 显然平移

    $$
    τ : ℂ [x] → ℂ [x],\quad f(⋅) ↦ f(⋅ - b + a)
    $$

    是线性同构. 由 $δ_b ∘ τ = δ_a$, 得 $\ker δ_b ≃ \ker δ_b ∘ τ = \ker δ_a$.

第二问解方程组即可, 无需解答过程. 也可以直接凑出答案.

1. $α$ 通过 $ε$ 右乘主对角为 $1$ 的三角矩阵得到, 故线性无关.
2. 记 $γ_i$ 是对偶基. 观察到

    $$
    γ_1 = f_1,\quad γ_2 = f_2 - f_1,\quad γ_3 = f_3 - f_2.
    $$

<hr>

**Problem 3** (20 points). Suppose $V$ is an $n$-dimensional vector space over a number field, and let $V_1, V_2, \ldots, V_s$ be $s$ proper subspaces of $V$. Prove that

1. There exists some $α ∈ V$ such that $α ∉ V_1 ∪ V_2 ∪ \cdots ∪ V_s$;

2. There exists a basis of $V, ε _1, ε _2, \ldots, ε _n$, such that

   $$
   \left\{ε _1, ε _2, \ldots, ε _n\right\} ⋂ \left(V_1 ∪  V_2 ∪  \cdots ∪  V_s\right)=∅.
   $$

*Solution*. 对任意 $x ∈ 𝔽$ 构造 VanDerMonde (列) 向量

$$
\{v (x) = (1,x,x^2,\ldots, x^{n-1}) ∣ x ∈ 𝔽\},
$$

这一无限集中的任意 $n$ 个向量是线性无关的.

第一问: 每个 $V_i$ 只能包含有限个 $v(x)$.

第二问: 显然.

**注: 这一技巧 (构造任意多一般位置的向量) 在上学期提及过.**

<hr>

**Problem 4** (15 points). Suppose $φ _1, φ _2, \ldots, φ_m$ are linear maps over the $n$-dimensional vector space $V$, such that  

$$
φ _i^2 = φ _i\quad  \text{and}\quad  φ _i φ _j = 0 \quad (i ≠ j, \ 1 ≤ i, \ j ≤ m).
$$

Prove that

$$
V=\operatorname{im} \varphi_1 ⊕ \operatorname{im} \varphi_2 ⊕ \cdots ⊕ \operatorname{im} φ_m ⊕ \bigcap_{i=1}^m \operatorname{ker} φ_i .
$$

*Solution*. 这是[原题 (习题课 27Mar)](https://czhang271828.github.io/Linear-algebra/Notes/27Mar%20(%E4%B9%A0%E9%A2%98%E8%AF%BE)/27Mar2025%20(zyc%20%E7%8F%AD).pdf). 以上结论适用于无限维空间, 从而**矩阵方法不是一般的**.

(矩阵方法). 由零化多项式无重根, $φ_i$ 在某组基下对角化为 $\{0,1\}$-矩阵, 且两两交换的矩阵可同时对角化. 因此存在合适的基, 使得 $φ_i$ 的矩阵形式是

$$
\operatorname{diag}(δ_{1,i} ⋅ I_{N_1}, \ldots, δ_{n,i} ⋅ I_{N_n}, O) \quad (δ_{i=j} = 0,\quad δ_{i ≠ j} = 1).
$$

约定 $N_0 = 0$, 则以上

$$
\mathrm{span}(e_{N_{k-1} + 1} , \ldots e_{N_{k}}) = \operatorname{im}φ_k,
$$

以及

$$
\mathrm{span}(e_{> N_{n}}) = \bigcap_{i=1}^m \operatorname{ker} φ_i.
$$

(线性映射方法). 应先明确: 对任意 $i$ 与 $j$, 子空间 $\operatorname {im}φ_i$ 与 $\operatorname {ker}φ_i$ 都是 $φ_j$ 的不变子空间. 对空间 $\operatorname {im}φ_j$, 仅 $φ_j$ 限制在其上是同构, $φ_{≠ j}$ 限制在其上是 $0$. 

下采用数学归纳证明.

1. (初始). 由 $x = [x - φ_1(x)] + φ_1(x)$, 故 $\ker φ_1 + \operatorname{im} φ_1$ 是全空间. 对 $x ∈ \ker φ_1 ∩ \operatorname{im} φ_1$, 记 $x = φ_1(y)$, 则 $x = φ_1(y)= φ_1(φ_1(y)) = φ_1(x) = 0$. 因此 $\ker φ_1 ∩ \operatorname{im} φ_1 = 0$. 证明了直和.
2. (归纳步骤 $k ↦ k+1$). $φ_{k+1}$ 在 $\operatorname{im}φ_{≤ k}$ 上恒零. 由映射交换, $\underset{1 ≤ i ≤ k}⋂\ker φ_i$ 是 $φ_{k+1}$ 的不变子空间. 由 $\ker φ_{k+1} ⊕ \operatorname{im} φ_{k+1}$ 是全空间, 得

    $$
    \underset{1 ≤ i ≤ k}⋂\ker φ_i = \left[\ker φ_{k+1} ∩ \underset{1 ≤ i ≤ k}⋂\ker φ_i\right] ⊕ \left[\operatorname{im} φ_{k+1} ∩ \underset{1 ≤ i ≤ k}⋂\ker φ_i\right].
    $$

    左式是 $\underset{1 ≤ i ≤ k+1}⋂\ker φ_i$, 右式是 $\operatorname{im} φ_{k+1}$ (因为 $\operatorname{im}φ_k ⊆ \operatorname{ker}φ_{≠ k}$).

<hr>

**Problem 5** (15 points). Suppose the linear map $𝒜 (X)=AXA^T$ over $ℝ^{n × n}$, where $A$ is an $n$-order real square matrix with $\operatorname{rank}(A) = r$. Find the dimension and a basis of $\operatorname{im} 𝒜$.  

*Solution*. 这也是[原题](https://czhang271828.github.io/Linear-algebra/Week%20V/Supplementary%20Reading%20Material/Homework_6%20part%202.pdf).

记 $A = P ⋅ I' ⋅ Q$ 是相抵标准型, 则原映射为

$$
ℝ^{n × n} → ℝ^{n × n},\quad X ↦ P I' ⋅ Q X Q^T⋅ I' P^T.
$$

将 $X$ 取遍 $ℝ^{n × n}$ 的一组基 $B_{i,j} := Q^{-1} E_{i,j} Q^{T,-1}$, 得

1. $\ker 𝒜 := \mathrm{span}(\{B_{i,j}∣ {\max(i,j) > \mathrm{rank}(A)}\})$, 维度 $n^2 - r^2$.
2. $\operatorname{im} 𝒜 := \mathrm{span}(\{B_{i,j}∣ {\max(i,j) ≤ \mathrm{rank}(A)}\})$, 维度 $r^2$.



<hr>

**Problem 6** (10 points). *You are encouraged to have a great amount of reading and thinking besides the classes. This problem is meant to test the your understanding.* Please give a new theorem/question that has neither appeared in classes nor in our textbook, and then give a proof/solution to this theorem/question. It can be a phenomenon you have summarized, a theorem in other books, or a theorem that is beyond what we have learned.

<hr>