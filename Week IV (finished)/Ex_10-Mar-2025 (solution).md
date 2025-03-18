**Problem Set for 09 March 2025**

**Definition** For any linear map $f : U \to V$, 

1. $\ker (f) = \mathrm{Null}(f) = N(f) = f^{-1}(0)= \{u \in U \mid f(u)=0\}$ is a subspace of $U$; 
2. $\mathrm{im}(f) = \mathrm{Range}(f) = R(f) = f(U) = \{f(u) \mid u \in U\}$ is a subspace of $V$. 

**Exercise 1**  Let $V = \mathbb{C}[x]$, and let $\omega = \frac{-1 + \sqrt{3} i}{2}$ denote a cubic root of unity ($\omega ^3 = 1$).  

1. Prove that each $V_k := \{f \in \mathbb{C}[x] \mid f(x) = \omega^k \cdot f(\omega x)\}$ is a linear subspace of $V$.  

   > 检验非空, 加法, 以及数乘. 过程略. 

2. Prove that $V = V_0 \oplus V_1 \oplus V_2$. 

   > $\color{red}\text{重要错误}$ 写出 $V_0 \cap V_1 \cap V_2 = 0$ 这个式子. 应为两两交非空. 
   >
   > 以下是判断子空间直和为全空间的一些方法, 也就是证明等式 $\bigoplus_{i \in I}V_i = V$. 
   >
   > 1. (若有限维) 证明 $\mathrm{span}(\bigcup_{i \in I}V_i) = V$, 同时 $\sum_{i \in I}\dim V_i = \dim V$.
   > 2. (若有限维) 证明 $V_i \cap V_j = 0$ 对任意 $i \neq j$ 成立, 同时 $\sum_{i \in I}\dim V_i = \dim V$.
   > 3. (若有基) 证明 $V$ 存在一组基 $\mathscr B$, 集合 $\mathscr B$ 可以划分作无交并 $\bigcup_{i \in I} \mathscr B _i$, 使得 $\mathrm{span}(\mathscr B_i) = V_i$. 
   > 4. (一般情况) 证明 $\mathrm{span}(\bigcup_{i \in I}V_i) = V$, 同时 $V_i \cap V_j = 0$ 对任意 $i \neq j$ 成立. 
   > 5. (一般情况) 证明任意向量能唯一写作 $V_i$ 中元素之和, 本质同上一条.  
   > 6. 自行发掘更多等价定义. 
   >
   > 本题用 4. 快一些. 

3. Prove that the mapping  
   $$
   L: V \to V, \quad f(x) \mapsto \omega \cdot f(\omega x) - \omega^2 f(\omega^2 x)
   $$
   is indeed a linear transformation. 

   > 基本都写对了. 略. 
   
4. Compute $\mathrm{im}(L)$ and $\ker(L)$.  

   > 直接计算. 像是 $V_0\oplus V_1$, 核是 $V_2$. 

5. Say $(u, \lambda) \in V \times \mathbb C$ is an eigenpair of $L$, provided $u \neq \mathbf 0$ and $L u = \lambda u$. Determine all eigenpairs of $L$.  

   > Hint: find $A \in \mathbb C^{3 \times 3}$ such that
   > $$
   > (L(f(x)) \mid L(f(\omega x)) \mid L(f(\omega^2 x)))= (f(x) \mid f(\omega x) \mid f(\omega^2 x))\cdot A.
   > $$
   
   > 以上 Hint 仅是提示. 需要简要说明, 为何矩阵的谱能说明一个无限维线性自同态的维度? 这一说明是容易的: 凡是有 $L(f_0) = \lambda_0 f_0$, 向量 $(f_0 (x)\mid f_0(\omega x) \mid f_0(\omega ^2 x))$ 的特征根是 $\lambda_0$. 
   >
   > 应当注意, **特征根不能是零向量.** 

****

**Exercise 2 (blank-filling questions)**  Provide explicit examples for each of the following cases **WITHOUT** verification:  

> $\color{red} \text{重要提示}$ 不应把无限维线性空间当作某一确指的线性空间. 
>
> 常用的无线维线性空间是 $\mathbb F[x]$ 与 $\mathbb F[\![x]\!]$, 请勿混淆. 

1. A linear endomorphism $f : V \to V$ that is injective but not surjective.  

   > $\mathbb F[x]$ 或 $\mathbb F[\![x]\!]$ 上的右移. 
2. A linear endomorphism $g : V \to V$ that is surjective but not injective.  

   > $\mathbb F[x]$ 或 $\mathbb F[\![x]\!]$ 上的左移 (首项变 $0$). 
3. A linear endomorphism $h : V \to V$ over the $\mathbb C$-vector space $V$ such that for every $z \in \mathbb{C}$, the equation $h(v) = z \cdot v$ has only the trivial solution $v = 0$. In other words, $h$ has no eigenvalues.  

   > 例如 1. 的右移算子. 
4. A linear endomorphism $f : V \to V$ that is injective but not surjective, a linear endomorphism $g : V \to V$ that is surjective but not injective, and such that $g \circ f = \mathrm{id}_V$.  

   > 考虑 1. 与 2., 先右移再左移. 
5. **(Optional)** A linear endomorphism $f : V \to V$ that is injective but not surjective, a linear endomorphism $g : V \to V$ that is surjective but not injective, and such that $f + g$ is an isomorphism (a linear bijection).

   > 先给出两种错误回答: 
   >
   > 1. $\mathbb F[x]$ 上左移与右移运算之和不是满的. 观察最高次系数, 常多项式不在像中. 
   > 2. $\mathbb F[\![x]\!]$ 上左移与右移运算之和不是单的, 例如 $(1,0,-1,0,1,0,\ldots)$ 属于核. 
   >
   > 常见的例子是 $\mathbb R$-上收敛至 $0$ 的数列构成的线性空间 $V$. 记 $L$ 是左移, $I$ 是恒等. 只需说明 $I-L$ 是单但不满的. 
   >
   > 1. (单) 若数列 $x$ 满足 $(I-L)x = 0$, 则 $x_n = x_{n+1}$. 由于 $x_n\to 0$ 故 $x$ 是零数列. 
   > 2. (不满) 记收敛数列 $x_n = \frac{1}{n}$, 则 $x$ 原像不收敛.
