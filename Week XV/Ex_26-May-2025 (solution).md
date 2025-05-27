**Problem Set for 26–May and 29–May**

**Exercise 0** Show that $U \otimes V \simeq V \otimes U$ with the following steps.

1. Construct $\varphi : U \otimes V \to V \otimes U$ via a 1:1 correspondence (refer to the preceding assignment). Describe $\varphi$ by tracing the image of simple tensors.
2. Define $\psi : V \otimes U \to U \otimes V$ analogously.
3. Establish via 1:1 correspondence that both $\psi \circ \varphi$ and $\varphi \circ \psi$ are identical mappings.

> 取双线性型 
> $$
> \Phi : U \& V \to V \otimes U,\quad (u,v) \mapsto v \otimes u.
> $$
> 这给出唯一的 $\varphi : U \otimes V \to V \otimes U$, 简单张量 $u \otimes v$ 的像是 $v \otimes u$.
>
> 对称地定义 $\psi : V\otimes U\to V \otimes U$, 简单张量 $v \otimes u$ 的像是 $u \otimes v$.
>
> 由 $\varphi \circ \psi$ 与 $\psi \circ \varphi$ 在简单张量表现为恒等映射, 从而两者就是张量空间的恒等映射. 这说明 $\varphi$ 与 $\psi$ 是互逆的.

**Exercise 1** Show that the following is an isomorphism:
$$
\mathrm{Hom}(U, V^*) \simeq \mathrm{Hom}(V,U^\ast),\quad [u \mapsto f_u] \mapsto [v \mapsto [u \mapsto f_u(v)]].
$$

> $\mathrm{Hom}(U, \mathrm{Hom}(V,\mathbb F))$ 一一对应双线性映射 $U \& V \to \mathbb F$, 另一侧亦然.
>
> 这题和张量没关系.

**Exercise 2** Let $V$ be a finite-dimensional vector space with basis $\{e_i\}$. Let $\{f_i\}$ denote the dual basis of $V^\ast$. Define the following mappings:

- $\Delta : \mathbb{F} \to V \otimes V^\ast, \quad 1 \mapsto \sum_{i=1}^n e_i \otimes f_i$;
- $\nabla : V \otimes V^\ast \to \mathbb{F},\quad \sum u_i \otimes \varphi_i \mapsto \sum \varphi_i(u_i)$.

For $f, g : V \to V$, determine the composition
$$
\mathbb{F} \xrightarrow{\Delta} V \otimes V^\ast \xrightarrow{(f \otimes g^\ast)} V \otimes V^\ast \xrightarrow{\nabla} \mathbb{F}.
$$

> 直接计算, $1 \mapsto \sum e_i \otimes f_i \mapsto f(e_i)\otimes (f_i\circ g) \mapsto \sum f_i gfe_i$, 也就是 $\mathrm{tr}(g\circ f)$.
>

**Exercise 3** Demonstrate that, for finite-dimensional vector spaces, there exists an isomorphism determined via simple tensors:
$$
\Phi: V_1^\ast \otimes V_2^\ast \otimes V_3 \xrightarrow{\sim} \mathrm{Hom}(V_1 \otimes V_2, V_3),\quad f \otimes g \otimes x \mapsto [a \otimes b \mapsto f(a)g(b)x].
$$

Now take $\otimes = \otimes_{\mathbb{R}}$ and $V_i = \mathbb{C}$ (the two-dimensional vector space with basis $\{1, i\}$). We know that the usual multiplication defines a map in $\mathrm{Hom}_{\mathbb{R}}(\mathbb{C} \otimes \mathbb{C}, \mathbb{C})$:
$$
\times : \mathbb{C} \otimes_{\mathbb{R}} \mathbb{C} \to \mathbb{C},\quad w \otimes z \mapsto w \cdot z.
$$

What is $\Phi^{-1}(\times)$?

> 记 $(e,f)$ 是 $(1,i)$ 的对偶基. 乘法运算在 $\mathbb C \otimes \mathbb C$ 的一组基底上的表现是
> $$
> (1\otimes 1, 1\otimes i,i\otimes 1,i\otimes i) \mapsto (1,i,i,-1).
> $$
> 这组基的对偶基是 $(e\otimes e,e \otimes f,f\otimes e,f\otimes f)$, 从而 $\Phi^{-1}(\times)$ 是张量
> $$
> e\otimes e\otimes 1+e\otimes f\otimes i+f\otimes e\otimes i-f\otimes f\otimes 1.
> $$

