**Problem Set for 31 March 2025**

**Exercise 1** For $U \xrightarrow f V \xrightarrow g U$ ($\dim  < \infty$), show that 
$$
\dim \mathrm{im}(f)+\dim \mathrm{im}(g) \leq \dim \mathrm{im}(g\circ f) + \dim V.\tag{{\color{red}Sylvester Inequality}}
$$
The equality holds if and only if $\ker(g) \subset \mathrm{im}(f)$. 

> 答: 考虑 $\mathrm{im}(g\circ f) = \mathrm{im}(g|_{f(U)})$. 根据 RN 等式, 
> $$
> \dim \ker g|_{f(U)} + \dim \mathrm{im}(g\circ f) = \dim \mathrm{im}(f).
> $$
> 只需证明
> $$
> \dim \ker g|_{f(U)} + \dim \mathrm{im}(g) \leq  \dim V.
> $$
> 依照 RN 等式, 只需证明
> $$
> \dim \ker g|_{f(U)} \leq  \dim \ker g.
> $$
> 取等当且仅当 $\ker(g) \subset \mathrm{im}(f)$. 

<div style="page-break-after: always;"></div>

**Exercise 2** Let $A, B \in \mathbb F^{2m \times 2m}$ be matrices, such that
$$
A^2 = B^2 = I_{2m},\quad AB+BA = O_{2m}.
$$
Show that there exists $P \in \mathrm{GL}_{2m}(\mathbb F)$ such that 
$$
PAP^{-1} = \begin{pmatrix}I_m & O \\ O & -I_m\end{pmatrix},\quad PBP^{-1} = \begin{pmatrix}O&I_m \\ I_m & O \end{pmatrix}.
$$

