## Supplementary Reading Material: On Dual Spaces

* 阅读提示: 无限维线性空间的对偶空间是一个含糊的概念. 通常的教材上有如下三类处理方式: 

  1. (右倾) 仅考虑可构造的对偶空间, 例如 $(\mathbb R[x])^\ast \simeq \mathbb R[\![x]\!]$, 但对一般情形避而不谈; 
  2. (折中) 明面上不使用甚至不承认选择公理, 但在背地里默认了一些反直觉的公理: 例如默认非零空间存在非零的对偶空间, 但从不给出证明; 
  3. (左倾) 直接使用选择公理. 

  有探索欲的读者不会接受右倾的处理方式, 而选择公理不在教学范围内. 本节习题将折中派的做法进行公理化, 用一条表述简单的额外公理为教材打上恰当的补丁. 我们最终承认通常公理与额外的 HB 公理. 

  * (通常公理). [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory) 与 [DC](https://en.wikipedia.org/wiki/Axiom_of_dependent_choice), 也就是矩阵论和数学分析承认的东西. 特别地, [DC](https://en.wikipedia.org/wiki/Axiom_of_dependent_choice) 用于证明可数个可数集的并仍可数, 以及无限维线性空间存在无穷大的线性无关组, 其严格独立于 [ZF](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory). 
  * (HB 公理). 对任意的子空间 $U \hookrightarrow V$, 映射 $f : U \to W$ 的定义域总能被扩大至 $V$. 换言之, 总能找到 $\widetilde f : V \to W$ 使得 $\widetilde f|_U = f$. 

  可以发现, [张贤科](https://czhang271828.github.io/Linear-algebra/%E5%8F%82%E8%80%83%E8%B5%84%E6%96%99/%E9%AB%98%E7%AD%89%E4%BB%A3%E6%95%B0%E5%AD%A6%E7%AC%AC%E4%BA%8C%E7%89%88%C2%B7%E5%BC%A0%E8%B4%A4%E7%A7%91.pdf)等教材的公理体系严格等价于通常公理 + HB 公理. 

  若不承认 HB, 我们无法排除 Exotic Examples (见习题) 的存在性. 可使用这些例子自查是否伪证了某些命题, 类似地, 有限域的重要作用也是自查伪证与否. 

  习题目录: 有限维对偶空间一瞥, 不承认 HB 的后果, 承认 HB 的好处, 对偶空间的 Galois 对应, 对偶空间的所有基本结论. 

### Finite-Dimensional Vector Spaces and Dual Spaces

**Definition.** Let $V$ be a vector space over a field $\mathbb{F}$. The dual space is defined as

$$
V^\ast := \mathrm{Hom}_{\mathbb{F}}(V, \mathbb{F}).
$$
**Example.** For $\dim V = n < \infty$, with basis ${u_i}_{1\leq i\leq n}$, the dual space $V^\ast$ is also $n$-dimensional with basis (dual basis)
$$
\{f_i\}_{1 \leq i \leq n},\quad f_i : V \to \mathbb{F},\quad u_j \mapsto \delta_{i,j}.
$$
From the perspective of bilinear forms, the pairing
$$
V \times V^\ast \to \mathbb{F},\quad (u,f) \mapsto f(u)
$$
has matrix form $I_{n \times n}$ under the bases $\{u_i\}_{1\leq i\leq n}$ and $\{f_i\}_{1\leq i\leq n}$.

**Note.** The isomorphism $V \simeq V^\ast$ is artificial. An informal but illustrative analogy: assume $V$ has unit kilometre ($\mathrm{km}$), then $V^\ast$ has unit $\mathrm{km}^{-1}$. The linear isomorphism $V \simeq V^\ast$ is never natural.

**Example.** The canonical linear map $\eta_V: V \to V^{\ast\ast}$ is a natural isomorphism.

- The term "natural" signifies that for any linear map $f : U \to V$, the compositions $U \xrightarrow f V \xrightarrow{\eta_V} V^{\ast\ast}$ and $U \xrightarrow{\eta_U} U^{\ast\ast} \xrightarrow{f^{\ast\ast}} V^{\ast\ast}$ coincide.

### Exotic Examples in Linear Algebra Without the Axiom of Choice

**Example.** ($\dim V = \infty$, yet $V^\ast = 0$). *If the axiom of choice is not assumed*, then there do exist infinite-dimensional vector spaces $V$ with dual space $V^\ast = 0$. The [example](https://eudml.org/doc/139241) by H. Läuchli presents an infinite-dimensional vector space $V$ whose proper subspaces are all finite-dimensional.

**Example.** (When $V^\ast$ is strictly larger than $V$, yet $V \simeq V^{\ast\ast}$). *In ZF set theory with dependent choice*, it takes effort to verify $\mathbb{R}[[x]]^\ast \simeq \mathbb{R}[x]$. However, $\mathbb{R}[[x]]$ does not possess a countable basis.

**Proposition.** The canonical linear map $V \to V^{\ast\ast}$ is injective if and only if $V$ is a subspace of some product space $\prod_X \mathbb{F}$. For instance, $\mathbb{F}[x]$ and $\mathbb{F}[[x]]$ both embed into their double dual spaces.

*Proof.* See [this article](https://czhang271828.github.io/Linear-algebra/Week VI/supplementary reading material/When V is a subspace of DDV.pdf).

### Axiom of Extension

**Axiom.** (Axiom of Extension, also known as the Hahn-Banach Axiom (HB)).

- For any linear subspace $U \subseteq V$, every linear map $f : U \to W$ extends to a map $\widetilde{f}: V \to W$ such that $\widetilde{f}|_U = f$.

**Remark.** The Hahn-Banach Axiom is independent of the usual axioms (ZF + DC), which are assumed in the study of tensor products of infinite-dimensional vector spaces.

**Exercise.** The Hahn-Banach Axiom is equivalent to the assertion that $\mathrm{Hom}_{\mathbb{F}}(-, W)$ always maps injections to surjections.

> 对 $U \hookrightarrow V$, 映射 $(\pi , W)$ 是满的, 当且仅当一切 $U\to W$ 通过 $U \hookrightarrow V$ 分解. 等价地, 这说明一切子空间 $U$ 出发的映射可以提升至全空间 $V$.  

**Exercise.** By HB, for any $v_1 ,v_2 \in V$ with $v_1 \neq v_2$, there exists $f \in V^\ast$ such that $f(v_1) \neq f(v_2)$. Hence, the canonical linear map $V \to V^{\ast\ast}$ is always injective.

> 不妨设 $v_2=0$, 将映射 $\mathrm{span}(v_1) \simeq \mathbb F$ 的定义域提升至全空间 $V$ 即可. 
>
> 作为推论, 记 $V \to V^{\ast\ast}$ 为 $u \mapsto \delta_u$. 依定义, $\delta_u \neq \delta_v$ 的充要条件是存在 $f$ 使得 $f(u) \neq f(v)$. 证毕. 

**Exercise.** By HB, show that for $U \hookrightarrow V$, the following map is an isomorphism
$$
\frac{V^{\ast\ast}}{U^{\ast\ast}} \to (V/U)^{\ast\ast},\quad [x]_{U^{\ast\ast}} \mapsto \pi^{\ast\ast}(x),
$$
where $\pi$ is the natural quotient map $V \twoheadrightarrow V / U$.

> 依照 $(-, \mathbb F)$ 的性质, $(V/U)^\ast \xrightarrow {\pi^\ast} V^\ast$ 是 $V^\ast \xrightarrow{i^\ast} U^\ast$ 的 kernel. 依照 HB, $V^\ast \xrightarrow{i^\ast} U^\ast$ 是满的. 这一步骤示意作
> $$
> [U \overset {i} \hookrightarrow V \overset \pi \twoheadrightarrow (V/U)]\implies[(V/U)^\ast \overset {\pi^\ast} \hookrightarrow V \overset {i^\ast} \twoheadrightarrow U].
> $$
> 重复以上步骤, 得二次对偶的情形, 即 $V^{\ast} \xrightarrow{\pi^{\ast\ast}} (V/U)^{\ast\ast}$ 是满射, kernel 通过 $U^{\ast\ast} \hookrightarrow V^{\ast\ast}$ 实现. 

### Dual Spaces and Galois Correspondence

**Definition.** (Kernels and Annulateurs). For convenience, let $U_i$ denote subspaces of $V$, and $B_i$ subspaces of $V^\ast$.

- $\operatorname{ann} U := {f \in V^\ast \mid f(U) = 0}$, a subspace of $V^\ast$;
- $\ker B := {u \in V \mid f(u) = 0 \ (\forall f\in B)} = \bigcap_{f \in B} \ker f$, a subspace of $V$.

These notions are defined for subsets in general. By the closure property:

- $\operatorname{ann}(X) = \operatorname{ann}(\mathrm{span}(X))$, for $X \subseteq V$;
- $\ker(S) = \ker(\mathrm{span}(S))$, for $S \subseteq V^\ast$.

**Remark.** $\ker f$ and $\ker {f}$ are identical.

**Exercise.** Show that for any finite-dimensional vector space $V$, the map $\operatorname{ann} : \text{Subspaces of } V \to \text{Subspaces of } V^\ast$ is a bijection with inverse map $\ker$.

> 答: 对任意子空间 $B \subseteq V^\ast$, 取 $B$ 的基 $\{f_i\}_{i=1}^r$, 并扩充至 $V^\ast$ 的基 $\{f_i\}_{i=1}^n$, 记对偶基 $\{r_i\}_{i=1}^n$. 此时 $\ker B = \mathrm{span}(\{e_i\}_{i > r})$. 相应地, $\operatorname{ann}(\ker B) = \mathrm{span}(\{f_i\}_{i=1}^r) = B$. 另一方向同理.  

**Proposition.** One has $\operatorname{ann}(\ker B) \supseteq B$. Equality does not generally hold.

*Proof.* The formula $\operatorname{ann}(\ker B) \supseteq B$ involves logic more than algebra. For a counterexample, take $V$ as the space of continuous functions over $\mathbb{R}$, and $B = \mathrm{span}(\{\delta_r\}_{r \in \mathbb{Q}})$.

**Exercise.** (Galois Connection)

1. $\operatorname{ann}(\ker B) \supseteq B$,

   > 证明略. 

2. $\ker(\operatorname{ann}U) \supseteq U$,

   > 证明略. 

3. $\operatorname{ann}(\ker(\operatorname{ann} B)) = \operatorname{ann}(B)$,

   > 由前两问, $\operatorname{ann}(\ker(\operatorname{ann} B)) \subseteq \operatorname{ann}(B) \subseteq \operatorname{ann}(\ker(\operatorname{ann} B))$. 

4. $\ker(\operatorname{ann}(\ker B)) = \ker B$.

   > 同上. 

The pair $(\ker , \operatorname{ann})$ defines a Galois correspondence.

**Example.** For a set map $f : X \to Y$, the image and preimage maps $(f_\ast, f^\ast)$ form a Galois connection between $\mathrm{Subset}(X)$ and $\mathrm{Subset}(Y)$.

> 这是 17-Mar 的[作业题](https://czhang271828.github.io/Linear-algebra/Week%20V/Ex_17-Mar-2025%20(solution).pdf). 

**Definition.** Let $Op(\mathbb{R}^2)$ denote the set of open subsets of $\mathbb{R}^2$, and $Cl(\mathbb{R}^2)$ the set of closed subsets. Define:

1. $k : Op(\mathbb{R}^2) \to Cl(\mathbb{R}^2),\quad U \mapsto \overline{U}$ (closure);
2. $i : Cl(\mathbb{R}^2) \to Op(\mathbb{R}^2),\quad K \mapsto K^\circ$ (interior).

**Exercise.** Show that $ikik = ik$ and $kiki = ki$; hence, $(k,i)$ form a Galois connection.

> 对任意集合 $X$, 都有 
> $$
> ik(X) = iiik(X) \subseteq ikik(X) \subseteq ikkk(X) = ik(X). 
> $$
> $kiki = ki$ 证明类似. 对开集 $kik = k$ 是显然的; 对闭集, $iki =i$ 是显然的. 

**Exercise.** Given $X \subseteq \mathbb{R}^2$, show that at most seven distinct sets (including $X$) can be obtained by applying $k$ and $i$ repeatedly.

> 依照运算关系 $ii=i$, $kk=k$, $ikik=ik$, $kiki=ki$, 至多有 $\{X,i(X),k(X),ik(X),ki(X),iki(X),kik(X)\}$ 两两不同. 考虑排序
> $$
> \begin{matrix}
> & 1 & 2 & 3 & 4 & 5 & 6 & 7 & 8 & 9\\
> a &  &  &  &  & ki( X) &  &  &  & \\
> b &  &  &  & \nearrow  &  & \searrow  &  &  & \\
> c & k( X) & \rightarrow  & kik( X) & \rightarrow  & ik( X) & \rightarrow  & iki( X) & \rightarrow  & i( X)\\
> d &  & \searrow  &  &  &  &  &  & \nearrow  & \\
> e &  &  & \rightarrow  & \rightarrow  & X & \rightarrow  & \rightarrow  &  & 
> \end{matrix}
> $$
> 为表述方便, 以下给出 $\mathbb R$ 上的反例. 
>
> * (2d 不取等) 考虑单点. 
> * (4b 不取等) 考虑 $[a,b] \cap \mathbb Q$. 
> * (4c 不取等) 考虑 $[c,d]$. 
> * (6b 不取等) 考虑 $[c,d]$. 
> * (6c 不取等) 考虑 $[a,b] \cap \mathbb Q$. 
> * (8c 不取等) 考虑 $[x,y)\cup (y,z]$.  
> * (3e 不取等) 考虑 $[a,b] \cap \mathbb Q$. 
> * (7e 不取等) 考虑 $[c,d]$. 
>
> 令 $a<b<c<d<x<y<z$ 即可. 

**Exercise.** Show that one can obtain at most 14 distinct sets (including $X$ itself) by applying $i$ and $(-)^c$ repeatedly.

> 记 $(-)^c$ 为运算 $c$. 注意到 $ic = kc$, 以及 $kc=ci$. 对任意 $\{k,i,c\}$ 的组合式, 可以将所有 $c$ 移至开头, 使得式子中有且仅有 $0$ 或 $1$ 个 $c$. 往后同上. 

### The Yoga of Dual Spaces

**Theorem.** In the following table, FD denotes finite-dimensional cases, G denotes general cases, and HB refers to cases where the Hahn-Banach Axiom is assumed.

For a linear map $\varphi : U \to V$, define the dual map as
$$
\varphi^\ast : V^\ast \to U^\ast,\quad [V \to \mathbb{F},\ v \mapsto f(v)]\mapsto [U \to \mathbb{F},\ u \mapsto f(\varphi (u))].
$$

| No.  | Formula                                                      | FD       | G                | HB          |
| ---- | ------------------------------------------------------------ | -------- | ---------------- | ----------- |
| G1   | $\operatorname{ann}(\ker B) \overset ?= B$                   | $=$      | $\supseteq$      | $\supseteq$ |
| G2   | $\ker(\operatorname{ann} V) \overset ? = V$                  | $=$      | $\supset$        | $=$         |
| E1   | $\operatorname{ann}(V_1 + V_2) \overset ? = \operatorname{ann}(V_1) \cap \operatorname{ann}(V_2)$ | $=$      | $=$              | $=$         |
| E2   | $\operatorname{ann}(V_1 \cap V_2) \overset ? = \operatorname{ann}(V_1) + \operatorname{ann}(V_2)$ | $=$      | $\supseteq$      | $=$         |
| E3   | $\ker(B_1 + B_2) \overset ? = \ker B_1 \cap \ker B_2$        | $=$      | $=$              | $=$         |
| E4   | $\ker(B_1 \cap B_2) = \ker B_1 + \ker B_2$                   | $=$      | $\supseteq$      | $\supseteq$ |
| Z1   | $\ker \varphi^\ast \overset ?= \operatorname{ann}(\operatorname{im} \varphi)$ | $=$      | $=$              | $=$         |
| Z2   | $\ker \varphi \overset ? = \ker(\operatorname{im} \varphi^\ast)$ | $=$      | $\subseteq$      | $=$         |
| Z3   | $\operatorname{im} \varphi^\ast \overset ? = \operatorname{ann}(\ker \varphi)$ | $=$      | $\subseteq$      | $=$         |
| Z3'  | $\operatorname{im} \pi^\ast \overset ? = \operatorname{ann}(\ker \pi)$, with $\pi$ surj. | $=$      | $=$              | $=$         |
| Z4   | $\operatorname{im} \varphi = \ker(\ker \varphi^\ast)$        | $=$      | $\subseteq$      | $=$         |
| Z5   | If $f$ is surj., then $f^\ast$ is inj.                       | true     | true             | true        |
| Z6   | If $f$ is inj., then $f^\ast$ is surj.                       | true     | NaN              | true        |
| L1   | $S^\ast \overset ? \to V^\ast / \operatorname{ann}(S)$       | $\simeq$ | $\hookleftarrow$ | $\simeq$    |
| L2   | $(V/S)^\ast \overset ? \to \operatorname{ann}(S)$            | $\simeq$ | $\simeq$         | $\simeq$    |

> (G1) FD, G 见上. G 反例: $V$ 为 $\mathbb R$ 上连续函数, $B = \mathrm{span}(\{\delta_r\}_{r \in \mathbb Q})$. 
>
> (G2) FD, G 见上. 若有 HB, 任取 $v \in \ker(\operatorname{ann} V) \setminus V$. 定义
> $$
> \varphi : \mathrm{span}(v) \oplus V \to \mathbb F,\quad (\lambda v,x) \mapsto \lambda. 
> $$
> 将 $\varphi$ 的定义域扩张作 $V$, 得 $\widetilde \varphi \in \operatorname{ann}(V)$. 由假定, $\widetilde \varphi (v)=\varphi (v)=0$, 矛盾. 
>
> (E1) 基本逻辑: $\bigcap \cap \bigcap = \bigcap$. 
>
> (E2) $\supseteq$ 是基本逻辑. 若 HB, 任取 $f \in \operatorname{ann}(V_1 \cap V_2)$, 则 $f$ 视同商空间 $\frac{V}{V_1 \cap V_2}$ 出发的映射. 不妨设 $V_1 \cap V_2 = 0$, 取
> $$
> f_1: V_1 \oplus V_2 \to \mathbb F,\quad (x,y)\mapsto (f(x), 0). 
> $$
> 因此, $f = (f-\widetilde {f_1}) + \widetilde {f_1}$ 属于 $\operatorname{ann}(V_1) + \operatorname{ann}(V_2)$. 
>
> (E3) 同 (E1). 
>
> (E4) FD, G 见上. G 反例: $V$ 为 $\mathbb R$ 上连续函数, $B_1 = \mathrm{span}(\{\delta_r\}_{r \in \mathbb Q})$, $B_2 = \mathrm{span}(\{\delta_r\}_{r \in \mathbb Q^c})$. 
>
> (Z1) 先证明 $\ker \varphi ^\ast \subseteq \operatorname{ann}(\operatorname{im} \varphi)$. 任取 $f \in \ker \varphi ^\ast$, 则 $f \circ \varphi = 0$, 此时 $f \in \operatorname{im}\varphi$. 再证明 $\ker \varphi ^\ast \supseteq \operatorname{ann}(\operatorname{im} \varphi)$. 任取 $f \in \operatorname {ann}(\operatorname{im} \varphi)$, 总有 $f \circ \varphi ^\ast = 0$. 因此 $f \in \ker \varphi^\ast$. 
>
> (Z2) 先证明 $\ker \varphi \subseteq \ker (\operatorname {im}\varphi ^\ast)$. 任意 $x \in \ker \varphi$, 被形如 $f\circ \varphi$ 的映射零化, 即 $x \in \ker (\operatorname {im}\varphi)$. 再证明 HB 下 $\ker \varphi \supseteq \ker (\operatorname {im}\varphi ^\ast)$. 任取 $x \in \ker (\operatorname {im}\varphi ^\ast)$, 若 $\varphi (x) \neq 0$, HB 表明存在 $f$ 使得 $f(\varphi (x)) \neq 0$, 这与 $x \in \ker (\operatorname{im}\varphi^\ast)$ 矛盾. 因此 $x \in \ker \varphi$.  
>
> (Z3) 先证明 $\operatorname{im}\varphi ^\ast \subseteq \operatorname{ann}(\ker \varphi)$. 任取 $f \circ \varphi \in \operatorname{im}\varphi^\ast$, 则 $f \circ \varphi :\ker \varphi \to 0$, 因此 $f \circ \varphi \in \operatorname{ann}(\ker \varphi)$. 再证明 HB 下有 $\operatorname{im}\varphi ^\ast \supseteq \operatorname{ann}(\ker \varphi)$. 任取 $f \in \operatorname{ann}(\ker \varphi)$, 则 $\ker f \supseteq \ker \varphi$. 依照 HB, $f':\operatorname{dom}(\varphi)/\ker \varphi \to \mathbb F$ 通过单射 $\operatorname{dom}(\varphi)/\ker \varphi \hookrightarrow \operatorname{codom}(\varphi)$ 分解. 这说明 $f$ 通过 $\varphi$ 分解, 也就是 $f \in \operatorname{im}\varphi^\ast$. 
>
> (Z3') 若 $\varphi$ 是满的, 则 $\operatorname{dom}(\varphi)/\ker \varphi \hookrightarrow \operatorname{codom}(\varphi)$ 是同构. 此时无需 HB. 
>
> (Z4) 先证明 $\operatorname{im}\varphi \subseteq \ker (\ker \varphi^\ast)$. 任取 $\varphi(x) \in \operatorname{im}\varphi$, 则对任意 $f \in \ker \varphi^\ast$ 都有 $f(\varphi (x))=0$, 从而 $\varphi(x) \in \ker (\ker \varphi^\ast)$. 再证明 HB 下 $\operatorname{im}\varphi \supseteq \ker (\ker \varphi^\ast)$. 任取 $x \in \ker (\ker \varphi ^\ast)$, 则一切满足 $f \circ \varphi = 0$ 的 $f$ 零化 $x$. 若 $x \notin \operatorname{im}\varphi$, 考虑映射
> $$
> g : \operatorname{im}\varphi \oplus \mathrm{span}(x)\to \mathbb F,\quad (v,\lambda x) \mapsto \lambda.
> $$
> 将上述映射的定义域扩张至全空间, 则得到 $\widetilde g \circ \varphi = 0$, 但 $\widetilde g (x) \neq g(x)$, 矛盾. 
>
> (L1) 考虑包含映射 $i : S \hookrightarrow V$ 的对偶 $i^\ast$, 得 $\operatorname{im}(i^\ast) \simeq V^\ast / \ker i^\ast$. 此处 $\ker i^\ast$ 就是 $\operatorname{ann}(S)$. 通常情形下, $\operatorname{im}(i^\ast) \hookrightarrow S^\ast$ 是单射. 若承认 HB, 则所有 $S$ 上定义的映射可以扩张至 $V$ 上, 也就是 $\operatorname{im}(i^\ast) \hookrightarrow S^\ast$ 取等. 
>
> (L2) 再证明 $(V/S)^\ast \simeq \operatorname{ann}(S)$. 自然的商映射 $\pi : V \twoheadrightarrow V/S$ 给出单射 $\pi^\ast : (V/S)^\ast \hookrightarrow V^\ast$. 依商空间的特性, $f \in \operatorname {im}\pi^\ast$ 当且仅当 $f$ 限制在 $S$ 上是 $0$, 从而 $f \in \operatorname{ann}(S)$. 
>

**Remark.** When the general case (G) coincides with the HB case, the proposition is provable without additional axioms. When the FD case differs from the G case, the FD part is proved using dimension arguments. Nonexamples disprove the HB part of statements G1 and E4.

* G1-G2 come from Galois connection,  
* E1-E4 are elementary,  
* Z1-Z6 are taken from the [textbook of 张贤科](https://czhang271828.github.io/Linear-algebra/%E5%8F%82%E8%80%83%E8%B5%84%E6%96%99/%E9%AB%98%E7%AD%89%E4%BB%A3%E6%95%B0%E5%AD%A6%E7%AC%AC%E4%BA%8C%E7%89%88%C2%B7%E5%BC%A0%E8%B4%A4%E7%A7%91.pdf),  
* L1-L2 are taken from the [textbook of 黎景辉等](https://czhang271828.github.io/Linear-algebra/%E5%8F%82%E8%80%83%E8%B5%84%E6%96%99/%E9%AB%98%E7%AD%89%E7%BA%BF%E6%80%A7%E4%BB%A3%E6%95%B0%E5%AD%A6%20%E9%BB%8E%E6%99%AF%E8%BE%89%20%E7%99%BD%E6%AD%A3%E7%AE%80%20%E5%91%A8%E5%9B%BD%E6%99%96.pdf).  