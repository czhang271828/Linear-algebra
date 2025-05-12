**Problem Set for 08 May 2025: A New Jordan form over $\mathbb C$**

**Definition** (Ceigen-). Let $A\in \mathbb C^{n \times n}$. We say that $(v, \lambda)$ is a ceigenpair of $A$ provided $A \overline v = \lambda v$ for some $\lambda \in \mathbb C$. The vector $v$ is referred to as a ceigenvector and $\lambda$ a ceigenvalue, correspondingly. For matrices, we say $A$ is csimilar to $B$ provided $A = PB\overline P^{-1}$ for some non-singular matrix $P$.

**Exercise 1** Characterise the ceigenspace corresponding to the ceigenvalue $0$.

> 就是 $\overline {\ker A}$.

**Exercise 2** Demonstrate that if $\lambda$ is a ceigenvalue, then so too is $e^{i \theta} \cdot \lambda$. Furthermore, show that for any ceigenvector $v$, there exists a ceigenvector associated with a ceigenvalue $\geq 0$.

> 若有 $A \overline v = λ v$, 则对任意 $t ∈ ℝ$ 总有 $A \overline {e^{i t}v}= e^{-i⋅ 2t}λ (e^{i t}v)$. 取 $θ = -t/2$.

**Exercise 3** Suppose $(v, \sigma)$ is a ceigenpair of $A$; then $(v, \sigma \overline \sigma)$ is an eigenpair of $A \overline A$. In particular,

- if $A \in \mathbb C^{d \times d}$ possesses $d$ ceigenpairs which are linearly independent over $\mathbb C$, then $A\overline A$ is diagonalisable with all eigenvalues non-negative.

Now consider the following **partial converse statement**:

- $A$ has no ceigenvectors if and only if $A \overline A$ admits no eigenvalues in $\mathbb R_{\geq 0}$;
- $A \in \mathbb C^{d \times d}$ has $d$ linearly independent ceigenpairs over $\mathbb C$ if and only if $A\overline A$ is diagonalisable with non-negative eigenvalues.

Prove the **partial converse statement**: suppose that $(v, \sigma \overline {\sigma })$ is an eigenpair of $A\overline A$; then $\sigma$ is a ceigenvalue of $A$.

> 错误解答: $u := \overline σ v + A\overline v$, 则 $A \overline u = σ A\overline v + σ \overline σ v = σ u$.
>
> 注: 应当要求 $u ≠ 0$. 取 $u_t := e^{-it}\overline σ v + e^{it}A\overline v$, 则 $A \overline {u_t} = e^{i t}σ A\overline v + e^{-i t}σ \overline σ v = σ u_t$. 至少存在一个 $t$ 使得 $u_t ≠ 0$.

**Exercise 4** Elucidate **Exercise 3** (particularly the warning) with the following example:
$$
A = \begin{pmatrix} 1 & i \\ 0 & 1 \end{pmatrix},\quad v = \begin{pmatrix}1 \\ i \end{pmatrix}.
$$

> 由 $A \overline A = I$, $v$ 是 $A\overline A$ 的特征向量, 但不是 $A$ 的 ceigenvector.

**Exercise 5** This serves to complete **Exercise 2**. Suppose $\{(v_i , \lambda_i)\}_{i=1}^n$ are ceigenpairs of $A$ such that $|\lambda_i| \neq |\lambda_j|$; show that $\{v_i\}_{i=1}^n$ are linearly independent.

> $\{v_i\}$ 是 $A\overline A$ 不同特征根的特征向量, 从而线性无关.

**Exercise 6** We aim to identify the analogue of the Jordan canonical form in the c-version, namely, $X =P J\overline P^{-1}$. We commence with a very special case:

- $P\overline {P} = I$ if and only if $P = Q\overline Q^{-1}$ for some invertible $Q$.

> 假定 $P\overline P = I$. 记 $Q_t := e^{-it}I + e^{it}P$, 此时 $P \overline {Q_t} =  e^{it}P + e^{-it}I = Q_t$. 比较特征根, 存在 $t$ 使得 $Q_t ≠ 0$.
>
> 假定 $P = Q\overline Q^{-1}$, 则 $P \overline P = Q \overline Q^{-1}\overline Q Q^{-1} = I$.

**Exercise 7** The most elementary Jordan matrix is the diagonal matrix. Show that $A$ is cdiagonalisable (i.e., $A = PD\overline P^{-1}$ for some $P$) if and only if <font color = red>$A\overline A$ is diagonalisable and $\mathrm{rank}(A) = \mathrm{rank}(A\overline A)$ </font>. In this scenario, $A\overline A$ has only non-negative eigenvalues.

