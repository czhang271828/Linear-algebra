**Problem Set for 12-May and 15-May**

The ambient field is $\mathbb R$.

**Exercise 1** Determine whether the following are inner product spaces (简要回答即可).

1. $V$ is the vector space continuous functions over $\mathbb R$, and the pairing is
   $$
   (f,g) \mapsto \int_0^1 f(x)g(x) \operatorname dx.
   $$

   > 不是内积空间. 存在 $f \neq 0$ 使得 $(f,f) = 0$.
   
2. $V = \mathbb R[x]$, and the pairing is
   $$
   (f,g) \mapsto \int_{-\infty}^\infty f(x)g(x)e^{-x^2} \operatorname dx.
   $$

   > 是内积空间. 显然 $(f,g)$ 是对称双线性型. 对任意 $f$ 总有 $(f,f) < \infty$ (积分收敛). 从而 $(f,g) = \frac{(f+g,f+g) - (f,f)-(g,g)}{2}$ 良定义. 
   
3. $V = \mathbb R^{n \times n}$, and the pairing is
   $$
   (A,B) \mapsto \det (A^T\cdot B).
   $$
   
   > 不是内积空间 (除去 $n=1$ 的平凡情况). 存在 $A \neq O$ 使得 $\det(A^TA) = 0$.
   
4. (**optional**) By axiom of choice, any $\mathbb R$-vector space can be endowed with an inner product structure.

   > 取定义线性空间 $V$ 的一组基 $\mathscr B$, 则任意 $x \in V$ 能唯一地写作**有限和** $\sum \lambda _i x_i$. 定义正定二次型 $(\sum \lambda _i x_i,\sum \lambda _i x_i) = \sum \lambda _i ^2$, 并由此定义内积即可.

**Exercise 2** Show that every real matrix is similar to a block diagonal matrix, wherein the candidates of the blocks are

1. the Jordan form of a real eigenvalue;

2. the block of the form
   $$
   \begin{bmatrix}
   H_{r,\theta } & Q &  &  & \\
    & H_{r,\theta } & Q &  & \\
    &  & \ddots  & \ddots  & \\
    &  &  & H_{r,\theta } & Q\\
    &  &  &  & H_{r,\theta }
   \end{bmatrix},
   $$
    where

   1. $H_{r,\theta} = \begin{bmatrix}
      r\cos \theta  & -r\sin \theta \\
      r\sin \theta  & r\cos \theta 
      \end{bmatrix}$, and
   2. $Q = \begin{bmatrix}
      0 & 0 \\ 1 & 0
      \end{bmatrix}$.

> 对实矩阵在 $\mathbb C$ 中的 Jordan 型, 非实数 Jordan 块成对出现. 下直接验证 
> $$
> \begin{bmatrix}
> H_{r,\theta } & Q &  &  & \\
>  & H_{r,\theta } & Q &  & \\
>  &  & \ddots  & \ddots  & \\
>  &  &  & H_{r,\theta } & Q\\
>  &  &  &  & H_{r,\theta }
> \end{bmatrix} \sim\begin{bmatrix}J_n(re^{i\theta}) & O \\ O & J_n (re^{-i\theta})\end{bmatrix}
> $$
> 记 $L$ 为左侧矩阵, $R$ 为右侧矩阵. 依照分块对角矩阵的行列式,
> $$
> \det (\lambda I - L) = (\det (\lambda I - H_{r,\theta}))^n = (x^2 - 2xr\cos \theta+ r^2)^n = \det (\lambda I - R).
> $$
> 任取 $\mu \in \{r e^{\pm i\theta}\}$, 使用待定系数计算得 $\dim \ker (\mu I - L) = 1$. 例如取 $(\mu I - L) \cdot v = 0$, 
>
> - 若 $v$ 前两项全为 $0$, 则 $v$ 的第三与第四项为 $0$, 归纳得 $v = 0$; 
> - 若前两项非零, 则比值确定. 取定 $v$ 的前两项, 则 $v$ 的第三与第四项唯一确定.
>
> 以上说明 $L$ 在 $\mathbb C$ 上的标准型只有两个 Jordan 块, 因此只能是 $R$ 的形式.

**Exercise 2.5** Show that every real matrix is a product of two real symmetric matrices.