> 答: 应当默认 $\mathbb F$ 的特征不为 $2$, 即 $1+1\neq 0$; 不然, $A=B=I$ 即是反例. 
>
> 由 $A$ 与 $B$ 的零化多项式 $x^2-1$ 在 $\mathbb F$ 上分解作一次因式的乘积, 故 $A$ 与 $B$ 在 $\mathbb F$ 上存在 Jordan 标准型. 简单讨论知 $A$ 与 $B$ 可对角化, 特征值为 $\pm 1$. 若 $Av = \lambda v$, 则
> $$
> A(Bv) = -B(Av)=(-\lambda) (Bv).
> $$
> 将 $A$ 与 $B$ 的左乘视作线性映射. 容易看出存在一组 $\mathbb F^{2m}$ 的基 $\{v_i\}_{i=1}^{2m}$, 使得
> $$
> \begin{matrix}
> \{v_i\}_{i=1}^{m} \xrightarrow  {A\cdot } \{v_i\}_{i=1}^{m}, & & \{v_i\}_{i=1}^{m} \xrightarrow  {A\cdot } \{-v_i\}_{i=m+1}^{2m} ,\\ 
> \{v_i\}_{i=1}^{m} \xrightarrow  {B\cdot } \{v_i\}_{i=m+1}^{2m}, & & \{v_i\}_{i=m+1}^{2m} \xrightarrow  {B\cdot } \{-v_i\}_{i=m+1}^{2m}.
> \end{matrix}
> $$
> 对线性自同态换基, 其在矩阵层面的表现是相似变换. 得证. 
>
> * 附: 寻找 $\{v_i\}$ 的方式. 取 $\ker (I- A)$ 的一组基 $S_1$, 此时 $B(S_1) \subset \ker (I+A)$. 由 $B^2 =I$ 知 $B(S_1)$ 是线性无关组. 将 $B(S_1)$ 扩充至 $\ker (I+A)$ 的基 $S_{-1}$, 类似可证 $B(S_{-1})$ 是 $\ker (I-A)$ 中的线性无关组. 因此 $B : S_1 \to S_{-1}$ 是双射. 最后记 $\{v_i\}_{i=1}^{m} = S_1$, 并定义 $v_{m+i} = B(v_i)$. 
>
> * **(optional, but very easy)** For what kind of $z \in \mathbb C$, one can find $A,B\in \mathbb C^{2025 \times 2025}$ such that $AB = z \cdot BA \neq O$? 
>
>   > 答案是 $0$ 与所有 $m$-次单位根, $m$ 取遍 $1 \leq m \leq 2025$. 先用线性变换猜出必要条件, 继而构造性地证明即可. 
>   >
>   > 显然 $z$ 可以为零, 考虑 $\binom{1 \ \ 0}{0 \ \ 0}$ 和 $\binom{0 \ \ 0}{0 \ \ 1}$ 之类的构造即可. 以下考虑 $z \neq 0$ 的情况. 
>   >
>   > 任取 $B$ 的非零特征根 $\lambda$ 对应的特征向量 $v$. 此时 $V: = \mathrm{span}(\{A^k v\}_{k \geq 0})$ 是 $A$ 与 $B$ 公共的非零的不变子空间, 维度是 $1 \leq n \leq 2025$. 
>   >
>   > 将 $A$ 与 $B$ 视作限制在不变子空间上的线性映射, 记作 $A|_V$ 与 $B|_V$. 在基 $\{A^k v\}_{ k\geq 0}$ 下, $A|_V$ 是多项式的友矩阵, $B|_V$ 是以 $z^k \cdot \lambda$ 为对角元的对角矩阵. 由 $(B|_V)^{-1}A|_VB|_V = z \cdot A|_V$, 得 
>   > $$
>   > (A|_V)_{i,j} \cdot z^{i-j} = z \cdot (A|_V)_{i,j}.
>   > $$
>   > 比对系数, 得等式成立的必要条件: $z^{\dim V} = 1$. 
>   >
>   > 往后证明, 对任意 $z$ ($m \leq 2025$, $z^m = 1$), 都可以构造符合条件的 $A$ 和 $B$. 先取 $A$ 和 $B$ 的规格为 $\binom{\ast_{m \times m} \ O}{\ \ O\quad  O}$, 在 $\ast$ 处分别取 $m$-轮换矩阵和对角矩阵 $\mathrm{diag}(z , z^2 , \ldots z^m)$. 依照定义, $AB = z BA$. 
>
> * **(optional, but very easy)** Find non-examples when $\mathbb F$ has characteristic $2$, i.e., $1+1 =0$. 
>
>   > $A=B=I$. 

<div style="page-break-after: always;"></div>

**Exercise 3** Let $V = \mathrm{Hom}_{\mathrm{Sets}}(\mathbb R, \mathbb R)$ be the set of continuous functions over $\mathbb R$, which also an $\mathbb R$-vector spaces. We know that for any $x \in \mathbb R$​, the map 
$$
\delta _x : \mathrm{Hom}_{\mathrm{Sets}}(\mathbb R, \mathbb R) \to \mathbb R,\quad f \mapsto f(x)
$$
is an surjection. 

1. Show that $\bigcap \limits_{x \in \mathbb R} \ker \delta_x =0$ (in few words).

   > 答: $f$ 是零映射, 当且仅当 $f$ 在每一点取零. 

2. Moreover, show that $\{f_i\}_{i=1}^n \subset V$ is linearly independent **if and only if** there exists $\{x_i\}_{i=1}^n \subset \mathbb R$ such that 
   $$
   \det (A_{n \times n}) \neq 0,\quad a_{i,j} =f_i (x_j).
   $$
   
   > 答: 若 $\{f_i\}$ 线性相关, 则 $\det A$ 恒等于 $0$. 若 $\{f_i\}$ 线性无关, 记 $n$ 维空间
   > $$
   > V = \mathrm{span}(\{f_i\})_{i=1}^n). 
   > $$
   > 依照 $V \cap \bigcap \limits_{x \in \mathbb R} \ker \delta_x =0$, 以及数学归纳, 存在 $\{x_i\}_{i=1}^n$ 使得 
   > $$
   > \dim \left(V \cap \bigcap \limits_{1 \leq k \leq i} \ker \delta_{x_k} \right) = n-k\quad (1 \leq k \leq n).
   > $$
   > 记 $V_k$ 为上式中满足 $\dim V_k = k$ 者. 此时存在 $V$ 的一组基 $\{g_i\}_{i=1}^n$ 使得 $\mathrm{span}(g_{\leq k}) = V_k$, 遂得三角矩阵的行列式 $\det (g_i (x_j)) \neq 0$. 由于 $\{g_i\}$ 与 $\{f_i\}$ 相差一个基变换, 故
   > $$
   > \det A = \det P \cdot \det g_i(x_j) \neq 0.
   > $$

