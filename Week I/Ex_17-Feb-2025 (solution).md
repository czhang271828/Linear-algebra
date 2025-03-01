**Problem Set for 17-Feb-2025** 

**Problem 1.** Let $\mathbb{F}$ be an arbitrary ground field, and let $\mathbb{F}[x]$ denote the polynomial ring (algebra) in one indeterminate. For the sake of convention, assume that $x^0 = 1$.

1. Demonstrate that $\mathbb{F}[x]$ forms a vector space over $\mathbb{F}$ with the basis $\{x^n\}_{n \geq 0}$. 
> 答: (以下也是考试时的答题规范) 先说明 $\mathbb F[x]$ 是 $\mathbb F$-线性空间. 依照惯例, 只需说明非空集 (要点零), 数乘闭 (要点一), 以及加法闭 (要点二). 多项式的乘法与其线性结构无关, 请勿画蛇添足. 
> 
> 下证明 $\{x^n\}_{n \geq 0}$ 是 $\mathbb F[x]$ 的一组基. 只需证明 $\mathbb F[x] = \mathrm{span}(\{x^n\}_{n \geq 0})$ (见步骤一), 且 $\{x^n\}_{n \geq 0}$ 线性无关 (见步骤二). 
>
> 1. (步骤一) 任意多项式 $f \in \mathbb F[x]$ 可以写作单项式的有限和. 
> 2. (步骤二) 提取多项式的 $x^k$-次项系数, 这一行为是一个线性函数, 记作 $\varphi_k$. 例如 $\varphi_1(x^2+2x+2) = 2$. 任取线性组合式 $g = \sum_{0 \leq i \leq n}c_i x^i$, 下证明 $g=0$ 仅当 ($\Rightarrow$ 方向, only if) 所有 $c_i$ 为 $0$. 由于 $\varphi_k$ 是线性函数, $g=0$ 时所有 $\varphi_k(g) = c_i$ 均为 $0$. 
> 
2. Determine whether the set $\{x^n + 2 \cdot x^{n-1}\}_{n \geq 1}$ constitutes a basis for $\mathbb{F}[x]$, and provide your reasoning.
> 答: 考虑因式分解 $x^n + 2 \cdot x^{n-1} = (x + 2) \cdot x^{n-1}$, 以上多项式的线性组合必是以 $-2$ 为零点的多项式. 这说明 $\mathrm{span}(\{x^n + 2 \cdot x^{n-1}\}_{n \geq 1})$ 是 $\mathbb F[x]$ 的真子空间. 
> 
3. Investigate whether the series $e^x = 1 + \frac{x}{1!} + \frac{x^2}{2!} + \frac{x^3}{3!} + \cdots$ belongs to $\mathbb{F}[x]$, and provide your reasoning.
> 答: 如果将导数 $D$ 视作线性函数, 则 $D(e^x)$ 的定义涉及 $D$ 与无穷求和的交换性 (这不是线性性的直接结论!). 此处可以通过级数在每点处收敛性, 说明 $e^{-x}$ 是 $e^x$ 的乘法逆元. 由于 $e^{-x}$ 是无处取 $0$ 的非常值函数, 从而不是多项式. 
> 
4. (Optional) Let $\mathbb{F}\langle x \rangle$ denote the linear space of *formal power series*, which takes the form
    $$
    \mathbb{F}\langle x \rangle = \left\{ \sum_{k=0}^{\infty} a_k x^k \mid a_k \in \mathbb{F} \right\}. 
    $$
    One can identify $\mathbb{F}[x]$ as a proper linear subspace of $\mathbb{F}\langle x \rangle$. Let
    $$
    \ell : \mathbb{F}[x] \to \mathbb{F}, \quad \sum_{k=0}^{n} a_k x^k \mapsto \sum_{k=0}^{n} a_k
    $$
    be a linear map which sends a polynomial to the sum of its coefficients. 

    Is it possible to define a linear map $\mathcal{L} : \mathbb{F}\langle x \rangle \to \mathbb{F}$ such that $\mathcal{L}(f) = \ell(f)$ for any $f \in \mathbb{F}[x]$?

> 答: 无法轻易定义. 