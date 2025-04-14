**Problem Set for 10 April 2025**

**Notation** Throughout, we denote by $\hookrightarrow$ a linear injection, $\twoheadrightarrow$ a linear surjection, and $\simeq$ or $\xrightarrow \sim$ a linear isomorphism. For simplicity, we write $(U,V) =: \mathrm{Hom}_{\mathbb{F}}(U, V)$.

**Exercise 1** Translation.

| S    | Functorial Language                                          | Natural Language                                             |
| ---- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1    | $(\varphi \circ -):(U, V_1) \twoheadrightarrow (U, V_2)$     | Every $U \xrightarrow f V_2$ factors through $V_1 \xrightarrow \varphi V_2$. |
| 2    | $(\varphi \circ -):(U, V_1) \hookrightarrow (U, V_2)$        | Any $U \xrightarrow f V_2$, which factors through $V_1 \xrightarrow \varphi V_2$, factors through $\varphi$ uniquely. |
| 3    | $(- \circ \psi):(U_1, V) \twoheadrightarrow (U_2, V)$        | Every $U_2 \xrightarrow g V$ factors through $U_2 \xrightarrow \psi U_1$. |
| 4    | $(- \circ \psi):(U_1, V) \hookrightarrow (U_2, V)$           | Any $U_2 \xrightarrow f V$, which factors through $U_2 \xrightarrow \psi U_1$, factors through $\psi$ uniquely. |
| 5    | $\ker\left[(U, V_1) \xrightarrow{\varphi \circ -} (U,V_2)\right]$ | The subspace of $(U, V_1)$ consisting of the linear maps whose image is contained in the image of $\varphi$. |
| 6    | $\mathrm{im}\left[(U, V_1) \xrightarrow{\varphi \circ -} (U,V_2)\right]$ | The subspace of $(U, V_2)$ consisting of the linear maps which factor through $V_1 \xrightarrow \varphi V_2$. |
| 7    | $\ker\left[(U_1, V) \xrightarrow{- \circ \psi} (U_2, V)\right]$ | The subspace of $(U_1, V)$ consisting of the linear maps whose kernel contains the image of $\psi$. |
| 8    | $\mathrm{im}\left[(U_1, V) \xrightarrow{- \circ \psi} (U_2, V)\right]$ | The subspace of $(U_2, V)$ consisting of the linear maps which factor through $U_2 \xrightarrow \psi U_1$. |

It is highly recommended to explain 3E-19 (linear algebra done right) in functorial language. 

<div style="page-break-after: always;"></div>

**Exercise 2** Suppose that $K \subseteq U$ is the kernel of $U \xrightarrow f V$. Denote the inclusion by the linear map $i : K \hookrightarrow U$. Show that for any linear space $W$, the linear map
$$
(f \circ -): (W,U) \to (W, V), \quad  \varphi \mapsto f \circ \varphi
$$
has kernel $(W, K)$ along with the inclusion
$$
(i \circ -): (W,K) \hookrightarrow (W, U), \quad  \varphi \mapsto i \circ \varphi.
$$
Show in steps that

**Step 1** $(i \circ -)$ is indeed an injection, identifying $(W,K)$ as a subspace of $(W,U)$.

> 左复合单射之行为, 是单射. 

**Step 2** Show that $\ker (f \circ -)$ coincides with the image of $(i \circ -)$, that is, the subspace $(W,K)$.

> 由 $(f \circ -) \circ (i \circ -) = (f \circ i) \circ -$ 恒零, 故 $\operatorname{im}(i \circ -) \subseteq\ker (f \circ -)$. 
>
> 另一方面. 若 $\psi \in \ker (f \circ -)$, 也就是 $W \xrightarrow \psi U \xrightarrow f V$ 复合为零, 则对任意 $w \in W$ 都有 $\psi (w) \in \ker f$. 此时 $\operatorname{im}\psi \subseteq \ker f$, 这说明可以将 $\psi$ 的值域限制在子空间 $\ker f \subseteq U$ 中. 换言之, $\psi$ 通过 $i : K \hookrightarrow U$ 分解, 亦即 $\psi \in \operatorname{im}(i \circ -)$. 

* 子空间 $(W,K)$ 中的映射, 视同 $(W,U)$ 中像含于 $K$ 的映射. 

<div style="page-break-after: always;"></div>

**Exercise 3** Suppose that $V \twoheadrightarrow \frac{V}{\operatorname {im} f}$ is the quotient map induced by a given $U \xrightarrow f V$. Denote the natural quotient map by the linear map $\pi :V \twoheadrightarrow \frac{V}{\operatorname {im} f}$. Show that for any linear space $X$, the linear map
$$
(-\circ f): (V,X) \to (U, X), \quad  \psi \mapsto \psi \circ f
$$
has kernel $(V/ (\operatorname {im} f),X)$ along with the inclusion
$$
(- \circ \pi ): (V / (\operatorname {im}f), X) \hookrightarrow (V, X), \quad  \psi \mapsto \psi \circ \pi.
$$
Show in steps that

