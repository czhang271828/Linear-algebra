**Problem Set for 17 March 2025**

**Definition** (Linear maps) Let $f$ be a linear map. We restate the definition of image and pre-image (as mentioned in mathematical analysis, I believe) in formal and symmetric terms: 

1. (the image) $f_\ast U = \{f(u) \mid u \in U\}$, where $U$ is the subspace of the domain (domain: where $f$ starts/maps from/originates); 
2. (the inverse image) $f^\ast V = \{u \mid f(u) \in V\}$, where $V$ is the subspace of the codomain (codomain: where $f$ ends/maps to/terminates). 

**Exercise** The most elementary part of linear algebra is to study the operations $\{f_\ast, f^\ast, +, \cap\}$. It is an enjoyable time to observe how these simple operations generate identities.

Prove the following (whenever we write $f_\ast X$,it is assumed that the linear space $X$ is a subspace of the domain, and similarly for $f^\ast Y$): 

1. $U \subset f^\ast f_\ast U$, when does equality hold for all $U$? 

   > 答: 对任意 $u \in U$, 总有 $f(u) \in f_\ast U$. 从而 $u \in f^\ast f_\ast U$. 
   >
   > 若等号成立, 考虑一维子空间 $U = \mathrm{span}(x)$, 此时 $f(x)$ 的原像落在一维子空间中. 显然 $U$ 非零时 $f$ 非零, 故 $f^{-1}(\{f(x)\}) = \{x\}$. 由于 $f$ 有左逆元 $f^{-1}$, 从而是单射. 
   >
   > * 这一部分的证明可以简化: 若等号成立, 取 $U = \ker f$ 与 $U= 0$ 知 $\ker f= 0$. 
   >
   > 反之, 若 $f$ 是单射, 则等号成立. 

2. $f_\ast f^\ast V \subset V$, when does equality hold for all $V$? 

   > 答: 任意 $v \in f_\ast f^\ast V$ 形如 $f(u)$, 其中 $u \in f^\ast V$. 从而 $v = f(u) \in V$.  
   >
   > 若等号成立, 取空集或一元集 $S \subset V \setminus \mathrm{im}(f)$. 考虑 $V = \mathrm{span}(S)$ 与 $V = 0$ 知 $\mathrm{span}(S) = 0$. 从而 $S$ 只能是空集. 等价地, $f$ 满. 
   >
   > 若 $f$ 满, 则等号成立. 

3. $f_\ast f^\ast f_\ast = f_\ast$,

   > 答: 结合以下两点: 
   >
   > 1. (第二问) $f_\ast f^\ast {\color{blue} f_\ast U} \subset {\color{blue} f_\ast U}$; 
   > 1. (第一问) ${\color{red}f_\ast }U\subset {\color{red}f_\ast} f^\ast f_\ast U$. 

4. $f^\ast f_\ast f^\ast = f^\ast$, 

   > 答: 同上, 略. 

5. $f_\ast (U + V) = f_\ast U + f_\ast V$; 

   > 答: 一方面, $f_\ast (U + V) \supset f_\ast U$ 与 $f_\ast (U + V) \supset f_\ast V$ 均成立, 从而 $\text{左}\supset \text{右}$. 
   >
   > 另一方面, $f_\ast U \subset f_\ast U + f_\ast V$ 与 $f_\ast \subset f_\ast U + f_\ast V$ 均成立, 从而 $\text{左} \subset\text{右}$. 

6. $f^\ast (U \cap V) = f^\ast U \cap f^\ast V$;  

   > 答: 同上, 略. 

7. Explain $f_\ast (U \cap V) \subset f_\ast U \cap f_\ast V$; 

   > 答: 上式的证明是容易的, 因为 
   > $$
   > A \subset B\quad \text{且} \quad A \subset C\quad \text{蕴含} \quad A \subset B \cap C.
   > $$
   > 上式未必取等, 例如取满射
   > $$
   > f: \mathbb F^3\to \mathbb F^2,\quad (e_1,e_2,e_3)\mapsto (e_1,e_2,e_2). 
   > $$
   > 考虑 $U = \mathrm{span}(e_1,e_2)$ 与 $V = \mathrm{span}(e_1,e_3)$. 

8. Explain $f^\ast (U + V) \supset f^\ast U + f^\ast V$; 

   > 答: 证明略. 不取等的例子: 取单射
   > $$
   > f: \mathbb F^1 \to \mathbb F^2,\quad e_1 \mapsto e_1, 
   > $$
   > 考虑 $U = \mathrm{span}(e_1 + e_2)$ 与 $V = \mathrm{span}(e_2)$. 

