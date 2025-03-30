**Problem Set for 3rd March 2025**

**Exercise**: Determine linear maps $\alpha, \beta : V \to V$ such that
$$
\alpha \circ \beta = \mathrm{id}_V,\quad \text{but}\quad \beta \circ \alpha \neq \mathrm{id}_V.
$$

> 答: 令 $V = \prod _{k \in \mathbb N}\mathbb F$, 即 $\mathbb F$ 中取值的数列空间. 定义 
>
> 1. (左移) $L: (x_0,x_1, x_2,\ldots) \mapsto (x_1, x_2, x_3,\ldots)$; 
> 2. (右移) $R: (x_0, x_1, x_2, \ldots) \mapsto (0,x_0,x_1,\ldots)$. 
>
> 此时, $L \circ R$ 是恒等映射, 但 $R \circ L$ 不是恒等映射. 

**Problem**: Let $\mathbb{F}$ denote the ground field, and let $S$ be any finite set.

1. Demonstrate that $\mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F})$ forms a vector space.

    > 答: 若 $f$ 与 $g$ 是 $(S \to \mathbb F)$-类型的映射, 则对任意 $\lambda \in \mathbb F$, 
    > $$
    > (\lambda f +g):S \to \mathbb F,\quad s \mapsto \lambda (f(s)) + g(s)
    > $$
    >  也是 $(S \to \mathbb F)$-类型的映射. 这说明 $\mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F})$ 对线性组合封闭, 从而是线性空间. 
2. Construct a linear bijection (hereinafter referred to as a *linear isomorphism*)
    $$
    \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F}) \to \mathbb{F}^{|S|}.
    $$
    
    > 答: 若 $S$ 空, 则左右两侧都是一元集. 也就是零线性空间. 假定 $S$ 非空, 记 $S = \{s_i\}_{1 \leq i \leq n}$, 取 $\phi$ 是如下映射
    > $$
    > \phi : \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F}) \to \mathbb{F}^{|S|},\quad f \mapsto (f(s_1), \ldots, f(s_n)).
    > $$
    > $\phi$ 将 $f$ 映至其定义式 $\{s \mapsto f(s)\}_{s \in S}$, 从而 $\phi$ 是单的; 任意 $(v_s )_{s \in S} \in \mathbb F^{|S|}$ 都能定义函数 $\{s \mapsto v_s\}_{s \in S}$, 从而 $\phi$ 是满的. 
3. Demonstrate that following function constitutes an injection of sets:
    $$
    \begin{align*}
    \varphi : S & \to \mathrm{Hom}_{\mathbb{F}}(\mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F}), \mathbb{F}) \\[6pt]
    s & \mapsto \begin{bmatrix}
    \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F}) &\to& \mathbb{F} \\
    f &\mapsto &f(s)
    \end{bmatrix}
    \end{align*}
    $$
    
    > 答: 用自然语言表述, $\varphi$ 将 $s \in S$ 映至线性函数在 $s$ 处的赋值. 为证明 $\varphi$ 单, 只需证明 $\varphi(x) = \varphi(y)$ 蕴含 $x=y$. 若不然, 假定 $x \neq y$, 则任取满足 $f(x) \neq f(y)$ 的函数 $f : S \to \mathbb F$. 此时,
    > $$
    > (\varphi(x))(f) = f(x) \neq f(y) = (\varphi (y))(f).
    > $$
    >  这与 $\varphi (x) = \varphi (y)$ 矛盾. 
    
4. Demonstrate that the image $\varphi (S)$ forms a basis for $\mathrm{Hom}_{\mathbb{F}}(\mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb{F}), \mathbb{F})$. 

    > 答: 取函数 $\{f_i\}_{1 \leq i \leq n} \subset \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb F)$, 满足
    > $$
    > f_i : s_j \mapsto \delta_{i,j}\cdot 1\quad (\text{$1$ 是域 $\mathbb F$ 的单位元}).
    > $$
    > 以上定义的 $\{f_i\}_{1 \leq i \leq n}$ 的线性无关, 因为对任意线性组合式 $\sum c_i f_i =0$, 总有
    > $$
    > \varphi(s_j): \sum c_i f_i \mapsto c_j \quad =0.
    > $$
    > 比较维数, $\{f_i\}_{1 \leq i \leq n}$ 是 $\mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb F)$ 的一组基, 其对偶基是 $\{\varphi (s_i)\}_{1 \leq i \leq n}$. 

5. This is how we define
   $$
   \mathbb Fs_1 \oplus \mathbb Fs_2\oplus \cdots \oplus \mathbb F s_n\quad S = \{s_1,\ldots, s_n\}.
   $$
