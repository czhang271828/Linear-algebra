**Problem Set for 19-May and 22-May**

**Part I: the Kronecker product, tensor products for matrices**

**Example** Take

- $A=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}$, $B=\begin{pmatrix}b_{11}&b_{12}\\b_{21}&b_{22}\end{pmatrix}$, $X=\begin{pmatrix}x_{11}&x_{12}\\x_{21}&x_{22}\end{pmatrix}$, $Y=\begin{pmatrix}y_{11}&y_{12}\\y_{21}&y_{22}\end{pmatrix}$. Now

1. The matrix equation $AX=Y$ coincides the linear system
   $$
   \begin{pmatrix}
   a_{11}&0&a_{12}&0\\
   0&a_{11}&0&a_{12}\\
   a_{21}&0&a_{22}&0\\
   0&a_{21}&0&a_{22}\\
   \end{pmatrix}\cdot\begin{pmatrix}
   x_1\\x_2\\x_3\\x_4
   \end{pmatrix}=\begin{pmatrix}
   y_1\\y_2\\y_3\\y_4
   \end{pmatrix}.
   $$

2. The matrix equation $XB=Y$ coincides linear system
   $$
   \begin{pmatrix}
   b_{11}&b_{21}&0&0\\
   b_{12}&b_{22}&0&0\\
   0&0&b_{11}&b_{21}\\
   0&0&b_{12}&b_{22}\\
   \end{pmatrix}\cdot\begin{pmatrix}
   x_1\\x_2\\x_3\\x_4
   \end{pmatrix}=\begin{pmatrix}
   y_1\\y_2\\y_3\\y_4
   \end{pmatrix}.
   $$

3. The matrix equation $AXB=Y$ coincides linear system
   $$
   \begin{pmatrix}
   a_{11}b_{11}&a_{11}b_{21}&a_{12}b_{11}&a_{12}b_{21}\\
   a_{11}b_{12}&a_{11}b_{22}&a_{12}b_{12}&a_{12}b_{22}\\
   a_{21}b_{11}&a_{21}b_{21}&a_{22}b_{11}&a_{22}b_{21}\\
   a_{21}b_{12}&a_{21}b_{22}&a_{22}b_{12}&a_{22}b_{22}\\
   \end{pmatrix}\cdot\begin{pmatrix}
   x_1\\x_2\\x_3\\x_4
   \end{pmatrix}=\begin{pmatrix}
   y_1\\y_2\\y_3\\y_4
   \end{pmatrix}.
   $$

    where we write
   $$
   \begin{pmatrix}
    a_{11}b_{11}&a_{11}b_{21}&a_{12}b_{11}&a_{12}b_{21}\\
    a_{11}b_{12}&a_{11}b_{22}&a_{12}b_{12}&a_{12}b_{22}\\
    a_{21}b_{11}&a_{21}b_{21}&a_{22}b_{11}&a_{22}b_{21}\\
    a_{21}b_{12}&a_{21}b_{22}&a_{22}b_{12}&a_{22}b_{22}\\
    \end{pmatrix}=\begin{pmatrix}
    a_{11}B^T&a_{12}B^T\\a_{21}B^T&a_{22}B^T
    \end{pmatrix} =: A\otimes B^T.
   $$

**Definition** (Kronecker product of matrices) For $P\in K^{k\times l}$, $Q\in K^{m\times n}$, define
$$
P\otimes Q=\begin{pmatrix}p_{11}Q&p_{12}Q&\cdots &p_{1l}Q\\p_{21}Q&p_{22}Q&\cdots&p_{2l}Q\\\vdots&\vdots&\ddots&\vdots\\p_{k1}Q&p_{k2}Q&\cdots &p_{kl}Q\\\end{pmatrix}.
$$
Clearly, $P\otimes Q\in K^{km\times ln}$.

**Exercise 1** Verify the following statements yourself (**not a homework**):

1. $\otimes$ is an binary operation which is associative;
2. $\otimes $ is bilinear on both sides;
3. $(A\otimes B)\cdot(C\otimes D)=(A\cdot C)\otimes (B\cdot D)$;
4. $(A\otimes B)^T=A^T\otimes B^T$;
5. $\mathrm {rank}(A\otimes B)=\mathrm {rank}(A)\cdot\mathrm {rank}(B)$;