> 若 $A = PD\overline P^{-1}$, 则 $A \overline A = PD\overline D P^{-1}$ 是可对角化的矩阵.
>
> 若 $A \overline A$ 可对角化, 记 $P (A\overline A) P^{-1} = D$, 其中 $D$ 是以数量矩阵 $λ_i I_{s_i}$ 为分块的对角矩阵. 形式地取 $B := PA\overline P^{-1}$, 以下计算表明 $B$ 是分块对角矩阵:
>
> - 由 $B\overline B = D = \overline D = \overline B B$, 得 $BD = B \overline B B = DB$. 由交换性, $B$ 必然是分块对角矩阵.
>
> 此时, 对 $A$ 的每一个分块作 c-对角化即可. 不妨设 $A\overline A$ 是零矩阵或者恒等矩阵.
>
> - 若 $A\overline A$ 是零矩阵, 由秩关系得 $A = O$.
> - 若 $A\overline A = I$, 则存在可逆矩阵 $Q$ 使得 $A = Q I\overline Q^{-1}$.
>
> 作为推论: 若 $A \overline A$ 可对角化, 则 $A$ c-相似于某个全为非负实数的 Jordan 型, 从而 $A \overline A$ 的特征值均为非负实数.

**Exercise 8** (Nilpotent part). Show that there exists a matrix $P$ such that $PA\overline P^{-1} = \binom{N \ \ O}{O \ \ B}$, where $N$ comprises nilpotent Jordan blocks and $B$ is invertible.

> 直接使用 Fitting 引理, 得两种直和分解: $V = \mathrm{im}(\cdots \overline AA\overline A A) ⊕ \ker (\cdots \overline AA\overline A A)$.
>
> 取 $ℝ$-线性自同态 $φ$, 使得有 $ℂ$-线性自同态 $φ ∘ \overline {(-)}$. 称这一自同态在基 $u_i$ 下的 c-表示为矩阵 $A$, 若
> $$
> φ (u_1 ∣ \cdots ∣ u_n) = (\overline{u_1} ∣ \cdots ∣ \overline{u_n}) ⋅ A.
> $$
>
> 存在 c-相似变换 $PA\overline P^{-1} = A'$, 当且仅当存在一组基 $(v_i) = (u_i) P^{-1}$ 使得 $φ(v_∙) = (\overline{v_∙}) ⋅ A'$. 比对 Fitting 引理,
>
> - 存在 $\mathrm{im}(\cdots \overline AA\overline A A)$ 的一组基, 使得在 $φ ∘ \overline {(-)}$ 下是同构;
> - 存在 $\mathrm{ker}(\cdots \overline AA\overline A A)$ 的一组基, 使得在 $φ ∘ \overline {(-)}$ 下是幂零变换.
>
> 这就完成了 c-分块对角化.
>
> 考虑增长的零空间 $\ker A$, $\ker \overline A A$, $\ker A\overline A A$, $\ker \overline A A \overline A A$ 等等. 记 $V_{-1}$ 是最后一个不为零的零空间, $V_{-k-1}$ 是 $V_{-k}$ 的前项. 这些都是互相包含的 $ℂ$-线性空间, 因为 $A$ 与 $\overline A$ 是向左添加的.
>
> 取 $V_{-1}$ 的基 $\{v^0_{(0,∙)}\}$. 此时存在一组 $\{v_{(0,∙)}^1\}$ 使得 $A v_{(0,i)}^1 = v_{(0,i)}^0$. 另取 $\{v^1_{(1, ∙)}\}$ 使得 $\{v^1_{(0, ∙)}\} ⊔ \{v^1_{(1, ∙)}\}$ 是 $V_{-2}$ 的基. 归纳地, 取 $\{v^2_{(k, ∙)}\}_{k = 1,2,3}$ 使得有双射 $\overline A : \{v^2_{(k, ∙)}\}_{k=1,2} \overset ∼ → \{v^1_{(k, ∙)}\}_{k=1,2}$.
>
> 将归纳过程总结作下图 (同一般 Jordan 型的归纳):
>
> $$
> \begin{bmatrix}
> V_{-3} & \xrightarrow{\overline{A}} & V_{-2} & \xrightarrow{A} & V_ {-1} & \xrightarrow{\overline{A}} & 0\\
> \left\{v_{( 0,\bullet )}^{2}\right\} & \xrightarrow{\sim } & \left\{v_{( 0,\bullet )}^{1}\right\} & \xrightarrow{\sim } & \left\{v_{( 0,\bullet )}^{0}\right\} & \twoheadrightarrow  & 0\\
> \left\{v_{( 1,\bullet )}^{2}\right\} & \xrightarrow{\sim } & \left\{v_{( 1,\bullet )}^{1}\right\} & \twoheadrightarrow  & 0 &  & \\
> \left\{v_{( 2,\bullet )}^{2}\right\} & \twoheadrightarrow  & 0 &  &  &  &
> \end{bmatrix}.
> $$
>
> 固定 $(i,j)$, 则一条链 $\{v_{(i,j)}^k\}$ 对应一个幂零 Jordan 块 $J(0)$. 矩阵 (视作线性映射) 的功效是平移链上的点.