**Step 1** $(- \circ \pi)$ is indeed a <font color = red>inj</font>ection, identifying $(V / (\operatorname {im}f), X) $ as a subspace of $(V,X)$.

> 右复合满射之行为, 是单射. 

**Step 2** Show that $\ker (- \circ f)$ coincides with the image of $(- \circ \pi)$, that is, the subspace $(V/ (\operatorname {im} f),X)$.

> 由 $(- \circ \pi) \circ (- \circ f) = - \circ (\pi \circ f)$ 恒零, 故 $\operatorname{im}(- \circ f) \subseteq\ker (- \circ \pi)$. 
>
> 另一方面. 若 $\varphi \in \ker (- \circ \pi)$, 也就是 $U \xrightarrow f V \xrightarrow \varphi X$ 复合为零, 则对任意 $u \in U$ 都有 $f (u) \in \ker \varphi$. 此时 $\operatorname{im}f \subseteq \ker \varphi$, 这说明可以将 $\varphi$ 的定义域下降至商空间 $V / \operatorname{im}f$ 中. 换言之, $\varphi$ 通过 $\pi :  V \twoheadrightarrow V / \operatorname{im}f$ 分解, 亦即 $\psi \in \operatorname{im}(- \circ \pi)$. 

* 子空间 $(V / (\operatorname {im}f), X)$ 中的映射, 视同 $(V,X)$ 中核含于 $\operatorname{im} f$ 的映射. 

<div style="page-break-after: always;"></div>

**Exercise 4** According to **Exercises 2-3**, translate the following statements into mathematical expressions (functorial language as mentioned in **Exercise 1**):

* For any linear map $f$, the linear maps annihilated by the pre-composition $(f \circ -)$ identify the linear maps with codomain $\ker f$.

  > 先做翻译: 
  >
  > 1. the linear maps annihilated by the pre-composition $(f \circ -)$, 也就是 $\ker (f \circ -)$; 
  > 2. the linear maps with codomain $\ker f$, 也就是 $\operatorname{im}(i \circ -)$. 
  >
  > 这就是后文的同构
  > $$
  > \underset{\text{maps with codomain $\ker f$.}}{\underbracket{(Z, \ker f)}}  \simeq \underset{\text{maps annihilated by the pre-composition $(f \circ -)$ }}{\underbracket{\ker\left[(Z, X) \xrightarrow {(f \circ -)} (Z,Y)\right]}},\quad \left[Z \xrightarrow \varphi \ker f\right] \mapsto \left[Z \xrightarrow \varphi \ker f \hookrightarrow X\right].
  > $$
  
* For any linear map $f$, the linear maps annihilated by the composition $(- \circ f)$ identify the linear maps with domain $\frac{\operatorname{codomain} f}{\operatorname{im} f}$.

  > 对偶命题. 略. 

<div style="page-break-after: always;"></div>

**Fact (optional)** Given $f : X \to Y$, we define 

1. $\ker f$ (kernel) the natural inclusion map $\{x \in X \mid f(x) =0\} \hookrightarrow X$, or just the subset $\{x \in X \mid f(x) =0\}$ for simplicity; 
2. $\operatorname{cok} f$ (cokernel) the natural quotient map $Y \twoheadrightarrow \{y + \operatorname {im}f \mid y \in Y\}$, or just the quotient set $\{y + \operatorname {im}f \mid y \in Y\}$ for simplicity. 

For any $Z$, one has the natural isomorphisms
$$
(Z, \ker f)  \simeq \ker\left[(Z, X) \xrightarrow {(f \circ -)} (Z,Y)\right],\quad \left[Z \xrightarrow \varphi \ker f\right] \mapsto \left[Z \xrightarrow \varphi \ker f \hookrightarrow X\right],
$$
and 
$$
(\operatorname{cok} f, Z)  \simeq \ker\left[(Y, Z) \xrightarrow {(- \circ f)} (X, Z)\right],\quad \left[\operatorname{cok} f \xrightarrow \psi Z \right] \mapsto \left[Y \twoheadrightarrow \operatorname{cok} f \xrightarrow \psi Z \right]. 
$$
The kernel objects and cokernel objects are defined not only for linear spaces but also for the entirety of mathematical structures, serving as solutions to the *problème d'application universelle*. For instance, if one seeks a subset of linear maps $(X,Y)$ that send a given subset $S \subseteq X$ to zero, then $(X/ \operatorname{span}(S), Y)$ precisely fulfils this requirement (by pre-composing the natural quotient map $X \twoheadrightarrow X / \operatorname{span}(S)$).

Analogously, the collection of Hom-spaces ${(X,Y_\lambda)}_{\lambda \in I} = \prod_{\lambda \in I}(X, Y_\lambda)$ corresponds to a single Hom-space $(X, \prod_{\lambda \in I} Y_\lambda)$, whereas the collection ${(X_\lambda , Y)}_{\lambda \in I} = \prod_{\lambda \in I}(X_\lambda ,Y)$ corresponds to a single Hom-space $(\coprod _{\lambda \in I} X_\lambda , Y)$ due to logical considerations.

