**Problem Set for 24 March 2025**

**Exercise** Prove **Isomorphism Theorem A**: If $\varphi :U \to V$ is a linear map, then 
$$
U / \ker \varphi \to \operatorname{im}\varphi ,\quad \underset{= [u]}{\underbracket{u+ \ker \varphi }}\mapsto \varphi(u)
$$
is an isomorphism. Demonstrate *step-by-step* that the quotient map satisfies the following properties:

1. It is well-defined: $\varphi (u)=0$ only if $[u] = [0]$; 
2. It is injective: $\varphi (u) = 0$ if $[u] = [0]$; 
3. It is surjective: every $y \in \operatorname{im}\varphi$ is the image of some $[u]$. 

<div style="page-break-after: always;"></div>

**Example**  We shall apply **Isomorphism Theorem A** to establish **Isomorphism Theorem B**, which asserts that for any linear subspaces $U$ and $V$:
$$
\frac{U + V}{U} \simeq \frac{V}{U \cap V}. 
$$

> *Proof.* We first define the map:
> $$
> \ell : V \to \frac{U + V}{U},\quad v \mapsto (v + U). 
> $$
> The map is surjective, since any $y \in \frac{U + V}{U}$ is of the form $u+v+U$, hence $y = (v+U)$ has a preimage $v$.
>
> The kernel of $\ell$ consists of elements for which $\ell (v) = 0$, i.e., $v \in U$. Thus, $\ker \ell = U \cap V$​. By **Isomorphism Theorem A**, we obtain:
> $$
> \frac{V}{\ker \ell} = \frac{V}{U \cap V} \simeq \operatorname{im}\varphi = \frac{U + V}{U}.
> $$

<div style="page-break-after: always;"></div>

**Exercise** Use **Isomorphism Theorem A** to prove **Isomorphism Theorem C**, which asserts that for inclusions of subspaces $U \subset V \subset W$, there exists an isomorphism:
$$
\frac{W}{V} \simeq \frac{W / U}{V / U}.
$$
> 答: 考虑映射
> $$
> \Phi : W / U \to W / V ,\quad (w+U) \mapsto (w + V).
> $$
>
> 1. 该映射是满的, 因为任意 $w + V$ 都有具有原像 $w + U$.
> 2. $\ker \Phi = \{w + U \mid w + V = 0 + V\} = \{v + U \mid v \in V\} = \frac{V}{U}$.
>
> 依照**同构定理 A**, $W/V = \operatorname{im}\Phi \simeq \frac{\operatorname{domain}\Phi}{\ker \Phi} = \frac{W / U}{V / U}$. 

<div style="page-break-after: always;"></div>

**Exercise** Use **Isomorphism Theorem A** to prove **Exercise 3.2** (见去年习题课讲义): Let $U_i \subset V_i$​ be subspaces, prove the isomorphism
$$
\frac{V_1 \times V_2}{U_1 \times U_2} \simeq \frac{V_1}{U_1} \times \frac{V_2}{U_2}.
$$
> 答: 考虑映射 
> $$
> \Phi: V_1\times V_2 \to \frac{V_1}{U_1} \times \frac{V_2}{U_2},\quad (v_1, v_2) \mapsto (v_1+U_1, v_2+U_2). 
> $$
> 最后例行公事: 判断满射, 找到 ker, 使用**同构定理 A**. 

<div style="page-break-after: always;"></div>

**Exercise** Let $f : V \to V$ be a linear map. Use **Isomorphism Theorem A** to show that 
$$
\frac{\operatorname {im} f}{\operatorname {im}f \cap \ker f} = \operatorname {im}f\circ f = \frac{\operatorname {im}f+\ker f}{\ker f}.
$$
> 答: $\text 左\simeq\text右$ 是**同构定理 B** 的直接表述. 往证 $\text 中\simeq\text右$: 考虑
> $$
> \Phi: \operatorname{im}f + \ker f \to \operatorname{im} f \circ f,\quad v \mapsto f(v). 
> $$
> 最后例行公事: 判断满射, 找到 ker, 使用**同构定理 A**. 

<div style="page-break-after: always;"></div>

**Optional Exercise** Explain the following identity:
$$
\frac{\operatorname {im} f^p }{\operatorname {im} f^p \cap \ker f^q} \simeq \frac{\operatorname {im} f^q + \ker f^p}{\ker f^p}.
$$
> 答: 上式来自 $\operatorname{im}f^{p+q}$ 的等价表述, 并使用了小技巧 $f^p \circ f^q = f^q \circ f^p$. 

Then prove Fitting lemma: 