9. **(optional)** if $f$ is injective, then $f_\ast (U \cap V) = f_\ast U \cap f_\ast V$ always holds, does the converse hold?

   > 答: 若 $f$ 单, 则 $\mathrm{domain}(f)$ 与 $\mathrm{im}(f)$ 是同构, 此时 $f$ 保持子空间的运算. 
   >
   > 反之, 考虑 $f = 0$. 

10. **(optional)** if $f$ is surjective, then $f^\ast (U + V) = f^\ast U + f^\ast V$ always holds, does the converse hold?

    > 答: 若 $f$ 满, 则 $\mathrm{codomain}(f)$ 与 $\mathrm{coim}(f)$ 是同构. 这里 $\mathrm{coim}(f)$ 定义作商集 $\frac{\mathrm{domain}(f)}{\ker f}$. 此时 $f^\ast$ 诱导了同构
    > $$
    > \mathrm{codomain}(f) \to\mathrm{coim}(f),\quad v \mapsto f^{-1}(v). 
    > $$
    > 这一同构保持子空间的运算. 
    >
    > 反之, 仍考虑 $f=0$. 

11. **(optional)** $f_\ast ((f^\ast U) \cap V) = U \cap (f_\ast V)$; 

    > 答: 一方面, 
    > $$
    > f_\ast ((f^\ast U) \cap V)  \subset f_\ast f^\ast U \cap f_\ast V \subset   U \cap (f_\ast V). 
    > $$
    > 另一方面, 若 $u \in \text{右}$, 则存在 $u = f(v)$. 此时 $v \in f^\ast U$. 这说明 $u \in \text{左}$. 

12. **(optional)** $f^\ast ((f_\ast U) + V) = U + (f^\ast V)$. 

    > 答: 证明类似. 

**Problem** This exercise (**without Axiom of Choice**) show that how $\mathbb F[x]$ and $\mathbb F[\![x]\!]$ differs. 

1. Show that $\mathrm{Hom}_{\mathbb F}(\mathbb F[x], \mathbb F) \simeq \mathbb F[\![x]\!]$. 

   > 答: 依照基的定义, 以下是三个集合的双射: 
   > $$
   > \begin{bmatrix}
   > \mathrm{Hom}_{\mathbb F}(\mathbb F[x], \mathbb F) &\simeq& \text{数列空间}&\simeq & \mathbb F[\![x]\!]\\[6pt]
   > \varphi& \mapsto & (\varphi(x^n))_{n \geq 0}& \mapsto &\sum\limits_{n \geq 0} \varphi(x^n)\cdot x^n
   > \end{bmatrix}.
   > $$
   > 这一对应保持线性关系, 从而是线性同构. 
   >
   > 若将形式幂级数 $\sum_{n\geq 0}c_nx^n$ 视作 $\mathrm{Hom}_{\mathbb F}(\mathbb F[x], \mathbb F)$ 中的一个线性映射 $\ell$, 则对任意多项式 $p \in \mathbb F[x]$, 
   > $$
   > \ell(p) = \sum_{n \geq 0} c_n \cdot p_n\quad ({\color{red}\text{请强调这是有限和!}})
   > $$

2. Show that $\mathrm{Hom}_{\mathbb F}(\mathbb F[\![x]\!], \mathbb F)$ has a subspace which is isomorphic to $\mathbb F[x]$. 

   > 答: 对任意 $\mathbb F$-线性空间 $V$, 以下是线性映射: 
   > $$
   > \Phi: V \to \mathrm{Hom}_{\mathbb F}(\mathrm{Hom}_{\mathbb F}(V, \mathbb F), \mathbb F),\quad v \mapsto \begin{bmatrix}\mathrm{Hom}_{\mathbb F}(V, \mathbb F)& \to & \mathbb F \\ f & \mapsto & f(v)\end{bmatrix}.
   > $$
   > 简单地说, $f(v)$ 可以视作线性映射 $f(\bullet)$ 在 $v$ 处的取值, 也可以视作线性映射 $\bullet(v)$ 在 $f$ 处的取值. 
   >
   > 回到 $V = \mathbb F[x]$ 的情况. 为说明 $\Phi$ 是单射, 只需说明
   > $$
   > \forall p \in \mathbb F[x], \ \forall \varphi \in \mathbb F[\![x]\!] :(\varphi (p) = 0 \to p=0). 
   > $$
   > 换言之, 即证明
   >
   > * 若多项式 $p$ 在一切形式幂级数下的像是 $0$, 则 $p$ 是零多项式. 
   >
   > 这是显然的, 因为形式幂级数 $x^n$ 的功效是提取 $p$ 中 $n$-次项的系数. 

