**Problem Set for 28 April 2025** 

> [!IMPORTANT]
>
> The following exercises concern the theory of dual spaces and their associated structures.

**Definition.** (Kernels and Annulateurs). For convenience, let $U_i$ denote subspaces of $V$, and $B_i$ subspaces of $V^\ast$.

- $\operatorname{ann} U := \{f \in V^\ast \mid f(U) = 0\}$, a subspace of $V^\ast$;
- $\ker B := \{u \in V \mid f(u) = 0 \ (\forall f\in B)\} = \bigcap_{f \in B} \ker f$, a subspace of $V$.

These notions are defined for subsets in general. By the closure property:

- $\operatorname{ann}(X) = \operatorname{ann}(\mathrm{span}(X))$, for $X \subseteq V$;
- $\ker(S) = \ker(\mathrm{span}(S))$, for $S \subseteq V^\ast$.

**Definition** The $4$ funcdamental spaces of a matrix

- $N(A)$: null space (column vectors),
- $C(A)$: column space (column vectors),
- $L(A)$: left null space (row vectors),
- $R(A)$: row space (row vectors).

**Definition** For $\varphi : U \to V$, we define the dual map
$$
\varphi ^\ast : V^\ast \to U^\ast ,\quad \ell \mapsto \ell \circ \varphi.
$$
In other word, $\varphi ^\ast$ means the pre-composition.

<div style="page-break-after: always;"></div>

**Exercise 0** (Very easy exercise). Show that $\varphi ^\ast$ is injective when $\varphi$ is surjective.

> [!WARNING]
>
> $U$ and $V$ are not finite dimensional in general, so never take the basis.

> 若 $f : U \to V$ 是满的, 则对任意 $W$, 
> $$
> \mathrm{Hom}_{\mathbb F}(V,W) \to \mathrm{Hom}_{\mathbb F} (U,W),\quad \alpha \mapsto \alpha \circ f
> $$
> 总是单的.

<div style="page-break-after: always;"></div>

**Exercise 1** Show that $\operatorname{ann}(\operatorname{im} \varphi)$ and $\ker (\varphi^\ast)$ are the same subspaces of $V^\ast$. 

> [!TIP]
>
> You are encouraged to restate the equality $\operatorname{ann}(\operatorname{im} \varphi) = \ker (\varphi^\ast)$ in natural language. One possible (oral) answer is:
>
> * for any $f \in V^\ast$ killed by the $(- \circ \varphi)$, $f$ kills all $\varphi (u)$'s. 

> [!WARNING]
>
> $U$ and $V$ are not finite dimensional in general, so never take the basis.



> $$
> [f \in \operatorname{ann}(\operatorname{im} \varphi)]\iff [f(\operatorname{im}\varphi ) = 0] \iff [f \circ \varphi = 0 ] \iff [f \in \ker (\varphi ^\ast)]
> $$

<div style="page-break-after: always;"></div>

**Exercise 2** When $\varphi$ is surjective, show that $\operatorname{im} (\varphi^\ast)$ and $\operatorname{ann}(\ker \varphi)$ are the same subspaces of $U^\ast$

> [!TIP]
>
> You are encouraged to restate the equality $\operatorname{im} (\varphi^\ast) = \operatorname{ann}(\ker \varphi)$ in natural language. One possible (oral) answer is:
>
> * for any $g \in U^\ast$ killing $\ker \varphi$, $g$ factors through $\varphi$.

> [!WARNING]
>
> $U$ and $V$ are not finite dimensional in general, so never take the basis.

> $$
> [f\in \operatorname{ann}(\ker \varphi)] \iff \left[(\ker \varphi \xrightarrow \iota U \xrightarrow f \mathbb F) = 0\right] \iff [\text{$f$ 通过 $\mathrm{cok}(\iota)$ 分解} ] \iff [f \in \mathrm{im}(\varphi ^\ast)].
> $$

<div style="page-break-after: always;"></div>

**Exercise 3** When $\varphi : S \hookrightarrow V$ is injective, show that both $(V/S)^\ast$ and $\operatorname{ann}(S)$ are isomorphic to $\ker (\varphi ^\ast)$. 

> [!CAUTION]
>
> Can we write $(V/S)^\ast = \operatorname{ann}(S)$ here; consider the appropriate interpretation involving isomorphisms.

> [!WARNING]
>
> $U$ and $V$ are not finite dimensional in general, so never take the basis.

> 由 **Ex 1**, $\operatorname{ann}(S)$ 与 $\ker (\varphi ^\ast)$ 是相同的 $V^\ast$ 的子空间. 下考虑单射
> $$
> (- \circ \pi ) : (V/S)^\ast \to V^\ast,\quad l\mapsto l \circ \pi.
> $$
> 这一单射的像是形如 $V\to \mathbb F$ 的且被商空间 $V/S$ 分解的映射, 从而恰好是将 $S$ 零化的映射.
>
> 综上, $(V/S)^\ast \simeq \operatorname{ann}(S) = \ker (\varphi ^\ast)$, 同构的实现方式是右复合满射 $\pi$.

<div style="page-break-after: always;"></div>

