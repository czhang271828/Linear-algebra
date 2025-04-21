**Problem Set for 24 April 2025** 

This exercise serves as an application of dual spaces in analysis wherein the elementary portion concerns the construction of a dual space known as the space of distributions or generalised functions thereby formalising the definition of the Dirac delta function and the latter optional part introduces the convolution operator and provides an elementary proof of Liouville’s theorem for general harmonic functions as well as a relative version of the Stone-Weierstraß theorem applicable to a subspace defined by specific families of solutions to ordinary differential equations. 

If one recognises the punctuation importance of the comma, one ought to employ it conscientiously in one's homework.  

**Exercise: Dual Spaces in Analysis** Let $V = C_b^\infty (\mathbb{R}; \mathbb{R})$ denote the space of smooth, real-valued functions with compact support. This means that for any $f \in V$, the function $f$ is smooth and satisfies $f(x) \equiv 0$ for all $|x| > x_0$, for some real number $x_0$. The following problems concern the dual space $V^\ast$.

1. **($V$ is non-trivial)** Demonstrate that $V$ is not finite-dimensional. Hint: Consider the function
   $$
   a(x) := 
   \begin{cases}
   e^{1/(x^2 - 1)}, & x \in (-1,1), \\
   0, & \text{otherwise}.
   \end{cases}
   $$
   It suffices to verify that $a^{(k)}(\pm 1) = 0$ for all $k$.
   
   > 依数学归纳, $a^{(k)}(x) = q_k(x) \cdot \frac{a(x)}{(1-x^2)^k}$, 其中 $q_k(x)$ 是多项式. 依照数学分析, $\lim _{x \to \pm 1}\frac{a(x)}{(1-x^2)^k} = 0$. 
   
2. **(Differential Operator)** Show that the operator $D: V \to V$, defined by $f \mapsto f'$, is well-defined. Determine the kernel $\ker D$, the image $\operatorname{im} D$, and the cokernel $\operatorname{coker} D$.
   
   > 若 $D(f)=0$, 则 $f$ 在任意闭区间上都是常数, 从而只能有 $f=0$. 因此
   >
   > * $\ker D = 0$.
   >
   > $D(f)$ 的整体积分是 $0$. 同时, 整体积分为 $0$ 的函数 $g$ 给出 $G(x) := \int_{-\infty}^x g(t) \operatorname dt \in V$, 满足 $DG = g$. 因此
   >
   > * $\operatorname{im}D$ 是整体积分为 $0$ 的函数. 
   >
   > 整体积分是线性映射, 即, 
   > $$
   > I: V \to \mathbb R,\quad h \mapsto \int_{-\infty}^\infty h(t) \operatorname dt. 
   > $$
   > 因此 
   >
   > * $\operatorname{cok} D \simeq \frac{V}{\operatorname {im} D} = \frac{V}{\ker D} \simeq \operatorname{im} I \simeq \mathbb R$. 
   
3. **(Integrable Functionals)** Let $\varphi: \mathbb{R} \to \mathbb{R}$ be a function that is Riemann integrable over any bounded interval $[a,b]$. Show that the following map defines an element of $V^\ast$:
   $$
   V \to \mathbb{R}, \quad f \mapsto \int_{-\infty}^{\infty} f(x)\varphi(x)\, \mathrm{d}x.
   $$
   
   > 只需验证积分收敛, 往后的加法和数乘是容易验证的. 不妨假定 $f$ 在 $[a,b]$ 外均是 $0$, 且 $|f|$ 有上界 $1$. 此时, $\int_a^b f\varphi$ 的上下 Darboux 和之差不超过 $\int_a^b \varphi$ 者, 因此 Riemann 可积. 
   