> 记 $T$ 是 $\{0,1\}$-矩阵, 其中 $T_{i,j} = 1$ 当且仅当 $i + j = n+1$.
>
> 将任意 $X$ 写作上题中的标准型 $P^{-1} L P$, 则 $L = LT\cdot T$ 是对称矩阵的乘积. 因此
> $$
> X = P^{-1} LT P^{-1,T}\cdot P^TLP
> $$
>  是两个对称矩阵的乘积.

**Exercise 3** Let $(V, (-,-))$ be a finite dimensional real inner product space. For unit vector $v_0$ (i.e., $(v_0,v_0)=1$), we define the reflection
$$
\varphi : V \to V,\quad x \mapsto x - 2(x,v_0)\cdot v_0.
$$
Show that for isometric transform $\psi$ (i.e., $(\psi(u), \psi (v)) = (u,v)$), $1$ is an eigenvalue for $\psi$ or $\psi \circ \varphi$. Overall, $1 \in \sigma (\psi) \cup \sigma (\psi \circ \varphi)$.

> 本题先猜后证. 关于 $x$ 的构造, 可顺着目标式 $\varphi (x) = \psi (x)$ 画图猜测.
>
> 若 $1$ 不是 $\psi$ 的特征值, 则 $(\mathrm{id} - \psi)$ 是同构. 此时, 存在 $x$ 使得 $(\mathrm{id} - \psi )(x) = v_0$. 从几何角度看, $x- \psi (x)$ 与 $v_0$ 同向, 且 $\psi$ 等距, 则应有 $(x + \psi (x) , v_0) = 0$. 计算得 
> $$
> (x + \psi (x) , v_0) = (x+ \psi (x), x- \psi (x)) = (x,x) - (\psi (x), \psi (x))= 0.
> $$
> 此时
> $$
> \begin{align*}
> \varphi (x) &= x-(2x,v_0)v_0 \\
> & = x - (x-\psi (x), v_0)v_0 \\ 
> & = x - (v_0, v_0)v_0 \\ 
> &= x - v_0 \\ 
> &=  x - (x-\psi (x)) \\
> & = \psi (x).
> \end{align*}
> $$
> 由 $\varphi ^2 = \mathrm{id}$, 得 $1 \in\sigma (\psi \circ \varphi)$.

