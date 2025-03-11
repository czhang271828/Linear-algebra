**Problem Set for 6th March 2025**

取基只会让简单的事情复杂化, 实际上, **Exercise 1** 与 **Exercise 2** 对一般集合上的一般映射均成立. 一般地, 单射与满射的简洁定义如下: 

* $U\xrightarrow f V$ 是单射, 当且仅当对任意 $x,y \in U$, $[f(x)=f(y)] \implies [x=y]$. 鉴于线性映射的加法结构, 有 
  $$
  f\ \text{单} \iff [f(u)=0 \implies u=0]. 
  $$

* $U\xrightarrow f V$ 是满射, 当且仅当 $f(U) = V$. 

**Exercise 1** Here is the composition rules for linear maps $U \xrightarrow f V \xrightarrow g W$. Show that

1. if $f$ and $g$ are linear injections, then so is $g \circ f$; 

   > 答: 由复合的逻辑推导关系
   > $$
   > [(g \circ f)(u)=0 ]\xRightarrow{\text{因为 $g$ 单}} [f(u)=0]\xRightarrow{\text{因为 $f$ 单}} [u=0]
   > $$
   > 知 $g\circ f$ 单. 
   >
2. if $g\circ f$ is a linear injection, then so is $f$;

   > 答: 由复合的逻辑推导关系
   > $$
   > [f(u)=0] \implies [(g \circ f)(u)=0 ]\xRightarrow{\text{因为 $g\circ f$ 单}} [u=0]
   > $$
   > 知 $f$ 单. 
   >
3. if $f$ and $g$ are linear surjections, then so is $g \circ f$; 

   > 答: 由等式
   > $$
   > (g \circ f) (U)\xlongequal{\text{因为 $f$ 满}} g(V)\xlongequal{\text{因为 $g$ 满}} W
   > $$
   > 知 $g \circ f$ 满. 
   >
4. if $g\circ f$ is a linear surjection, then so is $g$. 

   > 答: 由双侧包含关系
   > $$
   > W \supset g(V) \supset g(f(U)) \xlongequal{\text{因为 $g \circ f$ 满}} W
   > $$
   > 知上述 $\supset$ 取等, 从而 $g$ 满. 
   >

**Exercise 2** Assume you can prove the following isomorphisms yourself: 
$$
\begin{align*}
\Phi : \mathrm{Hom}_{\mathbb F}(U_1 , V)  \times \mathrm{Hom}_{\mathbb F}(U_2 , V) & \to \mathrm{Hom}_{\mathbb F}(U_1 \times U_2 , V) \\[6pt]
(f_1, f_2) &\mapsto \begin{bmatrix}U_1 \times U_2 & \to & V \\(u_1,u_2) & \mapsto &f_1(u_1)+f_2(u_2)\end{bmatrix}, 
\end{align*}
$$
and 
$$
\begin{align*}
\Psi : \mathrm{Hom}_{\mathbb F}(U , V_1)  \times \mathrm{Hom}_{\mathbb F}(U, V_2) & \to \mathrm{Hom}_{\mathbb F}(U, V_1 \times V_2) \\[6pt]
(g_1, g_2) &\mapsto \begin{bmatrix}U & \to & V_1 \times V_2 \\ u & \mapsto &(g_1(u), g_2(u))\end{bmatrix}. 
\end{align*}
$$
Show that 

1. $\Phi (f_1,f_2)$ is an injection, only if $(\Rightarrow)$ $f_1$ **and** $f_2$ are injective; 

   > 答: $U_i \to U_1 \times U_2$ 是单射, 从而 $f_i$ 是两个单射的复合. 
   >
   > 使用上一题 1, 单射的复合仍是单射. 
2. $\Phi(f_1, f_2)$ is a surjection, if $(\Leftarrow)$ $f_1$ **or** $f_2$ is surjective; 

   > 答: 若 $f_i$ 满, 将 $f_i$ 写作复合映射
   > $$
   > U_i \xrightarrow{\text{嵌入自对应的分量}} U_1 \times U_2 \xrightarrow {\Phi (f_1, f_2)} V.
   > $$
   > 使用上一题 2 知 $\Phi(f_1, f_2)$ 是满射. 
3. $\Psi(g_1,g_2)$ is an injection, if ($\Leftarrow$) $g_1$ **or** $g_2$ is injective; 

   > 答: 若 $g_i$ 单, 将 $g_i$ 写作复合映射
   > $$
   > U  \xrightarrow {\Psi (g_1, g_2)} V_1 \times V_2 \xrightarrow{\text{投影至对应的分量}} V_i
   > $$
   >  使用上一题 4 知 $\Psi(g_1,g_2)$ 是单射. 
4. $\Psi(g_1,g_2)$ is a surjection, only if ($\Rightarrow$) $g_1$ **and** $g_2$ are surjective; 

   > 答: $V_1 \times V_2 \to V_i$ 是满射, 从而 $g_i$ 是两个满射的复合. 
   >
   > 使用上一题 3, 满射的复合仍是满射.
5. **(Optional)** Find counterexamples for converse statements. 

   > 答: 随便写个例子都是反例. 

**Exercise 3** **(optional)** We know that the composition map 
$$
\begin{align*}
B : \mathrm{Hom}_{\mathbb F}(V , W) \times \mathrm{Hom}_{\mathbb F}(U, V) &\to \mathrm{Hom}_{\mathbb F}(U , W) \\[6pt]
(g,f) &\mapsto B(g,f):=g \circ f
\end{align*}
$$
 is $\mathbb F$-bilinear. Show that

