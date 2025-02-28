**Problem Set for 20-Feb-2025**

**Problem 1** Find two linear maps 
$$
\alpha, \beta : \mathbb{F}[x] \to \mathbb{F}[x],
$$
such that 
$$
\alpha(\beta(f)) - \beta(\alpha(f)) = f
$$
for any $f \in \mathbb{F}[x]$. 

Is it possible to find such $\alpha, \beta : V \to V$ when $V$​ is of finite dimension?

> 答: $\alpha$ 是求导, $\beta(f) = x\cdot f(x)$. 那么 
> $$
> \alpha (\beta (f)) - \beta (\alpha (f)) = D(xf) - x(Df) = f.
> $$
> 有限维无解, 因为不存在 $AB-BA=I$ 的矩阵 (两侧取 $\mathrm{tr}$). 

**Problem 2** Here is a **clarification of irreducibility** over general polynomial rings. Let $\mathbb{A} \in \{\mathbb{Z}, \mathbb{Q}, \mathbb{R}, \mathbb{C}, \ldots\}$. A polynomial $f \in \mathbb{A}[x]$ is **reducible** if and only if there exists some factorisation $f = g \cdot h$ such that $g^{-1} \notin \mathbb A[x]$ and $h^{-1} \notin \mathbb A[x]$. For instance:

- $2 \cdot x$ is irreducible in $\mathbb{Q}[x]$, yet reducible in $\mathbb{Z}[x]$;
- $x^2 + 1$ is irreducible in $\mathbb{Q}[x]$, yet reducible in $\mathbb{C}[x]$.

Now consider $f \in \mathbb{Z}[x]$. **Prove** the following:

1. If $f$ is irreducible in $\mathbb{Z}[x]$, then it is irreducible in $\mathbb{Q}[x]$​;

   > 答: 对任意 $d \in \mathbb N+$, 多项式 $d\cdot f(x)$ 在 $\mathbb Z[x]$ 中无法分解作两个非常值多项式的乘积 . 继而使用反证法: 假定 $\mathbb Q[x]$ 中存在分解 $f = p\cdot q$, 满足 $\deg p \cdot \deg q \geq 1$. 取 $d$ 使得 $\sqrt dp, \sqrt dq \in \mathbb Z[x]$, 则与 $d \cdot f$ 在 $\mathbb Z[x]$ 中的分解方式矛盾. 
2. If $f$ is irreducible in $\mathbb{R}[x]$, then it is irreducible in $\mathbb{Q}[x]$​.

   > 答: 考虑逆否命题即可. 

> :warning: 规范的表述是“多项式 $f(x)$ 在 $\mathbb A[x]$ 中可约”，而非“多项式 $f(x)$ 可约”；类似地，规范地表述是“ $f$ 是 $\mathbb F$-线性映射”，而非“ $f$ 是线性映射”。若无歧义，可适当地选用后者以精简表述。

In fact, one has
$$
(\text{domain}) \quad \underbracket{\mathbb{Z}[x] \to (\mathbb{Z}[1/2])[x] \to \cdots \to \mathbb{Q}[x]}\limits_{\text{more irreducible polynomials}} \quad (\text{fractional field}),
$$
and
$$
(\text{field}) \quad \underbracket{\mathbb{Q}[x] \to (\mathbb{Q}[\sqrt{2}])[x] \to \cdots \to \mathbb{C}[x]}\limits_{\text{less irreducible polynomials}} \quad (\text{algebraic closure}).
$$

**(Optional)** Find **Gauß's lemma** in any of the textbooks and understand both the statement and the proof. The lemma states that:

> For any $f(x) \in \mathbb{Z}[x]$, $f$ is irreducible in $\mathbb{Z}[x]$ if and only if $f$ is both irreducible over $\mathbb{Q}[x]$ and $f$ is primitive (i.e., the greatest common divisor of its coefficients is 1).

Let $f$ be **monic**, i.e., non-zero with leading coefficient $1$. From Gauß's lemma, we learn that for any monic $f \in \mathbb{Z}[x]$, $f$ is irreducible in $\mathbb{Z}[x]$ **if and only if** it is irreducible in $\mathbb{Q}[x]$.

**Problem 3** Here are some criteria for the irreducibility of polynomials in $\mathbb C[x]$:

1. Let $f \in \mathbb{Z}[x]$ be a **monic** polynomial of degree $n$. Denote the zeros of $f$ in $\mathbb{C}$ by $(z_i)_{i=1}^n$. Show that, if there is exactly one $z_i$ such that $|z_i| \geq 1$ and $f(0) \neq 0$, then $f$ is irreducible in $\mathbb{Q}[x]$. 

   > 答: 依照 Gauß 引理, 首一整系数多项式在 $\mathbb Z[x]$ 与 $\mathbb Q[x]$ 中的可约性等价. 若 $\mathbb Z[x]$ 中存在分解 $f = pq$ ($\deg p\cdot \deg q \geq 1$), 则不妨设 $p$ 的所有根满足 $|z| <1$. 根据 $p(0) \neq 0$, 以及根乘积的 Vieta 定理, 矛盾. 
