**Exercise I**

Let $f : U \to V$ be a linear map with cokernel $\pi : V \to V / \operatorname{im} f$, and let $X$ be an arbitrary vector space. Show that:

$$
\operatorname{im}(X \otimes f) = \ker (X \otimes \pi).
$$

*Proof.* Since $X \otimes \pi$ is surjective, it suffices to demonstrate that the sequence

$$
X \otimes U \xrightarrow{X \otimes f} X \otimes V \xrightarrow{X \otimes \pi} X \otimes (V / \operatorname{im} f)
$$

is exact at $X \otimes V$, i.e., that $X \otimes (V / \operatorname{im} f)$ serves as the cokernel of $X \otimes f$.

By the universal property of cokernels, this is equivalent to the statement that for any linear map $\alpha : X \otimes V \to W$, one has $\alpha \circ (X \otimes f) = 0$ if and only if $\alpha$ factors through $X \otimes \pi$.

This is equivalent to asserting that:

$$
\mathrm{Hom}(X \otimes (V / \operatorname{im} f), W) \xrightarrow {(-)\circ(X\otimes \pi)} \mathrm{Hom}(X \otimes V, W)
$$

is the kernel of:

$$
\mathrm{Hom}(X \otimes V, W) \xrightarrow {(-)\circ(X\otimes f)} \mathrm{Hom}(X \otimes U, W).
$$

Utilising the canonical isomorphism $\mathrm{Hom}(A \otimes B, C) \cong \mathrm{Hom}(B, \mathrm{Hom}(A,C))$, it suffices to prove that:

$$
\mathrm{Hom}(V / \operatorname{im}(f), \mathrm{Hom}(X, W)) \xrightarrow{(-)\circ \pi} \mathrm{Hom}(V, \mathrm{Hom}(X, W))
$$

is the kernel of:

$$
\mathrm{Hom}(V, \mathrm{Hom}(X, W)) \xrightarrow {(-) \circ f } \mathrm{Hom}(U, \mathrm{Hom}(X, W)).
$$

This follows directly, as $\pi : V \to V / \operatorname{im}(f)$ is the cokernel of $f : U \to V$.

In summary,

$$
\begin{aligned}
\text{Exactness of} &\quad X \otimes U \xrightarrow {X \otimes f} X \otimes V \xrightarrow{\pi} X \otimes (V / \operatorname{im} f) \to 0 \\
\iff \text{Exactness of} &\quad 0 \to \mathrm{Hom}(X \otimes (V / \operatorname{im} f), W) \to \mathrm{Hom}(X \otimes V, W) \to \mathrm{Hom}(X \otimes U, W) \\
\iff \text{Exactness of} &\quad 0 \to \mathrm{Hom}(V / \operatorname{im}(f), \mathrm{Hom}(X, W)) \to \mathrm{Hom}(V, \mathrm{Hom}(X, W)) \to \mathrm{Hom}(U, \mathrm{Hom}(X, W)) \\
\Longleftarrow \ \text{Exactness of } &\quad U \xrightarrow f V \xrightarrow \pi V / \operatorname{im}f \to 0.
\end{aligned}
$$

---

**Exercise II**

Let $g : U \twoheadrightarrow V$ and $f : X \twoheadrightarrow  Y$ be surjective linear maps. Show that:

$$
\ker (f \otimes g) = \ker (f \otimes U) + \ker (X \otimes g).
$$

*Proof.* Clearly, $\ker (f \otimes U)$ and $\ker (X \otimes g)$ are contained in $\ker (f \otimes g)$, so:
$$
\ker (f \otimes g) \supseteq \ker (f \otimes U) + \ker (X \otimes g).
$$

Conversely, take any $a \in \ker (f \otimes g)$. Then:

* $(f \otimes U)(a) \in \ker (Y \otimes g) = \operatorname{im}(Y \otimes i_{\ker g})$, where $i_{\ker g} : \ker g \to U$ is the inclusion;
* There exists $b \in Y \otimes \ker g$ such that $(Y \otimes i_{\ker g})(b) = (f \otimes U)(a)$;
* There exists $c \in X \otimes \ker g$ such that $(f \otimes \ker g)(c) = b$;
* Then $(X \otimes i_{\ker g})(c) \in \ker (X \otimes g)$;
* And $(f \otimes U)(a - (X \otimes i_{\ker g})(c)) = 0$, so $a - (X \otimes i_{\ker g})(c) \in \ker (f \otimes U)$.

Thus:

$$
a = (a - (X \otimes i_{\ker g})(c)) + (X \otimes i_{\ker g})(c) \in \ker (f \otimes U) + \ker (X \otimes g).
$$

It is advisable to depict this argument with a diagram.

---

**Exercise III**

Let $\square$ be a rectangle of dimensions $x_0 \times y_0$, where $x_0, y_0 \in \mathbb{R}$. Suppose it can be subdivided into finitely many rectangles $\{\square_i\}_{i=1}^d$, each of which possesses at least one edge of rational length. Show that $\square$ itself must have at least one rational edge.

*Proof.* Let the dimensions of $\square_i$ be $a_i \times b_i$. Then, $\sum a_i \otimes_{\mathbb{Q}} b_i = x_0 \otimes y_0$. Let $\pi : \mathbb{R} \to \mathbb{R}/\mathbb{Q}$ be the canonical projection. By assumption, $x_0 \otimes y_0 \in \ker(\pi \otimes \pi)$. By Exercise II, it follows that $x_0 \otimes y_0 \in \mathbb{Q} \otimes_{\mathbb{Q}} \mathbb{R} + \mathbb{R} \otimes_{\mathbb{Q}} \mathbb{Q}$.

Hence, $x_0 \otimes y_0 = 1 \otimes n + m \otimes 1$ for some $m,n \in \mathbb{R}$. Restrict to the vector space $\, \mathrm{span}_{\mathbb{Q}}(1,m) \otimes_{\mathbb{Q}} \mathrm{span}_{\mathbb{Q}}(1,n)$, which contains $x_0 \otimes y_0$. If either $m$ or $n$ is rational, then $x_0$ or $y_0$ is rational. If both are irrational and $x_0 \otimes y_0 = (\alpha + \beta m) \otimes (\gamma + \delta n)$ has no $m \otimes n$ term, then at least one of $x_0$ or $y_0$ must be rational.

---

**Exercise IV**

Let $\square$ be a rectangle of size $x_0 \times y_0$ with $x_0 , y_0 \in \mathbb{R}$. Suppose that it can be partitioned into finitely many squares. Then $x_0 / y_0 \in \mathbb{Q}$.

*Proof.* Assume without loss of generality that $x_0 = 1$. Then:

$$
1 \otimes y_0 = \sum_{i=1}^n d_i \otimes d_i,
$$

for some $d_i \in \mathbb{R}$. Let $V = \mathrm{span}(y_0, d_1, \ldots, d_n)$. Consider any linear functional $f : V \to \mathbb{Q}$ such that $f(1) = 1$ and $f(y_0) = -1$. Then:

$$
(f \otimes f)(1 \otimes y_0) = -1 < 0 \leq \sum f(d_i)^2,
$$

a contradiction.

---

**Exercise V**

Show that 祖暅's theorem cannot be proven using only algebraic or combinatorial methods; that is, one cannot divide a tetrahedron into finitely many slices that reassemble into a cube.

*Proof.* For each edge $L_i$ in a polyhedron, let $\ell_i$ denote its length, and $\alpha_i$ the associated dihedral angle. Then:

$$
\sum \ell_i \otimes_{\mathbb{Q}} \frac{\alpha_i}{\pi}
$$

is invariant under finite decomposition and gluing. This sum evaluates to zero for a cube, but is non-zero for a tetrahedron with irrational edges, thereby precluding any such dissection into a cube.