1. if $g$ is injective, then $B(g,-)$ is an injection; 

   > 答: 若 $B(g,f) = g\circ f$ 是零映射, 往证 $f$ 是零映射.
   >
   > 注意到 $g$ 是单射, 并且将 $f$ 的值域映为 $0$, 此时 $f$ 的值域只能是 $0$. 这说明 $f$ 是零映射. 
2. if $f$ is surjective, then $B(-,f)$ is **still** an injection; 

   > 答: 若 $B(g,f) = g\circ f$ 是零映射, 往证 $g$ 是零映射.  
   >
   > 注意到 $f$ 是满射, 故 $g$ 与 $g \circ f$ 有相同的像. 此时 $g$ 的像只能是零. 这说明 $g$ 是零映射. 
3. if $g$ is surjective and $V$ is coflasque, then $B(g,-)$ is surjective; 

   > 答: 线性映射
   > $$
   > B(g,-) : \mathrm{Hom}_{\mathbb F}(U,V) \to \mathrm{Hom}_{\mathbb F}(U, W),\quad f \mapsto g \circ f
   > $$
   > 是满射, 当且仅当任意 $h : U \to W$ 都有原像, 等价地, $h$ 可以分解作 $U \to V \xrightarrow g W$. 
   >
   > 将 $W = V^{\mathrm{quot}}$ 视同 $V$ 的商空间, $g$ 是自然的商映射. 由 coflasque 的定义知 $h : U \to V^{\mathrm{quot}}$ 可以提升至 $U \to V$, 这就给出了分解. 
4. if $f$ is injective and $V$ is flasque, then $B(-, f)$ is **still** surjective. 

   > 答: 线性映射
   > $$
   > B(-, f) : \mathrm{Hom}_{\mathbb F}(V,W) \to \mathrm{Hom}_{\mathbb F}(U,W),\quad g \mapsto g\circ f 
   > $$
   > 是单射, 当且仅当任意 $h : U \to W$ 都有原像, 等价地, $h$ 可以分解作 $U \xrightarrow fV \to  W$. 
   >
   > 将 $U = V^{\mathrm{sub}}$ 视同 $V$ 的子空间, $f$ 是自然的包含映射. 由 flasque 的定义知 $h:V^{\mathrm{sub}} \to W$ 可以提升至 $V \to W$, 这就给出了分解. 

**Definition**

* Say $Y$ is flasque, if any linear map from its subspace $Y^{\text{sub}} \to X$ extends to $Y \to X$. 

* Say $Y$ is coflasque, if any linear map to its quotient space $X \to Y^{\text{quot}}$ extends to $X \to Y$. 

Finite dimensional vector spaces are both flasque and co-flasque. 

**Exercise 4 (optional)** Equivalent definition of being injective or surjection. 

1. $f$ is injective, if and only if 
   $$
   [f \circ g = f \circ h ] \iff [g = h].
   $$

   > 答: only if 部分见 Exercise 1, 下证明 if 部分. 
   >
   > 假定 $f: U \to V$ 不是单的, 也就是存在 $x \neq 0$ 使得 $f(x)=0$. 此时取
   > $$
   > g : \mathbb F \xrightarrow 0 U,\quad h : \mathbb F\xrightarrow {1 \mapsto x}  U.
   > $$
   > 因此, $[f \circ g = f \circ h ] \iff [g = h]$ 是伪命题. 
   
2. $f$ is surjective, if and only if 
   $$
   [g \circ f = h\circ f] \iff [g = h].
   $$
   
   > 答: only if 部分见 Exercise 1, 下证明 if 部分. 
   >
   > 假定 $f : U \to V$ 不是满的, 也就是存在 $v \notin \mathrm{im}(f)$. 此时取
   > $$
   > g : V \xrightarrow {商映射} \frac{V}{\mathrm{im}(f)},\quad h : V \xrightarrow 0 \frac{V}{\mathrm{im}(f)}.
   > $$
   >  因此, $[g \circ f = h\circ f] \iff [g = h]$ 是伪命题. 

For **finite dimensional** cases 

1. $f : U\to V$ is injective, if and only if there is an $g : V \to U$ such that 
   $$
   \left[U \xrightarrow f V \xrightarrow g U \right] = \left[U \xrightarrow {\mathrm{id}_U} U \right].
   $$

   > 答: 若 $f$ 单, 存在 $U$ 的一组基 $\{u_i\}_{1 \leq i \leq m}$ 与 $V$ 的一组基 $\{v_j\}_{1 \leq j \leq n}$ ($m \leq n$), 使得
   > $$
   > f(u _i ) = v_i \quad (1 \leq i \leq m).
   > $$
   > 定义 $V \to U$ 如下: 
   > $$
   > v_i \mapsto u_i \quad (1 \leq i \leq m);\quad v_i \mapsto 0\quad (i > m).
   > $$
   
2. $f : U\to V$ is surjective, if and only if there is an $h : V \to U$​ such that 
   $$
   \left[V \xrightarrow h U \xrightarrow f V \right] = \left[V \xrightarrow {\mathrm{id}_V} V \right].
   $$
   
   > 答: 若 $f$ 满, 存在 $U$ 的一组基 $\{u_i\}_{1 \leq i \leq m}$ 与 $V$ 的一组基 $\{v_j\}_{1 \leq j \leq n}$ ($m \geq n$​), 使得
   > $$
   > f(u _i ) = v_i \quad (1 \leq i \leq n),\quad f(u_i ) = 0\quad (i > n).
   > $$
   > 定义 $U \to V$ 如下: 
   > $$
   > v_i \mapsto u_i \quad (1 \leq i \leq n). 
   > $$

* 以上两问给出了截面的思想. 称 $A$ 是 $B$ 的截面, 当且仅当存在单射与满射 $A \hookrightarrow B \twoheadrightarrow A$, 其复合是 $\mathrm{id}_A$. 