**Exercise 4 (optional)** Show that $\Phi^{-1}(\times)$ comprises a sum of no fewer than three simple tensors. Consequently, any multiplication algorithm for complex numbers necessitates at least three real multiplications.

> 考虑实线性空间对偶 $\mathbb C^\ast \simeq \mathbb C$, 只需证明以下 $\mathbb C \otimes \mathbb C \otimes \mathbb C$ 中的张量最少只能写作三个张量的有限和:
> $$
> 1\otimes 1 \otimes 1+1\otimes i\otimes i+i\otimes 1\otimes i-i\otimes i\otimes 1.
> $$
> 说明三个可以:
> $$
> \frac12(1+i)\otimes(1+i)\otimes(1+i) + \frac12(1-i)\otimes(1-i)\otimes(1-i) - 2(1\otimes 1\otimes 1).
> $$
> 再说明两个不行. 若
> $$
> 1\otimes (1 \otimes 1+i\otimes i)+i\otimes (1\otimes i- i\otimes 1).
> $$
> 可以写作两个简单张量的和, 例如 $x\otimes y\otimes z + p \otimes q\otimes r$, 则有
> $$
> \mathrm{span}(1 \otimes 1+i\otimes i, 1\otimes i- i\otimes 1) \subseteq \mathrm{span}(y\otimes z, q \otimes r).
> $$
> 将二阶张量 $U \otimes V$ 写成矩阵形式, 则上式写作
> $$
> \mathrm{span}(\begin{pmatrix}1&0\\0&1\end{pmatrix},\begin{pmatrix}0&-1\\1&0\end{pmatrix}) \subseteq \mathrm{span}(u_1\cdot v_1^T,u_2\cdot v_2^T).
> $$
> 左式中, 非零线性组合必然给出秩为 $2$ 的矩阵, 矛盾.
>
> 这证明了复数乘法的 Gauss 算法: 可以仅做三次实数乘法, 但无法仅做两次实数乘法.

**Exercise 5** Let $A \in \mathbb{C}^{m \times m}$ and $B \in \mathbb{C}^{n \times n}$ be normal matrices (i.e., $PP^H = P^HP$). Show that $AX = XB$ if and only if $A^H X = X B^H$.

> 即证明 
> $$
> \ker (A \otimes I - I \otimes B^T) = \ker (A^H \otimes I - I \otimes \overline B).
> $$
> 记 $P =A \otimes I - I \otimes B^T$, 则 $PP^H = P^H P$. 那么
> $$
> \ker P = \ker P^HP = \ker PP^H = \ker P^H.
> $$

**Exercise 6** Let $A, B \in \mathbb{C}^{n \times n}$ be Hermitian positive-definite matrices, i.e., $A = A^H$ and $u^H \cdot A \cdot u \geq 0$ with equality if and only if $u = \mathbf{0}$. Define the matrix $C$ via component-wise multiplication (the stupid multiplication):
$$
C = (c_{i,j}),\quad c_{i,j} = a_{i,j} \cdot b_{i,j}.
$$
Show that $C$ is also Hermitian positive-definite 

> $M$ 是 Hermite 正定的, 当且仅当存在 $S$ 使得 $S^HS = M$. 因此
> $$
> A \otimes B = (R^HR) \otimes (S^HS) = (R\otimes S)^H(R\otimes S)
> $$
> 也是 Hermite 正定的. 显然 $C$ 是 $A \otimes B$ 的主子式 (用 $((i_1,j_1), (i_2,j_2))$ 表示 $A\otimes B$ 行列分量坐标, 取所有 $i_1 = i_2$ 且 $j_1 = j_2$ 的分量即可), 因此 $C$ Hermite 正定.

**Exercise 6** The tensor product space $U \otimes V$ (as defined in class) arises from the Cartesian product $U \times V$ along with a certain quotient construction. Explain why this quotient makes the resulting linear space larger, for instance:
$$
\dim(\mathbb{F}^2 \times \mathbb{F}^3) = 5 < 6 = \dim(\mathbb{F}^2 \otimes \mathbb{F}^3).
$$

> 被商的是以 $U \times V$ 这个集合为基的自由线性空间 (通常是无限维的), 并不是 $U \times V$ 这个直和空间.