**Exercise 9** To analyse the Jordan form of $A$, we begin by studying the Jordan form of $A \overline A$. Demonstrate the following:

1. $A \overline A$ has a characteristic polynomial with real coefficients;
2. non-real Jordan blocks occur in conjugate pairs;
3. if $\dim \ker (\lambda I - A\overline A) = 1$ and $\lambda \in \mathbb R$, then $\lambda \geq 0$;
4. **(optional)** Generalise item 3 by showing that for any eigenvalue $\lambda <0$, the dimension of the null space $\dim \ker (\lambda I - A \overline A)^p$ is always even ($\forall p \geq 1$), implying that negative Jordan blocks occur in pairs.

> (1.) 由方阵 $\det (x I - AB) = \det (xI - BA)$, 得 $A\overline A$ 与 $\overline A A$ 特征多项式相同. 结合 $\overline {\det (x I - A \overline A)} = \det (xI - \overline A A)$, 该特征多项式是实系数的.
>
> (2.) 讨论广义特征向量的对应关系即可. 若 $λ v = A \overline A u$, 则 $e^{it}\overline {λ v} = \overline A A (e^{it}\overline u)$. 取 $t$ 使得 $e^{it}\overline λ = λ$ 即可. 由于 $t$ 是取定的, 故 $A\overline A$ 与 $\overline AA$ 关于 $λ$ 的特征空间是同构的, 通过取共轭再数乘 $e^{it}$ 实现.
>
> (3.) 若 $λ < 0$, 取 $v ∈ \ker (λ I - A \overline A)$, 则 $A\overline A (A \overline v) = λ (A\overline v)$. 由特征空间一维, 必有 $z v = A \overline v$. 此时 $A \overline Av = z\overline z v$, 与 $λ < 0$ 矛盾.
>
> (4.) 通过商空间归纳即可. 对 $λ < 0$, 假定 $\ker (λ I - A \overline A)^k$ 是偶数维的, 往证 $\ker (λ I - A \overline A)^{k+1}$ 也是偶数维的. 考虑限制在不变子空间 $\ker (λ I - A \overline A)^k$ 上的线性变换, $\ker (λ I - A \overline A)|_{\ker (λ I - A \overline A)^{k}}$ 是偶数维的. 由 Rank-Nullity 与归纳假设得证.

**Exercise 10** Show that there exists a matrix $P$ such that $P A \overline P^{-1}$ is block diagonal with the following summands:

1. (Jordan type): $J_s(\lambda)$ where $\lambda \geq 0$;

2. (Half-Jordan type): Let $H_{2s}(\lambda) := \binom{O \quad   \ I}{ J_s(\lambda)  \ O  }$.

   1. (For non-real eigenvalues): Since each complex Jordan block in $A \overline A$ appears in a pair, i.e., $\binom{J_s(z) \quad O \ \ \ }{\ \ \ O \quad J_s(\overline z)}$, define $H_{2s}(z)$ as a block of $P A \overline P^{-1}$ satisfying

      $$
      H_{2s}(z) = \begin{pmatrix}O&I\\ J_s(z) & O\end{pmatrix}.
      $$

   2. (For negative eigenvalues): For a negative eigenvalue $\lambda$ of $A$, the Jordan blocks also appear in pairs (see **Exercise 9**).

We refer to this as the cJordan form of $A$. It is uniquely determined by $A$.

> 这是直接的验证. 关键点 (幂零部分的结构, 各阶广义负特征空间为偶数) 已在前文给出证明.

**Exercise 11 (optional)** (The uniqueness between the cJordan form of $A$ and the Jordan form of $A \overline A$). The cJordan form is essentially unique.

- Find distinct matrices $A \neq B$ such that  $A \overline A = B \overline B$;
   > $A = \binom{0 \ \ 1}{0 \ \ 0}$ 与 $B = O$.