4. **($V$, merging some functions, and introducing some non-functions)**. The preceding exercise defines a mapping
   $$
   \Phi : \{\text{Locally Riemann-Integrable Functions}\} \to V^\ast, \quad f \mapsto \left[g \mapsto \int_{-\infty}^\infty f(x)g(x)\, \mathrm{d}x\right].
   $$
   It is known that $\Phi$ is neither injective nor surjective.  
   - Let $f$ be the function defined by $f(x) = 0$ for all $x \neq 1$, and $f(1) = 1$. Then $f \in \ker \Phi$.  
   - The Dirac delta functional $\delta$, defined informally below, is not in the image of $\Phi$. **This is left as an exercise for the reader.** 
   
   > 若 $\delta = \Phi (f)$, 则 $f$ 在某一区间上的 Riemann 积分非零 (若不然, $\int f \varphi \equiv 0$, 和 $\Phi(f) \neq 0$ 矛盾), 记作 $(a,b)$. 对足够小的 $\varepsilon$ 定义
   > $$
   > 
   > $$
   > 
   >
   > 依 Ex 1, 取 $g\in V$ 使得 $g$ 的零点恰好是区间 $(a,b)$. 这和 $0 = \delta (g) = (\Phi(f))(g) $. 
   
5. **($V \hookrightarrow V^\ast$)** Show that $\ker \Phi \cap V = \{0\}$, and thus that $V$ can be regarded as a subspace of $V^\ast$.
   
6. **(The Dirac Delta Functional)** The Dirac delta functional $\delta$ is informally described as:
   $$
   \delta(x) = 
   \begin{cases}
   0, & x \neq 0, \\
   \infty, & x = 0,
   \end{cases} \quad \int_{-\infty}^\infty \delta(x)\, \mathrm{d}x = 1.
   $$
   Provide a formal definition of $\delta$ as an element of $V^\ast$.
   
7. **(Generalised Derivatives)** Define $\varphi$ as a piecewise linear function passing through the points:
   $$
   (-\infty, 0) \to (-1,0) \to (0,2) \to (1,-1) \to (2,0) \to (+\infty, 0).
   $$
   Although $\varphi$ is continuous, its derivative $\varphi'$ is not classically defined. Use the identity
   $$
   \int_{-\infty}^\infty f(x)g'(x)\, \mathrm{d}x = -\int_{-\infty}^\infty f'(x)g(x)\, \mathrm{d}x
   $$
   to define $\varphi'$ in the distributional sense. Express $\varphi''$ explicitly as a linear combination of shifted Dirac delta functions $\delta(x-a)$.
   
8. **(Generalised Limits)** For each $\varphi \in V \hookrightarrow V^\ast$, define a sequence of functions for each $n \in \mathbb{N}$ by:
   $$
   (-)_n : V \to V, \quad \varphi \mapsto \left[x \mapsto n \cdot \varphi(nx)\right].
   $$
   It is evident that:
   $$
   \int_{-\infty}^\infty \varphi_n(x)\, \mathrm{d}x = \int_{-\infty}^\infty \varphi(x)\, \mathrm{d}x.
   $$
   The sequence $\{\varphi_n\}$ does not converge uniformly in $V$. However, show that there exists $L \in V^\ast$ such that:
   $$
   L(f) = \lim_{n \to \infty} \int_{-\infty}^\infty f(x)\varphi_n(x)\, \mathrm{d}x.
   $$
   Your task is to show that the limit exists for arbitrary $f$, and that $L$ is linear. *Note:* linear mappings do not, in general, preserve infinite sums.

**Optional Problems: Another Structure on $\mathrm{End}(V)$**

1. **(Convolution Operator)** Show that the following map is a linear injection:
   $$
   \star : V \to \mathrm{End}(V), \quad f \mapsto \left[g \mapsto \left(x \mapsto \int_{-\infty}^\infty f(y)g(x-y)\, \mathrm{d}y\right)\right].
   $$
   
2. **(Multiplicative Structure of $V$)** Since $V \subseteq \mathrm{End}(V)$ and $V \star V \subseteq V$, the space $V$ acquires a multiplicative structure compatible with its $\mathbb{R}$-linear structure. Hence, $V$ forms a ring without unit. (The identity element should be $\delta(x)$.)  
   
   - The ring $(\mathrm{End}(V), +, \star)$ lacks a unit, while $(\mathrm{End}(V), +, \circ)$ possesses the unit $\mathrm{id}_V$.  
   
   Show that $(\mathrm{End}(V), +, \star)$ is commutative: that is, $f \star g = g \star f$.
   