2. Let $f \in \mathbb{Z}[x]$ be a polynomial such that $f(0)$ is prime. Denote the zeros of $f$ in $\mathbb{C}$ by $(z_i)_{i=1}^n$. Show that, if $|z_i| > 1$ for all $i$, then $f$​ is irreducible.

   > 答: 若有分解 $f = pq$ ($\deg p\cdot \deg q \geq 1$), 则 $|p(0)|\cdot |q(0)|$ 是素数. 不妨设 $|p(0)|=1$, 与根乘积的 Vieta 定理矛盾. 
3. Let $f(x) = \sum_{k=0}^n a_k \cdot x^k \in \mathbb{Z}[x]$ be a polynomial with $f(0)$ prime. Suppose that $|a_0| > \sum_{k=1}^n |a_k|$. Show that $f$​​ is irreducible.

   > 答: 三角不等式 $|a_0| > \sum_{k=1}^n |a_k|$ 说明所有根模长大于 $1$, 往后同上一问. 

**Problem 4** Find all $f(x) \in \mathbb C[x]$ such that 
$$
f(x) \equiv \begin{cases}
2x\mod (x-1)^2,\\
3x\mod (x-2)^2.
\end{cases}
$$
> 答: 见张贤科 (1.17)
> ![image-20250220222217067](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250220222217067.png)
>
> 此题题干和张贤科书中有出入, 正确答案是 
> $$
> -3x^3+14x^2-17x+8 \quad + P(x)(x-1)^2(x-2)^2.
> $$

**Exercises (optional)** The following problems are **optional** but some of the problems are very important. 

1. Is there any irreducible $f (x) \in \mathbb Z[x]$ such that $f(f(x))$​ is reducible? 

   > 答: 经耐心计算, 可以发现 $f(x) = x^2+10x+17$, 且 
   > $$
   > f(f(x)) = \left(x^2+8 x+14\right) \left(x^2+12 x+34\right).
   > $$

2. Prove that $1+ \prod_{k=1}^{2025}(x-k)^2$ is irreducible in $\mathbb Z[x]$​; 

   > 答: 若可约, 则存在次数 $\leq 2025$ 的子式 $f \in \mathbb Z[x]$. 对 $1\leq k \leq 2025$, $f(k)$ 是 $1$ 的约数. 由于原多项式无零点, 其因子 $f$ 亦无零点. 此时, 不妨设假设 $f-1$ 以 $\{k\}_{k=1}^{2025}$ 为零点. 比较次数, 只能有 $f = \prod_{k=1}^{2025}(x-k)+1$, 矛盾. 

3. Prove that $\prod _{k=1}^n(x-x_i) +1$ is either irreducible in $\mathbb Z[x]$, or a perfect square; 

   * where $x_1 < x_2 < \cdots < x_n$​ are integers. 

   > 答: 若可约, 则 $f^2 = g^2 h^2$. 不妨设 $\deg g^2 \leq n$. 由零点数量知 $(g^2-1) = (f-1)$. 从而 $f$​​ 是完全平方式. 
   >
   > 由初等数学, $f$ 是平方式当且仅当 $x_i$ 是长度为 $2$ 或 $4$ 的等差数列, 公差为 $1$. 

4. ($f \in \mathbb Z[x]$) Prove that if $f(x) = 1$ has $\geq 4$ solutions in $\mathbb Z$, then $f(x) = -1$ has no solutions in $\mathbb Z$​. 

   > 答: 也就是是说明 $(x-a)(x-b)(x-c)(x-d)g(x)=2$ 无解. 显然. 

5. Prove that the partial sum $(e^x)_{\deg \leq n}$ is always irreducible in $\mathbb Q[x]$​. 

   > 答: 考虑多项式 $f_n(x) = x^n + nx^{n-1}+\cdots + n!$, 记素因子分解 $n = \prod p_i ^{n_i}$.
   >
   > 依照补充材料中的小技巧, 对任意素数 $p_i$, 相应的 $\bmod p$-凸包的底部折线段的斜率总是形如 $\frac{1-p_i^k}{p_i^k \cdot (p_i-1)}$, 其中 $k \geq n_i$. 用格点将凸包底线切分成最细单元, 由于 $\frac{(p^k -1)/(p-1)}{p^k}$ 是既约分数, 故这些最细单元的最短横向长度必然是 $p^{n_i}$. 上述最细单元的横向长度在多项式乘法下不会变得更长. 
   >
   > 作为推论, $f_n(x)$ 的每个不可约子式的次数一定是 $p^{n_i}$​ 的整数倍 (使用反证即可). 今遍历所有 $p_i^{n_i}$, 则 $f_n(x)$ 不可约子式的次数一定是各 $p_i^{n_i}$ 的倍数. 由是观之, $f_n$ 不可约. 