Now we assume that $A$ and $B$ are square matrices:

1. $(A \otimes B)^{-1} = A ^{-1} \otimes B^{-1}$;
2. $\det(A\otimes B) = (\det A)^{\dim A}(\det B)^{\dim B}$;
3. $\mathrm{tr}(A\otimes B)=\mathrm{tr}(A)\cdot \mathrm{tr}(B)$;
4. Let $(\lambda, v)$ and $(\mu , u)$ be eigenpairs of $A$ and $B$, respectively. Then $A\otimes B$ has $(\lambda \mu, v \otimes u)$ as an eigenpair;

**Exercise 2** Let $J_A$ and $J_B$ denote the Jordan form of $A$ and $B$ respectively (all matrices are in $\mathbb F^{n \times n}$).

1. Write down the Jordan form of the linear transformation $X \mapsto AXA^T$;
2. Write down the Jordan form of the linear transformation $X \mapsto AXA$;
3. Write down the Jordan form of the linear transformation $X \mapsto AX - XA$; 
4. Write down the Jordan form of the linear transformation $X \mapsto AX - XA^T$;
5. Write down the Jordan form of the linear transformation $X \mapsto AXB$.

> 同一解答 1., 2. 与 5. 记 $A \oplus B  = \binom{A \ O}{O \ B}$ 是分块形式, 则
>
> $$
> \left(\bigoplus _{1 \leq i \leq n} A_i \right) \otimes \left(\bigoplus _{1 \leq j \leq m} B_j \right) = \bigoplus _{1 \leq i \leq n; \ 1\leq j \leq n} A_i \otimes B_j.
> $$
> 为求 $J_A \otimes J_A$ 的 Jordan 标准型, 只需考虑 Jordan 块 $J_s (\lambda) \otimes J_t (\mu)$ 的 Jordan 标准型. 这是个图论问题: 
>
> 1. $\mu \lambda \neq 0$. 此时
>    $$
>    J_s (\lambda) \otimes J_t (\mu) \sim J_{s + t-1}(\lambda \mu) \oplus J_{s + t-3}(\lambda \mu) \oplus \cdots \oplus J_{|s-t|+1}(\lambda \mu).
>    $$
>
> 2. $\mu = 0$, $\lambda \neq 0$, 则 $J_s(\lambda) \otimes J_t(0)$ 是 $s$ 个分块对角的 $J_t(0)$.
>
> 3. $\mu = \lambda = 0$​, 则
>    $$
>    J_s(0) \otimes J_t (0)\sim \left(\bigoplus_{l=1}^{\min(s,t)-1} J_l(0)\oplus J_l(0)\right) \oplus \left(\bigoplus_{k=1}^{|s-t|+1}J_{\min(s,t)}(0)\right).
>    $$
>
> 对 3. 与 4., 求解 $J_A \otimes I - I \otimes J_B ^T$ 的 Jordan 标准型即可. 对线性映射
> $$
> X \mapsto J_A X - X J_B,
> $$
>  可以将 $X$ 进行分块, 其纵向分割线由 $J_A$ 的分块决定, 横向分割线由 $J_B$ 的分块决定. 此处, $X$ 的每一分块是线性映射的不变子空间. 该映射限制在不变子空间上形如
> $$
> \mathbb F^{s \times t} \to \mathbb F^{s \times t},\quad B \mapsto J_s(\lambda)B - B J_t(\mu).
> $$
> 将上述线性映射减去 $\lambda \mu \cdot \mathrm{id}$, 得幂零变换 $B \mapsto J_s(0)B - BJ_t(0)$. 由 $J_t(0) \sim (-J_t(0)^T)$, 这一幂零变换对应矩阵 $J_s(0) \otimes I + I \otimes J_t(0)$. 归纳得 Jordan 标准型
> $$
> J_s (0) \otimes J_t (0) \sim J_{s + t-1}(0) \oplus J_{s + t-3}(0) \oplus \cdots \oplus J_{|s-t|+1}(0).
> $$