1. (for linear endomorphisms) Let $f: \mathbb F^n \to \mathbb F^n$ be an endomorphism, then 
   $$
   \ker f^\infty = \ker f^n ,\quad \operatorname{im}f^\infty = \operatorname{im}f^n,
   $$
   and $\mathbb F^n = \ker f^\infty \oplus \operatorname {im} f^\infty$. 

   > 答: 考虑零空间的增长问题: 
   > $$
   > \begin{align*}
   > \qquad\qquad & \ker f^k = \ker f^{k+1} \\
   > \xRightarrow{\text{限制在子空间上}}&  \ker (f^k)|_{\operatorname{ker}f} = (\ker f^{k+1})|_{\operatorname{ker}f} \\ 
   > \xLeftrightarrow{\text{基本逻辑}} \  & \ker f^{k+1} = \ker f^{k+2}. 
   > \end{align*}
   > $$
   > 同样, 
   > $$
   > \begin{align*}
   > \qquad\qquad &\operatorname{im} f^k = \operatorname{im} f^{k+1} \\
   > \xRightarrow{\text{限制在子空间上}}& \operatorname{im} (f^k)|_{\operatorname{im}f} = (\operatorname{im} f^{k+1})|_{\operatorname{im}f} \\ 
   > \xLeftrightarrow{\text{基本逻辑}} \  & \operatorname{im} f^{k+1} = \operatorname{im} f^{k+2}. 
   > \end{align*}
   > $$
   > 依照归纳, 对 $k \geq n$, 零空间与像空间不会增长. 最后证明 Fitting 引理
   >
   > 1. 由 $\frac{\operatorname {im} f^\infty }{\operatorname {im} f^\infty \cap \ker f^\infty} \simeq \operatorname{im}f^\infty$, 故 $\operatorname {im} f^\infty \cap \ker f^\infty$; 
   > 2. 由 $\frac{\operatorname {im} f^\infty + \ker f^\infty}{\ker f^\infty} \simeq \operatorname{im}f^\infty \simeq \frac{V}{\ker f^\infty}$, 故 $\operatorname {im} f^\infty + \ker f^\infty = V$. 
   
2. (for matrices) Any $M \in \mathbb F^{n \times n}$ is similar to $\begin{pmatrix}D & O \\ O & N \end{pmatrix}$, where $D$ is invertible and $N$ is nilpotent.

   > 答: 直和项 $\operatorname {im} f^\infty \oplus \ker f^\infty = V$ 都是 $f$-不变子空间, 这给出了分块矩阵. 再由
   >
   > 1. $f: {\operatorname {im} f^\infty } \to \operatorname {im} f^\infty $ 是单射, 从而是同构; 
   > 2. $f: \ker f^\infty \to \ker f^\infty$ 幂零, 
   >
   > 这分别对应 $D$ 可逆, 以及 $N$ 幂零. 

<div style="page-break-after: always;"></div>

**Exercise** Let be $X \xrightarrow f Y \xrightarrow g Z$ linear maps with no additional assumptions. Show that

1. $g^{-1}(g(f(X))) = \operatorname{im}f + \ker g$; 

   > 答: ($\subset$ 方向) $y \in g^{-1}(g(f(X)))$ 是某一 $gf(x)$ 关于 $g$ 的原像, 也就是 $g(f(x) - y)=0$. 因此 $y \in \operatorname{im}f + \ker g$. 
   >
   > ($\supset$ 方向) 任意 $f(x) + y_{\in \ker g}$ 是 $gf(x)$ 关于 $g$ 的原像. 

2. $f(f^{-1}g^{-1}(0)) = \operatorname {im} f \cap \ker g$; 

   > 答: ($\subset$ 方向) 任意 $y\in f(f^{-1}g^{-1}(0))$ 既属于 $\ker g$, 又属于 $\operatorname{im} f$. 
   >
   > ($\supset$ 方向) 任意 $f(x) \in \operatorname {im} f \cap \ker g$ 满足 $g(f(x))=0$, 从而 $f(x)$ 是 $\ker(g \circ f)$ 中某元素关于 $f$ 的像. 

3. **Isomorphism Theorem B** implies 
   $$
   \frac{g^\ast 0 }{f_\ast f^\ast g^\ast 0 } \simeq \frac{g^\ast g_\ast f_\ast X}{f_\ast X}.
   $$
   
   > 答: 依照以上两问,
   > $$
   > \frac{\ker g}{\operatorname {im}f \cap \ker g} = \frac{g^\ast 0 }{f_\ast f^\ast g^\ast 0 }, \quad \frac{g^\ast g_\ast f_\ast X}{f_\ast X} = \frac{\ker g + \operatorname {im}f}{\ker g}.
   > $$
   > 之后就靠**同构定理 B**. 