<div style="page-break-after: always;"></div>

**Exercise 4 (optional)** (2023 年上海交通大学考研) 设 $U$, $V$, $W$ 是给定域上的线性空间. $U\xrightarrow \alpha V$ 与 $V \xrightarrow \beta W$ 是线性映射且满足 $U\xrightarrow {\beta \circ \alpha} W$ 是零映射. 若对任何一个线性空间 $X$ 和线性映射 $V\xrightarrow f X$ 使得 $U\xrightarrow{f\circ \alpha} X$ 为零, 都存在一个唯一的线性映射 $W\xrightarrow \mu X$ 使得 $f = \mu \circ \beta$, 证明

1. $\beta$ 是满射 (in few sentences). 
   * 提示: $\beta$ 是满射当且仅当对任意 $X$, 线性映射 $\mathrm{Hom}_{\mathbb F}(W, X) \xrightarrow{- \circ f} \mathrm{Hom}_{\mathbb F}(V, X)$ 总是单射. 
   
   > 答: 先作图
   > $$
   > \begin{bmatrix}
   > U & \xrightarrow{\alpha } & V & \xrightarrow{\beta } & W\\
   > \downarrow  & \text{若} & \ \ \downarrow f & \text{则} & \  \ \downarrow \color{red}\mu \\
   > 0 & \rightarrow  & X & = & X
   > \end{bmatrix}.
   > $$
   > 任意给定 $W \xrightarrow p X$, 则有 $V \xrightarrow {p \circ \beta} X$. 依照定义, $p \circ \beta$ 唯一确定了 $p$​, 从而
   > $$
   > \mathrm{Hom}_{\mathbb F}(W, X) \xrightarrow{- \circ \beta} \mathrm{Hom}_{\mathbb F}(V, X) \quad (\forall X).
   > $$
   >  是单射. 因此 $\beta$ 是满的. 
2. $\beta$ 诱导了线性同构 $W \simeq V / \mathrm{im}(\alpha)$. 换言之, 证明 $\beta$ 是满的, 且 $\ker(\beta) = \mathrm{im}(\alpha)$. 

   > 答: 直接取元素证明. 此处给出另一种仅用映射的方法. 
   >
   > 取 $V \xrightarrow fX$ 为商映射 $V \xrightarrow \pi V / \mathrm{im}(\alpha)$. 得 $W \xrightarrow \mu V / \mathrm{im}(\alpha)$ 使得 $\mu \circ \beta = \pi$. 由 $\ker[V \xrightarrow \beta W] \supset \mathrm{im}(\alpha)$, 故 $V \xrightarrow \beta W$ 诱导了 $V/\mathrm{im}(\alpha) \xrightarrow {\beta '} W$, 换言之, 
   > $$
   > \left[V \xrightarrow \pi V/\mathrm{im}(\alpha) \xrightarrow {\beta '} W\right] = [V \xrightarrow \beta W]. 
   > $$
   > 整合结论: 
   > $$
   > \mu \circ \beta = \pi,\quad \beta' \circ \pi = \beta.
   > $$
   > 因此 $(\mu \circ \beta ')\circ \pi = \pi$, 且 $(\beta' \circ \mu) \circ \beta = \beta$. 由于 $\pi$ 与 $\beta$ 都是满射, 从而可以右消去. 因此 $(\mu, \beta')$ 是互逆的映射. 这给出线性同构 $W \simeq V / \mathrm{im}(\alpha)$. 