3. **(Optional)** What lies in $\mathrm{Hom}_{\mathbb F}(\mathbb F[\![x]\!], \mathbb F) \setminus \mathbb F[x]$? 

   > 答: 略. 

4. **(Optional)** Show that $\mathbb F[\![x]\!]$ has a complementary subspace in $\mathrm{Hom}_{\mathbb F}(\mathrm{Hom}_{\mathbb F}(\mathbb F[\![x]\!], \mathbb F), \mathbb F)$. 

   > 答: 定义 $V^\ast : =\mathrm{Hom}_{\mathbb F}(V, \mathbb F)$. 上文定义了映射 $\Phi_V: V \to V^{\ast\ast}$. 今考虑
   > $$
   > V^\ast \xrightarrow {\Phi_{V^\ast}} V^{\ast\ast\ast} \xrightarrow{(\Phi_V)^\ast} V^\ast.
   > $$
   > 今取 $V= \mathbb F[x]$. 
   >
   > * 先证明 $\Phi_{V^\ast}$ 是单射. 假定形式幂级数 $\varphi \in V^\ast$ 被任意 $\alpha \in V^{\ast\ast}$ 零化, 往证 $\varphi=0$. 实际上, 将 $\alpha$ 遍历整个子空间 $\mathbb F[x] \subset V^{\ast\ast}$ 就足以得到 $\varphi=0$. 
   > * 再证明 $(\Phi_V)^\ast$ 是满射. 任取 $f : V \to \mathbb F$, 往证 $f$ 通过单射 $V \hookrightarrow V^{\ast\ast}$ 分解. 这是显然的, 因为任何形式幂级数 $f$ 都能视作 $V^{\ast \ast } \to \mathbb F$ 类型的线性映射 (仍然是赋值化). 
   >
   > 依照复合的恒等映射 $V^\ast \hookrightarrow V^{\ast\ast\ast} \twoheadrightarrow V^\ast$, 得 $V^\ast$ 是 $V^{\ast\ast\ast}$ 的直和项. 

5. **(Optional)** Show that there are no surjective linear maps $\mathbb F[x] \to \mathbb F[\![x]\!]$. 

   > 答: 对可数维线性空间 $V = \mathrm{span}(\{s_i\}_{i \geq 1})$, 则 $V^\ast \simeq \mathbb F[\![x]\!]$ 是无限维线性空间. 下证明 $V^\ast$ 是不可数维的. 若 $V^\ast$ 是可数维的, 则存在一族基 $\{f_i\}_{i\geq 1}$. 今考虑无穷阵
   > $$
   > \begin{bmatrix}
   > f_1(s_1)&f_1(s_2)&f_1(s_3)&\cdots \\
   > f_2(s_1)&f_2(s_2)&f_2(s_3)&\cdots \\
   > f_3(s_1)&f_3(s_2)&f_3(s_3)&\cdots \\
   > \vdots &\vdots &\vdots &\ddots 
   > \end{bmatrix}.
   > $$
   > 存在 $f_{n_1}$ 满足 $f_{n_1}(s_1)\neq 0$, 我们用"初等变换"使得第一纵列的非零项只有 $f_{n_1}(s_1)$​. 可以验证, 对任意前有限行, 这样的"初等变换"在有限步内完成, 从而良定义. 不难验证这不改变行空间. 
   >
   > 归纳地构造对角恒正的无穷阵
   > $$
   > \begin{bmatrix}
   > f_{n_1}(s_1)&f_{n_1}(s_2)&f_{n_1}(s_3)&\cdots \\
   > 0&f_{n_2}(s_2)&f_{n_2}(s_3)&\cdots \\
   > 0&0&f_{n_3}(s_3)&\cdots \\
   > \vdots &\vdots &\vdots &\ddots 
   > \end{bmatrix}.
   > $$
   > 这一矩阵的行空间与原矩阵相同: 在取元素验证时, 只需要考虑有限横行. 最后考虑行向量
   > $$
   > (f_{n_1}(s_1)\mid \sum_{1,2}f_{n_i}(s_2) \mid\cdots \mid  \sum_{i\leq k} f_{n_i}(s_k)\mid \cdots).
   > $$
   > 这一行向量无法通过有限线性组合表出!

