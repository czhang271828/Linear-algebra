**Problem set for 27-Feb-2025**

**Exercise 1.1** Let $P_n:=\{f(x \in \Bbb F[x]) \mid \deg f(x) < n\}$. Pick $\{a_i\}_{i=1}^n \in \Bbb F$ such that $a_i \neq a_j$ for any $i \neq j$. Show that 
$$
f_j (x) := \prod _{i \neq j} (x-a_i)\quad (1 \leq j \leq n)
$$
form a basis of $P_n$. 

> 答: 只需证明 $\{f_j\}_{j=1}^n$ 是大小为 $n$ 的线性无关组.对线性无关性证明如下, 定义线性映射
> $$
> \varphi_j : P_n \mapsto \Bbb F,\quad f \mapsto f(a_j).
> $$
> 依照定义, $f_j (x_i) = \delta _{i,j}$. 对任意线性组合式 $\sum _{i=1}^n c_i f_i$, 总有
> $$
> \varphi_j : \sum _{i=1}^n c_i f_i \mapsto c_j f_j (x_j).
> $$
> 今取遍所有 $\varphi _j$, 上述线性组合式为 $0$ 当且仅当一切 $c_i$ 为 $0$. 这说明了线性无关性. 

**Exercise 4.1** Assume $f(x) = x^3 + px + q \in \Bbb Z [x]$ is irreducible and $\alpha \in \Bbb C$ is a root of $f$. 

1. Prove that $\Bbb Q [\alpha ] := \{g(\alpha ) \mid g(x) \in \Bbb Q[x]\}$ is a linear space over $\Bbb Q$ and $1,\alpha, \alpha^2$ form a basis. 
2. Prove that $\varphi : \beta \mapsto f^\prime(\alpha) \beta$ gives a linear map on $\Bbb Q[\alpha]$ and find its matrix under $1,\alpha, \alpha^2$. 

> 答: 为证明 $1,\alpha, \alpha^2$ 构成基, 下依次证明 $\mathrm{Span}(1,\alpha,\alpha^2)= \Bbb Q[\alpha]$, 以及线性无关性. 
>
> 1. 依照 $f(\alpha)=0$, $\alpha^{\geq 3}$ 可以由更低次项的线性组合表示. 这说明 $\mathrm{Span}(1,\alpha,\alpha^2)= \Bbb Q[\alpha]$. 
> 2. 我们断言 $1,\alpha, \alpha^2$ 线性无关. 若存在非零线性组合使得 $a+ b\alpha + c\alpha^2=0$, 则 $\alpha$ 具有次数小于 $3$ 的零化多项式, 这和 $f$ 不可约矛盾. 
>
> 为找到 $\varphi$ 的矩阵表示, 直接计算得
> $$
> \begin{align*}
> \varphi (1\mid \alpha \mid \alpha^2)&=(\varphi (1)\mid \varphi (\alpha )\mid \varphi (\alpha^2))\\ 
> &=(3\alpha ^2 + p \mid 3\alpha ^3 + p\alpha \mid 3\alpha ^4 + p\alpha ^2)\\
> &=(3\alpha ^2 + p \mid -2p\alpha -3q\mid -2p\alpha^2 -3q\alpha )\\
> &=(1 \mid \alpha \mid \alpha ^2)\cdot \begin{pmatrix}
> p&-3q&0\\
> 0&-2p&-3q\\
> 3&0&-2p
> \end{pmatrix}.
> \end{align*}
> $$