> 作为 Euclidean 空间的特例, 即内积形式为 $(u,v) := u^T v$ 的有限维实内积空间, 有以下引理.
>
> **Corollary (Minamomo's 1/2 theorem)** For orthogonal matrix $Q$ with $1 \notin \sigma (Q)$, the matrix $(I-Q)^{-1}$ has all $\frac{1}{2}$ on its diagonal.
>
> - We present the original proof as follows. For arbitrary index $i$, 
>   $$
>   k_i := e_i ^T (I - Q)^{-1}e_i\tag 1
>   $$
>    is exactly the $(i,i)$-th entry of $(I - Q)^{-1}$. We see that
>   $$
>   k_i = e_i^T(I - Q^T)^{-1} (Q^{-1}Q) e_i = e_i^T(I - Q)^{-1}( - Q)e_i.\tag 2
>   $$
>   Hence, $\mathrm{(1)} + \mathrm{(2)}$ yields
>   $$
>   2 k_i = e_i^T (I - Q)^{-1}(I - Q)e_i = 1.
>   $$
>
> The theorem also holds for unitary matrices.
>
> - Historical remark: Minamomo is one of our classmates who discovered this amazing theorem last night, where Minamomo is his/her wechat name written in Hiragana.

**Exercise 4** Set $V:=\mathbb R[x]$ and $V_0:=\{f\in \mathbb R[x]\mid f(0)=f(1)\}$.

1. Prove that $V\times V\to \mathbb R,\quad (f,g)\mapsto \int_0^1 f(x)g(x)\operatorname dx$ is an inner product.

2. Set $\mathscr D:V_0\to V,\quad f(x)\mapsto f^\prime (x)$. Find $\dim\ker(\mathscr D)$ and $\dim\operatorname{coker}(\mathscr D)$.

3. Define the inner product restricted on the subspace
   $$
   (\cdot ,\cdot )_0:V_0\times V_0\to \mathbb R,\quad (f,g)\mapsto \int_0^1 f(x)g(x)\operatorname d x.
   $$
   Is there any linear map $\mathscr D^\ast:V\to V_0$ such that for any $h\in V_0$ and $g\in V$,
   $$
    (\mathscr D^\ast g,h)_0=(g,\mathscr Dh)?
   $$

> 内积的对称双线性性是显然的, 关键是说明 $(f,f) = 0 \implies (f = 0)$. 若多项式在 $(0,1)$ 上恒零, 则自然是零多项式.
>
> 记 $\mathscr D = D \circ i$, 其中 $i : V_0 \to V$ 是包含映射, $D$ 是 $V$ 上的导数.
>
> 1. 由 $i$ 是单射, 故 $\dim \ker Di \leq \dim \ker D = 1$, 得 $\dim \ker Di  \in\{0,1\}$. 由常多项式属于 $V_0$, 取 $1$.
> 2. 由 $D$ 是满射, 故 $\dim \operatorname {coker} Di \leq \dim \operatorname{coker} i = 1$, 得 $\dim \operatorname {coker} Di \in \{0,1\}$. 由常多项式不属于 $\mathrm{im}(Di)$, 取 $1$.
>
> 不存在. 下使用反证法. 若 $\mathscr D^\ast$ 存在, 对任意 $h$ ($h(0) = h(1) = 0$) 与 $g \in V$, 总有
> $$
> (\mathscr D^\ast g, h)_0 = (g, \mathscr D h) = (-g', h).
> $$
> 取 $V_1 = \{x(x-1) f \mid f \in V\}$ 为以上 $h$ 所在的线性空间, 因此 $(\mathscr D^\ast g+ g') \in V_1 ^\perp$. 对任意 $\varphi \in V_1^\perp$, 有
> $$
> 0 = (\varphi , x(x-1)\varphi) = \int_0^1x(x-1) \varphi ^2 \operatorname dx.
> $$
> 因此 $\varphi = 0$. 这说明 $V_1^\perp = 0$, 从而 $(\mathscr D^\ast g + g') = 0$. 这与 $\mathrm{im}(\mathscr D^\ast) \subseteq V_0$ 矛盾.

**Exercise 5** Let $(V, (,))$ be an inner product space, where $V$ is not necessary finite dimensional.

- Say $\varphi ^\star$ is the adjoint of $\varphi \in \mathrm{Hom}_{\mathbb R}(V,V)$, provided $(\varphi^\star (x), y) = (x , \varphi (y))$ for arbitrary $x,y\in V$.

- Let $U$ be a subspace of $V$. Set
  $$
  U^\perp := \{v \in V \mid (u, v) = 0 , \forall u \in U\}  =\bigcap _{u \in U}\ker((u,-))
  $$

Now we assume that $\varphi$ is invertible, and $\varphi^\star$ exists.

1. Show that $\varphi^\star$ is injective, and $(\mathrm{im}(\varphi ^\star))^\perp = 0$.

   > 即证 $[\varphi^\star (y) = 0] \implies [y = 0]$. 由 $\varphi$ 可逆, 取原像 $x = \varphi ^{-1}(y)$, 得
   > $$
   > 0 = (\varphi^\star (y), x) = (y,\varphi (x)) = (y,y).
   > $$
   > 由内积空间定义, $y = 0$.
   >
   > 再证 $z \in \mathrm{im}(\varphi ^\star)^\perp$ 必为 $0$. 此时 $(\varphi^\star (-), z) = (-, \varphi (z))$ 是零映射, 因此 $\varphi (z) = 0$, 故 $z = 0$.
2. Show that $\varphi^\star$ is surjective $\implies$ $(\varphi^{-1})^\star$ exists and $(\varphi ^{-1})^\star = (\varphi^\star)^{-1}$.

   > 结合上一问, 题设是 $\varphi^\star$ 为同构. 此时
   > $$
   > (x,\varphi ^{-1}(y)) = ((\varphi^\star)(\varphi^\star)^{-1}(x), \varphi ^{-1}(y)) = ((\varphi^\star)^{-1}(x), \varphi (\varphi ^{-1}(y))) = ((\varphi^\star)^{-1}(x), y).
   > $$
   > 这一构造表明 $(\varphi^\star)^{-1} = (\varphi^{-1})^\star$.
3. Show that $(\varphi^{-1})^\star$ exists $\implies$ $\varphi^\star$ is invertible and $(\varphi ^{-1})^\star = (\varphi^\star)^{-1}$.

   > 若 $(\varphi^{-1})^\star$ 存在, 则
   > $$
   > ((\varphi^{-1})^\star (\varphi^\star) (x), y) = (\varphi ^\star (x),\varphi ^{-1}(y)) = (x, \varphi (\varphi ^{-1}(y))) = (x,y).
   > $$
   > 这说明 $(\varphi^{-1})^\star \varphi^\star$ 是恒等映射. 类似的计算 (调换位置) 表明 $\varphi^\star(\varphi^{-1})^\star$ 是恒等映射, 从而 $\varphi^\star$ 与 $(\varphi^{-1})^\star$ 是互逆的.
4. Let $V = \mathbb R[x]$ and $(f,g) := \sum_{n \geq 0}f_i g_i$, where $h = \sum h_i\cdot x^i$. Show that
   1. $(V, (,))$ is an inner product space;
   2. $L : f \mapsto \frac{f-f(0)}{x}$ is the linear map of moving left. Show that $(\mathrm{id}+L)$ is invertible;
   3. Show that $\varphi := (\mathrm{id}+L)^{-1}$ has no adjoint $\varphi^\star$.
   
   > 这都是直接的验证. 对于最后一点, 若 $((\mathrm{id}+L)^{-1})^\star$ 存在, 则 $(\mathrm{id}+L)^{\star}$ 是可逆的映射. 直接的计算表明 $(\mathrm{id}+L)^{\star} = (\mathrm{id}+R)$ 非满, 因为 $x \in \mathrm{im}(\mathrm{id}+R)$ 必然满足 $\sum x_i = 0$.

**Exercise 6** (**Optional, very interesting**). Find the dimension and inertia of the following symmetric bilinear form, and verify the invariant group action.

1. $V = \{X \in \mathbb R^{2 \times 2} \mid \mathrm{tr}(X) = 0\}$, and the pairing is $(A,B) \mapsto \mathrm{tr}(A\cdot B)$. Moreover, for $g \in \mathrm{GL}_2(\mathbb R)$,the pairing is invariant under $X \mapsto g\cdot X \cdot g^{-1}$.
   > **Step 0** $\dim V = 3$.
   >
   > **Step 1** The pairing is linear (trivial) and symmetric, since $\mathrm{tr}(AB) = \mathrm{tr}(BA)$.
   >
   > **Step 2** Let $(A_1,A_2,A_3) := (E_{1,2},E_{2,1}, E_{1,1}-E_{2,2})$ be a basis of $V$, the associated Gram matrix is the $3 \times 3$ symmetric matrix $(\mathrm{tr}(A_iA_j))_{3 \times 3}$ is $\begin{pmatrix}0 & 1 & 0 \\ 1 & 0 & 0 \\ 0 & 0 & 2\end{pmatrix}$. The inertia is $(++-)$.
   >
   > **Step 3** Since $\mathrm{tr}((gXg^{-1})\cdot (gYg^{-1})) = \mathrm{tr}(XY)$,  pairing is invariant under such group action.

2. $V = \mathbb R^{2 \times 2}$, and the pairing is $(A,B) \mapsto \mathrm{tr} (\mathrm{adj}(A)\cdot B)$. Moreover, for $(g,h) \in \mathrm{SL}_2(\mathbb R) \times \mathrm{SL}_2(\mathbb R)$, the pairing is invariant under $X \mapsto g\cdot X \cdot h^{-1}$.

   > $\dim V = 4$. 基 $(E_{1,1}\pm E_{2,2}, E_{1,2}\pm E_{2,1})$ 对应惯性指数 $(\pm, \pm)$. 对 $g \in \mathrm{SL}_2$, $\mathrm{adj}(g) = g^{-1}$.
   > $$
   > \mathrm{tr}(\mathrm{adj}(gXh^{-1})gYh^{-1})= \mathrm{tr}(h\mathrm{adj}(X)g^{-1}gYh^{-1}) = \mathrm{tr} (\mathrm{adj}(X)Y).
   > $$

3. $V = \left\{\begin{pmatrix}a & ib \\ ic & \overline a\end{pmatrix} \mid a \in \mathbb C;b,c \in \mathbb R\right\}$, the pairing is $(X,Y) \mapsto \mathrm{Re}(\mathrm{tr}(X \cdot \overline Y))$. Moreover, for $g \in \mathrm{GL}_2(\mathbb C)$, the pairing is invariant under $X \mapsto g\cdot X \cdot (\overline{g})^{-1}$.

   > $\dim V= 4$. 基 $(I, i(E_{1,1}-E_{2,2}), i(E_{1,2}\pm E_{2,1}))$ 对应惯性指数 $(+,+,\pm)$. 对 $g \in \mathrm{GL}_2(\mathbb C)$, 
   > $$
   > \mathrm{Re}(\mathrm{tr}(gX\overline g^{-1} \cdot \overline {gY\overline g^{-1}})) = \mathrm{Re}(\mathrm{tr}(X \cdot \overline Y)).
   > $$

4. (**Optional**, if you know tensor product). Let $U \wedge U$ be the quotient space of $U \otimes U$ by the relation $(a \otimes b+b \otimes a = 0)$. In particular, $\dim (U \wedge U) = \binom{\dim U}{2}$. Let $V = \mathbb R^4 \wedge \mathbb R^4$ be the $6$-dimensional vector space with basis $\{e_i \wedge e_j\}_{1 \leq i < j \leq 4}$, and the pairing is $(\lambda , \mu) \mapsto \lambda \wedge \mu$. Here $\bigwedge _{i=1}^4 \mathbb R^4$ is one-dimensional with basis $\{e_1 \wedge e_2 \wedge e_3 \wedge e_4\}$. Moreover, for $g \in \mathrm{SL}_4(\mathbb R)$, the pairing is invariant under $\mu \mapsto g \cdot \mu$. Here $g\cdot (\sum c_{i,j }e_i \wedge e_j) := \sum c_{i,j}(g\cdot e_i)\wedge (g\cdot e_j)$.

   > $\dim V = 6$. 基
   > $$
   > (e_1\wedge e_2 \pm e_3\wedge e_4, e_1\wedge e_3\pm e_2\wedge e_4, e_1\wedge e_4 \pm e_2\wedge e_3)
   > $$
   > 对应惯性指数 $(\pm , \mp, \pm )$. 对 $g \in \mathrm{SL}_4(\mathbb R)$, 
   > $$
   > \det (g\cdot \sum u_i\wedge v_i, g\cdot \sum x_j\wedge y_j) = \sum_{i,j} \det (gu_i \wedge gv_i \wedge gx_j\wedge gy_j). 
   > $$
   > 考虑 $\det ge_1 \wedge ge_2 \wedge ge_3 \wedge ge_4 = (\det g)\cdot (\det e_1 \wedge e_2\wedge e_3\wedge e_4)$, 上式 $g$ 可去.

The above calculation provides the elementary construction of low dimensional spin groups, that is, the double covering of special orthogonal groups. One learns from these construction that

1. $\mathrm{SL}_2(\mathbb R)/\{\pm I\} \simeq  \mathrm{SO}(2,1)$, and $\mathrm{SL}_2(\mathbb C)/\{\pm I\} \simeq  \mathrm{SO}_3(\mathbb C)$;
2. $(\mathrm{SL}_2(\mathbb R))^2 / \{\pm (I,I)\} \simeq \mathrm{SO}(2,2)$, and $(\mathrm{SL}_2(\mathbb C))^2 / \{\pm (I,I)\} \simeq \mathrm{SO}_4(\mathbb C)$;
3. $\mathrm{SL}_2(\mathbb C)/\{\pm I\} \simeq  \mathrm{SO}(3,1)$;
4. $\mathrm{SL}_4(\mathbb C) / \{\pm I\} \simeq \mathrm{SO}_6(\mathbb C)$, and $\mathrm{SL}_4(\mathbb R) \simeq \mathrm{SO}(3,3)$.

As corollaries, $\mathrm{SO}_4(\mathbb C)$ is a double cover of $\mathrm{SO}_3(\mathbb C)$, and the group isomorphism $\mathrm{SO}(3,1) \simeq \mathrm{SO}_3(\mathbb C)$ is a famous coincidence in quantum physics.