- Suppose $A\overline A = B\overline B$ are invertible; then there exists a matrix $P$ such that $PA \overline P^{-1} = B$. In this case, we say $A$ is scimilar to $B$.

   > 在相差一个旋转 ($e^{it}$) 的情形下, $J(≠ 0)$ 与 $H(≠ 0)$ 部分唯一确定. 相差的旋转部分可通过 $e^{it / 2} ⋅ I$ (及其构成的分块对角矩阵) 的 c-相似所用抵消.

In summary, $A$ is csimilar to $B$ if and only if the following hold:

1. $A \overline A$ is similar to $B \overline B$;
2. $\mathrm{rank}(A\overline A A\cdots A (\overline A)) \equiv \mathrm{rank}(B\overline B B \cdots B(\overline B))$; that is, $A$ and $B$ possess the same $J(0)$-portion in their cJordan forms.

**Exercise 12 (optional)** Utilise the cJordan form to show that any complex matrix $A$ is csimilar to:

1. $\lambda A$ for $|\lambda| = 1$;
2. $\overline A$;
3. $A^T$;
4. a real matrix;
5. a symmetric matrix

> 前三条就是直接的验证 ($A \overline A$ 相似, 且 $J_0$ 部分相同).
>
> 对第四条, 直接构造分块实矩阵 $\binom{N \ \ O}{O \ \ R}$ 使得 $N$ 是 $A$ 的 c-幂零部分, $R$ 是 $A \overline A$ 可逆部分的平方根 (对复特征部分, 考虑 $\binom{O \ \ +}{- \ \ 0}$ 一类的旋转矩阵; 负特征部分总是成对出现, 从而存在实的平方根).
>
> 对第五条, $PA\overline P^{-1}$ 是对称的, 当且仅当 $PA\overline P^{-1} = ({{PA\overline P^{-1}}})^T$, 也就是 $(P^TP) ⋅ A =  {A^T} ⋅ {(P^TP)}$. 由 Choleskey 分解, 复矩阵对称当且仅当其形如 $P^TP$. 由往期作业 (考察有理标准型以及多项式友矩阵), 任意域上的矩阵通过对称矩阵与其转置相似.

**Exercise 13 (optional)** Show that for any complex square matrix $A$,
$$
\det(AA^H+I)\geq \det(A\overline{A}+I) > 0.
$$

> 由特征多项式实系数, 以上三项都在 $ℝ$ 中.
>
> (第二个不等式). 由 $A = PR\overline P^{-1}$, 得 $\det (A \overline A + I) = \det (R^2 + I) = |\det (I + iR)|^2>0$.
>
> (第一个不等式). 记增广矩阵 $T := (I \ \ A)$, 第一个不等式等价于 $\det T\overline T^T ≥ \det T T^T$. 由 Cauchy-Binet 公式展开, 左侧是右侧的复数求和各项取模长所得, 取等当且仅当 $A$ 是实矩阵.

**Exercise 14 (optional)** Using cJordan forms, show that any complex matrix is the product of a symmetric matrix and a positive definite Hermitian matrix.

> 由 Choleskey 分解与 Krull-Schmidt 酉正交化, 任意对称的复矩阵形如 $U^TDU$, 其中 $D$ 是取值 $ℝ_{≥ 0}$ 的对角矩阵, $U$ 是酉矩阵. 先将复矩阵 c-相似作对称矩阵, 得 $P S \overline P^{-1}$. 将 $S$ 写作 $U^TDU$, 得
>
> 1. 任意复矩阵是对称矩阵与正定 Hermitian 矩阵乘积, $PU^TDUP^T ⋅ (P^T)^{-1}\overline P^{-1}$;
> 2. 任意复矩阵是可逆对称矩阵与半正定 Hermitian 矩阵乘积, $PU^TU P^T⋅ P^{T,-1}\overline U^{T} DU \overline P^{-1}$.

**Exercise 15 (optional)** Show that $\binom{O\quad A}{\overline A\quad O}$ is similar to $\binom{O\quad B}{\overline B\quad O}$, if and only if $\binom{O\quad A}{-\overline A\quad O}$ is similar to $\binom{O\quad B}{-\overline B\quad O}$.

> 若 $\binom{O\quad A}{\overline A\quad O}$ 与 $\binom{O\quad B}{\overline B\quad O}$ 相似, 则平方后亦然. 结合 $A \overline A ∼ \overline A A$, 得 $A\overline A ∼ B \overline B$. 比较零空间维数, 得 $A$ 与 $B$ c-相似.
>
> 若 $A$ 与 $B$ c-相似, 记作 $A = PB\overline P^{-1}$. 此时 $\binom{P\quad O}{O \quad \overline P} \binom{O\quad A}{\overline A\quad O} \binom{P\quad O}{O \quad \overline P}^{-1} = \binom{O\quad B}{\overline B\quad O}$.