**Exercise 4** For any $V$, we define the evaluation as before:
$$
\Phi _V : V \to V^{\ast\ast}, \quad v \mapsto \begin{bmatrix}V^\ast & \to & \mathbb F \\\ell & \mapsto & \ell (v)\end{bmatrix}.
$$
We define $\varphi^{\ast \ast} := (\varphi ^\ast)^\ast$, that is, the pre-composition of $\ell : U^\ast \to \mathbb F$ by $\varphi ^\ast : V^\ast \to U^\ast$. Show the equality of the compositions 
$$
\left[U \xrightarrow f V \xrightarrow {\Phi_V} V^{\ast\ast} \right] =\left[U \xrightarrow {\Phi_U} U^{\ast\ast} \xrightarrow{f^{\ast\ast}} V^{\ast\ast} \right].
$$
In other words, $\Phi _V(f(u)) = f^{\ast\ast}(\Phi _U(u))$ for any $u \in U$. This is why we say $\Phi$ is natural.

> [!TIP]
>
> This can be demonstrated using string manipulations, even if the conceptual meaning is not yet fully clear.

> [!WARNING]
>
> $U$ and $V$ are not finite dimensional in general, so never take the basis.

> 一方面, $\left[U \xrightarrow f V \xrightarrow {\Phi_V} V^{\ast\ast} \right]$ 描述作
> $$
> U \to V^{\ast\ast},\quad u \mapsto \begin{bmatrix} V^\ast & \xrightarrow{\Phi _V({\color{red }f(u)})} & \mathbb F \\ \ell  & \mapsto & \ell ({\color{red}f(u)})\end{bmatrix}
> $$
> 另一方面, $\left[U \xrightarrow {\Phi_U} U^{\ast\ast} \xrightarrow{f^{\ast\ast}} V^{\ast\ast} \right]$ 描述作
> $$
> U \to V^{\ast\ast},\quad u \mapsto \begin{bmatrix} V^\ast & \xrightarrow{f^{\ast\ast}(\Phi_U(u))} & \mathbb F \\ \ell  & \mapsto & (f^{\ast\ast}(\Phi_U))(\ell) \end{bmatrix}
> $$
> 此处 
> $$
> (f^{\ast\ast}(\Phi_U(u)))(\ell) = (((\Phi_U(u) )\circ f^\ast))(\ell) = (\Phi_U(u))(f^\ast (\ell)) = (\Phi _U(u))(\ell \circ f) = (\ell \circ f)(u).

> $$
> 第一部分的操作是 $[(fu)^{II}? \to ?fu]$, 第二部分的操作是 $[(f^{II}u^{II})? \to u^{II}f^I? \to u^{II}?f \to ?fu]$. 以上运算默认右结合, 结论是 $(fu)^{II} = f^{II}u^{II}$.

<div style="page-break-after: always;"></div>

**Exercise 5** Show that 
$$
a : \mathbb F^{m \times n} \to (\mathbb F^{n \times m})^\ast ,\quad M \mapsto \begin{bmatrix}\mathbb F^{n \times m} & \to & \mathbb F \\ X& \mapsto & \mathrm{trace}(M\cdot X)\end{bmatrix}
$$
is a linear map. And show that $a$ is surjective.

> [!TIP]
>
> Consider how to demonstrate the surjectivity efficiently?

> 线性性的检验略. 若 $\dim U = \dim V$, 则 $f : U \to V$ 单等价于满等价于同构. 为证明 $a$ 满, 只需证明 $a$ 单.
>
> 选定非零的 $M$, 例如 $m_{i,j} \neq 0$, 往证 $a(M)$ 非零即可. 显然
> $$
> (a(M))E_{j,i} = \mathrm{tr}(ME_{j,i}) = m_{i,j} \neq 0.
> $$

<div style="page-break-after: always;"></div>

**Exercise 6** (For recreation). For finite dimensional vector space $V$ over arbitrary field $\mathbb F$, we write 

* $V := \mathbb F^{n \times 1}$, the space of columns vectors with common basis $\{e_i\}_{i=1}^n$, and
* $V^\ast := \mathbb F^{1 \times n}$, the space of row vectors with common basis $\{f^j\}_{j=1}^n$,

Define a **non-degenerate bilinear pairing** via the standard row-column multiplication:
$$
V^ \ast \times V \to \mathbb F,\quad (u_{\text{row}} ;v_{\text{column}}) \mapsto u \cdot v.
$$
Using this pairing, observe:

1. The left multiplication of a matrix $(A \cdot) : V \to V$, induces a dual linear map of the right multiplication of the matrix $(\cdot A) : V^\ast \to V^\ast$. Remind the identity
   $$
   (u; A\cdot v) = ( u \cdot A; v).
   $$

2. Once $V^\ast$ is viewed as a column space via the transpose $(-)^T : V^\ast \to V$, then:
   $$
   (\cdot A) = V^\ast \xrightarrow{(-)^T}V \xrightarrow {A^T \cdot } V \xrightarrow {(-)^T} V^\ast.
   $$
   Hence, if $\varphi : U \to V$ has the matrix form $M \in \mathbb F^{m \times n}$, $\varphi^\ast$ has the matrix form $M^T$. Now $(M^T)^T = M$ is consistent with the natural isomorphism.

**The question:** explain $\ker \varphi = \ker (\mathrm{im}(\varphi ^\ast))$ by 
$$
N(A) = \ker (A\cdot ) = \bigcap _{u \in V^\ast}\ker (uA \cdot ) = \ker (\operatorname{im}((A\cdot )^\ast)) = (L(A^T))^T.
$$
Analogously, explain $\mathrm{FD} \times \{\mathrm{Z}i\}_{i=1}^6$ in [this exercise](https://czhang271828.github.io/Linear-algebra/Week%20IX/exercises%20on%20dual%20spaces%20(solution).pdf#page=6).  

> 略.