**Exercise 3** Show that $\dim \ker [X \mapsto (AX - XA^T)] \geq n$, and explain when the equality holds.

> 这等价于求解全体与 $J_A$ 可交换矩阵构成的线性空间的维数的极小值. 记 $J_A = \bigoplus _{i=1}^sJ_i$, 并依照式 $J_AX - XJ_A$ 对 $X$ 进行分块. 分块 $X_{i,j}$ 恒为零, 当且仅当 $J_i$ 与 $J_j$ 没有公共特征值. 特别地, 分块 $X_{i,i}$ 可取的值是 Jordan 块的多项式, 若 $X_{i,i} \in \mathbb F^{p \times p}$, 则 $X_{i,i}$ 处可取的矩阵构成 $p$ 维线性空间.
>
> 综上, 取等当且仅当 $J_A$ 的 Jordan 块的特征值彼此不同 (不论 Jordan 块大小与数量).

**Exercise 4** Show that there exists $\{0,1\}$-matrices $A$ and $B$ such that $A\otimes B$ and $B\otimes A$ are not similar.

> 取 $A = (O\ \ I) \in \mathbb F^{2 \times 4}$ 与 $B = \binom 01 \in \mathbb F^{2 \times 1}$. 显然
> $$
> \mathrm{tr}(A \otimes B)  = 1 \neq (1+1) = \mathrm{tr}(B \otimes A),
> $$
> 因此两者不可能相似.

> [!TIP]
>
> For square matrices $A$ and $B$, it is clear that $A\otimes B \sim B \otimes A$. Proof of the statement: By linear isomorphism of $(-)^T$, $[X \mapsto AXB ^T]$ and $[Y \mapsto BYA^T]$ stand for the same linear map under different basis. Hence $(A \otimes B) \sim (B^T \otimes A^T)$. Since $A \sim A^T$ and $B\sim B^T$, one has $(A \otimes B) \sim (B \otimes A)$.

**Exercise (optional)** If you know the adjacency matrices $A(G_i)$ for a simple graph $G_i$, then discover the graph operations $\boxplus$ and $\boxtimes$ such that

1. $A(G_1) \otimes A(G_2) = A(G_1\boxtimes G_2)$;
2. $A (G_1) \otimes I + I \otimes A(G_2) = A (G_1 \boxplus G_2)$.

> 对两种图, 顶点集均是原顶点集的 Cartesian 积.
>
> $G_1 \boxtimes G_2$ 的边集是通过 and-关系定义的, $(u,v) \sim (u',v')$ 当且仅当 $(u \sim u') \and (v \sim v')$.
>
> $G_1 \boxplus G_2$ 的边恰好形如 $(u,v) \sim (u,v')$ 或者 $(u, v) \sim (u',v)$, 其中 $u\sim u'$, $v\sim v'$.

> [!TIP]
>
> Kronecker 积 $\otimes$ 的本质是指标的运算, 图论语言可以将这一指标运算可视化.

**Part II: the tensor product in general, and the use of $1:1$ correspondence**

> [!IMPORTANT]
>
> Throughout, $\sum$ is always a finite sum.

**Definition** (Tensor product of two finite dimensional vector spaces). Let $\{u_i\}_{1 \leq i \leq n}$ be a basis of $U$, and $\{v_j\}_{1 \leq j \leq m}$ be a basis of $V$. Now one can show the $1:1$ correspondence of the following three types of functions.

1. a bilinear map from $U,V$ to $\mathbb F$;
2. a map of the type $f : S \to \mathbb F$ with property $\mathrm P$, where
   - $S:=\{M \in \mathbb F^{n \times m} \mid \mathrm{rank}(M) = 1\}$, the subspace of rank one matrices;
   - $\mathrm P$ means that, once there is an equality of linear combination in $S$ (e.g., $\sum c_i s_i = 0$ for $s_i \in S$), one has $\sum c_i f(s_i) = 0$.
3. a linear map $\mathrm{Hom}_{\mathbb F}(\mathbb F^{n \times m}, \mathbb F)$.