3. **(Derivations and Convolutions)** The ring $(\mathrm{End}(V), +, \circ)$ complicates differentiation due to the chain rule. However, convolution satisfies:
   $$
   (f \star g)' = f' \star g = f \star g'.
   $$
   * The relationship between $\circ$ and $\star$ is analogous to that between matrix multiplication and the Hadamard product.
   
4. **(Convolution with Locally Integrable Functions)** Show that $\{\text{Locally Riemann-Integrable Functions}\} \star V$ is a linear subspace of the space of smooth functions. 
   
   * The problems surrounding $V \star V \stackrel{?}{=} V$ are known as *Ehrenpreis factorisation problems*. For $V = C_b^\infty(\mathbb{R}^n; \mathbb{R})$, the case $n=1$ admits a positive resolution.

5. **(Mean Value Property)** A function $f$ satisfies the *Mean Value Property* (MVP) if:
   $$
   f(x) = \frac{1}{2a} \int_{x-a}^{x+a} f(t)\, \mathrm{d}t
   $$
   for all $x$ and $a$. This property is trivial in one variable but non-trivial in higher dimensions (cf. [harmonic functions](https://en.wikipedia.org/wiki/Harmonic_function), especially the real and imaginary parts of [holomorphic functions](https://en.wikipedia.org/wiki/Holomorphic_function)). Let
   $$
   a(x) := e^{1/(x^2 - 1)} \quad \text{or} \quad a(\mathbf{x}) := e^{1/(\mathbf{x}^T\mathbf{x} - 1)}.
   $$
   Show that $a \star f = C \cdot f$ for some constant $C$, whenever $f$ satisfies MVP. Determine the value of $C$. Demonstrate that MVP functions are smooth.
   
6. **(Locally MVP Functions)** A function $f$ is *locally MVP* if:
   $$
   f(x) = \frac{1}{2a} \int_{x-a}^{x+a} f(t)\, \mathrm{d}t
   $$
   for all $x$ and $a \in (0, N(x))$, where $N(x)$ is continuous. Show that locally MVP functions are smooth.
   
7. **(Liouville's Theorem)** Prove that any bounded locally MVP function defined on $\mathbb{R}^n$ must be constant.
   
8. **(Smooth Approximation via Convolution)** Let $f$ be any continuous function and let $g \in V$ satisfy $\int g = 1$. Show that the sequence $(f \star g_n)_{n \geq 1}$ converges uniformly to $f$ on any bounded interval, where $(-)_n$ is defined as in Exercise 1.8.
   
9. **(Stone-Weierstraß Theorem)** Let $f$ be any continuous function. Show that there exists a sequence of polynomials converging uniformly to $f$ on any bounded interval. You may assume $f^{-1}(0) \supseteq \mathbb{R} \setminus [-1,1]$.  
   
   - Let $P_n$ be the space of polynomials of degree at most $n$. Show that $V \star P_n \subseteq P_n$, and thus $V \star \mathbb{R}[x] \subseteq \mathbb{R}[x]$.  
   - For each $n \geq 1$, there exists a polynomial $p_n$ such that $\int_{-n}^n p_n(x)\, \mathrm{d}x = 1$ and $\int_{-1/n}^{1/n} p_n(x)\, \mathrm{d}x > 1 - n^{-114514}$.  
   - Show that $f \star p_n$ converges uniformly to $f$ on the interval $[-1,1]$.

10. **(Relative Stone–Weierstraß Theorem)** An analogue of the Stone-Weierstraß theorem is established using trigonometric functions. Let $T_n$ denote the space of trigonometric polynomials of degree at most $1$. Show that $V \star T_n \subseteq T_n$, noting that functions like $t \star f$ and $t$ satisfy the same ordinary differential equations. For instance:
    $$
    (\sin \star f)'' + \sin \star f = (\sin'' + \sin)\star f = 0,
    $$
    so $\sin \star f$ is of the form $A \sin(x + \beta)$. Use this to establish the $T$-version of the Stone-Weierstraß theorem.