We identify $U \otimes V := \mathbb F^{n \times m}$ in 3. by chasing the basis $\{u_i\}_{1 \leq i \leq n}$ and $\{v_j\}_{1 \leq j \leq m}$ from 1. to 3.:

- $U \otimes V$ has a basis $u _i \otimes v_j$, i.e., the $E_{i,j}$ matrices in the space $\mathbb F^{n \times m}$;
- An element of $U \otimes V$ is of the form $\sum \lambda_i (u_i \otimes v_i)$, i.e., the sum of $E_{i,j}$'s;
- Say a $x \in U \otimes V$ is an simple tensor, whenever there is $u \in U$ and $v \in V$ such that $x = u \otimes v$, i.e., the rank-one matrix in $\mathbb F^{n \times m}$;
- The tensor-rank of $x \in U \otimes V$ is the least number of simple tensors summing up to $x$, i.e., 使用相抵标准型将矩阵写作秩 $1$ 矩阵的和.

**Definition** (The definition of tensor product in general). We consider the properties that a hypothetical object $U \otimes V$ would possess:

1. an object of $x \in U \otimes V$ is the finite sum of simple tensors, e.g., $x = \sum u_t \otimes v_t$ for some $u_t \in U$ and $v_t \in V$;

2. there is a canonical bilinear map $\theta_{U,V}: U \& V \to U \otimes V$ sending the pair $(u,v)$ to a simple tensor $u \otimes v$, which means that

   1. $(u+u') \otimes v$ and $u\otimes v + u'\otimes v$ are the same elements,
   2. $u \otimes (v+v')$ and $u\otimes v + u \otimes v'$ are the same elements,
   3. $\lambda (u\otimes v)$, $(\lambda u) \otimes v$ and $u \otimes (\lambda v)$ are the same elements;

3. any bilinear form $U \& V \to W$ corresponds to a linear map from $U \otimes V$ to $W$, which means that

   1. once we have a bilinear map $B: U \& V \to W$, we have a linear map $U \otimes V \to W$ determined by the image of simple tensors:
      $$
      u \otimes v \mapsto B(u,v).
      $$

   2. once we have a linear map $\varphi : U \otimes V \to W$, there is a bilinear map $\varphi \circ \theta _{U,V}$.

> [!NOTE]
>
> In short, the linear space $\mathrm{Hom}_{\mathbb F}(U, \mathrm{Hom}_{\mathbb F}(V,W))$ (not $\mathrm{Hom}_{\mathbb F}(U \times V, W)$) stands for the set of bilinear maps from $U\& V$ to $W$. The $1:1$ correspondence means the bijection
> $$
> \mathrm{Hom}_{\mathbb F}(U, {\color{red }\mathrm{Hom}_{\mathbb F}(V}, W{\color{red})}) \to \mathrm{Hom}_{\mathbb F}(U {\color{blue}\otimes V}, W),\quad B \mapsto B \circ \theta_{U,V}
> $$
> Such an bijective is also linear (verify it your self). Hence, the above is an linear isomorphism.
>
> The adjunction: $\mathrm{Hom}(A,{\color{red} R}B) \simeq \mathrm{Hom}({\color{blue} L} A, B)$.

**Definition** ($f \otimes f'$). For linear maps $f :U \to V$ and $f' : U' \to V'$, the bilinear map
$$
U \& U' \to V\& V' \to V \otimes V'\quad (u,u')\mapsto f(u) \otimes f'(u')
$$
corresponds to a unique linear map $U \otimes U' \to V \otimes V'$ sending simple tensor $u \otimes u'$ to $f(u) \otimes f'(u')$. We denote 
$$
f \otimes f' : U \otimes U' \to V \otimes V',\quad \sum u \otimes u' \mapsto \sum f(u) \otimes f'(u').
$$
**Example** (The magic of $1 : 1$ correspondence). We show that $(g \otimes g') \circ (f \otimes f') = (g \circ f) \otimes (g'\circ f')$ are the same linear maps from $U \otimes U'$ to $W \otimes W'$, where 
$$
U \xrightarrow f V \xrightarrow g W,\quad U' \xrightarrow {f'} V' \xrightarrow {g'} W'.
$$
> **Step 1** $(g \otimes g') \circ (f \otimes f') = (g \circ f) \otimes (g'\circ f')$ whenever $(g \otimes g') \circ (f \otimes f') \circ \theta_{U,U'} = (g \circ f) \otimes (g'\circ f') \circ \theta_{U,U'}$ are the same linear map, where $\theta_{U,U'}: U \& U' \to U \otimes U'$ is the canonical bilinear map.
>
> **Step 2** We consider $(g \otimes g') \circ (f \otimes f') \circ \theta_{U,U'}$. By definition of $f \otimes f'$, we have $(f \otimes f') \circ \theta_{U,U'} = \theta_{V,V'} \circ (f\& f')$, the same bilinear map from $U\& U'$ to $V \otimes V'$. Hence
> $$
> (g \otimes g') \circ (f \otimes f') \circ \theta_{U,U'} = (g \otimes g') \circ \theta_{V,V'}\circ  (f \& f') = \theta_{W,W'} \circ (g\&g') \circ (f\& f').
> $$
> **Step 2'** We consider $(g \circ f) \otimes (g'\circ f') \circ \theta_{U,U'}$. By definition, one has
> $$
> (g \circ f) \otimes (g'\circ f') \circ \theta_{U,U'} = \theta_{W,W'} \circ ((g \circ f) \& (g'\circ f')).
> $$
> **Step 3** It is clear that $((g \circ f) \& (g'\circ f'))$ and $(g\&g') \circ (f\& f')$ are the same thing from $U \& U' \to W\& W'$. This complete the proof.

**Exercise 5** Show by $1:1$ correspondence that, there exists an isomorphism
$$
\Phi_{U,V,W} :U \otimes (V \otimes W) \to (U \otimes V) \otimes W.
$$
sending simple tensor $u \otimes (v \otimes w)$ to $(u \otimes v) \otimes w$.

**(optional)** Moreover, such $\Phi$ is natural, which means that for $f : U_f \to V_f$, $g : U_g \to V_g$ and $h : U_h \to V_h$, one has
$$
((f \otimes g)\otimes h) \circ \Phi _{U_f,U_g,U_h} = \Phi _{V_f,V_g,V_h} \circ (f\otimes (g\otimes h))
$$

> **Part I** 先构造 $\Phi$, 即验证 `λx ↦ ⟨⟨x.1,x.2.1⟩,x.2.2⟩`. 
>
> 为构造 $\Phi$, 先考虑 $\Phi$ 对应的双线性 $B : U \& (V \otimes W) \to (U \otimes V) \otimes W$.
>
> **Step 1** 证明对固定的 $u_0$, 双线性型
> $$
> B(u_0, \braket{-,-} ): V \& W\to (U \otimes V) \otimes W,\quad (v,w) \mapsto (u_0 \otimes v) \otimes w
> $$
> 是良定义的. 这一双线性型来自复合
> $$
> V\& W \overset \star\to (U\otimes V )\&W \overset \dagger\to (U \otimes V) \otimes W,\quad (v,w) \mapsto (u_0\otimes v, w) \mapsto (u_0 \otimes v)\otimes w.
> $$
>
> - $\star$ 的第一分量来自典范双线性 $U \& V \to U \otimes V$ 右输入, 第二分量是恒等. 从而 $\star$ 良定义.
> - $\dagger$ 是典范双线性.
>
> 这给出了线性映射
> $$
> B(u_0, - ): V \otimes W\to (U \otimes V) \otimes W,\quad v\otimes w \mapsto (u_0 \otimes v) \otimes w.
> $$
> **Step 2** 对每一个 $u_0$, 会有一个 $V \otimes W\to (U \otimes V) \otimes W$ 类型的线性映射. 由张量积的双线性, 对应 $u_0 \mapsto B(u_0, -)$ 是线性的. 具体地说, 
> $$
> ((u_1 + \lambda  u_2)\otimes v)\otimes w = (u_1 \otimes v) \otimes w + \lambda ((u_2 \otimes v)\otimes w).
> $$
> **Step 3** 以上两步给出了双线性映射
> $$
> B(- , - ): U \& V \otimes W\to (U \otimes V) \otimes W,\quad (u, v\otimes w) \mapsto (u_0 \otimes v) \otimes w
> $$
> 这诱导了上述 $\Phi_{U,V,W}$. 
>
> **Part II** 证明上述构造的 $\Phi$ 是同构, 说明方式是构造逆映射.
>
> 然后说明 $\Phi_{U,V,W}$ 是同构. 对称地构造 
> $$
> \Psi_{U,V,W} :(U \otimes V) \otimes W \to U \otimes (V \otimes W) ,
> $$
> 简单张量 $(u \otimes v) \otimes w$ 的像是 $u \otimes (v \otimes w)$. 由 $\Psi_{U,V,W} \circ \Phi _{U,V,W}$ 在简单张量上是恒等, 故 $\Psi_{U,V,W} \circ \Phi _{U,V,W}$ 就是恒等映射; 类似地, $\Phi _{U,V,W} \circ \Psi_{U,V,W}$ 也是恒等映射. 这直接构造了 $\Phi$ 的逆映射.
>
> **Part III** 说明自然性, 也就是
> $$
> ((f \otimes g)\otimes h) \circ \Phi _{U_f,U_g,U_h} = \Phi _{V_f,V_g,V_h} \circ (f\otimes (g\otimes h))
> $$
> 其实这不难, 比较简单张量的像即可.

**Exercise 6** Show that for arbitrary linear surjection $p$, the linear map $\mathrm{id}_U \otimes p$ is also a surjection.

> 对满射 $p : V \to W$, 下证明
> $$
> \mathrm{id}_U \otimes p : U \otimes V \to U \otimes W,\quad \sum u_i \otimes v_i \mapsto \sum u_i \otimes p(v_i).
> $$
> 是满射. 由题意, 任意 $U \otimes W$ 中元素 $\sum u_i \otimes w_i$ 均有原像 $\sum u_i \otimes v_i$, 其中 $p(v_i) = w_i$.

**Exercise 7** Show that for arbitrary linear injection $i$, the linear map $\mathrm{id}_U \otimes i$ is also an injection.

> 对单射 $i : V \to W$, 下证明
> $$
> \mathrm{id}_U \otimes i : U \otimes V \to U \otimes W,\quad \sum u_i \otimes v_i \mapsto \sum u_i \otimes i(v_i).
> $$
> 是单射. 任取 $\sum u_i \otimes v_i$, 满足 $\sum u_i \otimes i(v_i) = 0$, 下证明 $\sum u_i \otimes v_i = 0$ 即可.
>
> 由于张量是简单张量的有限和, 任意元素能写成数量最少的简单张量的和. 不妨设 $\sum_{i=1}^t u_i \otimes v_i$ 如此. 我们断言全体 $\{v_i\}$ 是线性无关组; 若不然, 则可以重新找一组 $\mathrm{span}(\{v_i\})$ 的基 (大小 $s < t$), 使得 $u_i \otimes v_i = \sum_{j=1}^s u'_{i,j}\otimes v'_j$. 因此,
> $$
> \sum_{i=1}^t u_i \otimes v_i = \sum _{j=1}^s \left(\sum _{i=1}^tu'_{i,j}\right) \otimes v_j'
> $$
> 是求和数量更少的简单张量的和, 与假定矛盾.
>
> 由单射, $\{i(v_i)\}$ 也是线性无关组. 使用延拓公理, 对任意 $j$, 存在 $\varphi _j : W \to \mathbb F$ 使得 $\varphi _j(i(v_i)) = \delta_{i,j}$. 因此
> $$
> (\mathrm{id}_U \otimes \varphi _j) :\sum u_i \otimes i(v_i) \mapsto u_j.
> $$
> 以上将 $0$ 映作 $0$, 从而 $u_j = 0$. 由所有 $u_i = 0$, 只能有 $\sum u_i \otimes v_i = 0$.

> [!TIP]
>
> You are allowed to use the following axiom: For any vector subspace $S \subseteq L$, any linear map $f : S \to W$ extends to $\widetilde f : L \to W$.
