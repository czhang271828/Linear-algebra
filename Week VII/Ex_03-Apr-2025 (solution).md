**Problem Set for 03 April 2025**

**Definition (Eigenvector, Eigenvalue, and Eigenpair)** Let $f: V \to V$ be an endomorphism. If and only if there exists
$$
f(v) = \lambda v,\quad (\lambda \in \mathbb{F},\quad v \neq 0),
$$
we say:

- $v$ is an eigenvector of $f$;
- $\lambda$ is an eigenvalue of $f$; and
- $(\lambda, v)$ is an eigenpair.

**Exercise 1** Determine all eigenvalues of the linear endomorphism:
$$
\mathbb{R}[x] \to \mathbb{R}[x],\quad f(x) \mapsto \int_0^x f(t) \operatorname{d} t.
$$
> 答: 记以上 $\varphi$. 若 $\varphi (f)=0$, 则 $f\equiv 0$. 若存在 $\lambda \neq0$ 使得 $\varphi (f) = \lambda  f$, 则 
> $$
> f = \lambda f' ,\quad 0 = \lambda f(0). 
> $$
> 归纳地, $f^{(k)}(0) = 0$, 从而 $f$ 是零多项式. 鉴于特征向量不能是 $0$, 自同态 $\varphi$ 没有特征根. 

**Exercise 2** Given $a, b \in \mathbb{R}$, determine all eigenpairs of the linear endomorphism:
$$
\varphi : \mathbb{R}[x] \to \mathbb{R}[x],\quad f(x) \mapsto f(ax+b).
$$
> 答: 记 $V_k$ 是次数 $\leq k$ 的多项式构成的线性空间. 显然 $V_k$ 是 $\varphi$ 的不变子空间, 因此只需在每一 $V_k$ 中计算特征值. 先找不动点 $x_0 = ax_0 + b$. 
>
> 1. 若 $a=1$, 则不动点未必存在. 若 $(a,b)=(1,0)$, 则特征值是 $1$, 特征向量向量是非零多项式. 若 $a=1$ 但 $b\neq0$, 则周期的多项式是常多项式, 此时的特征值只有 $1$, 特征向量是非零常多项式. 
>
> 2. 若 $a \neq 1$, 取不动点 $x_0$. 此时 $f((x-x_0)) = f(a(x-x_0))$, 因此
>    $$
>    \varphi : (x-x_0)^k = a^k \cdot (x-x_0)^k.
>    $$
>    对任意 $k$, $\varphi$ 在不变子空间 $\mathrm{span}(\{1,x,\ldots, x^k\})$ 上表现作三角矩阵, 对角元分别是 $(1,a,\ldots, a^k)$. 这说明 $\varphi$ 的所有特征值形如 $a^k$, 对应的特征空间自然是一维的. 
>
> 3. 特别地, 若 $a=0$ 或 $a=-1$, 则需要合并部分特征空间. 

**Exercise 3** Let $V$ the space of smooth, bounded, and real valued functions over $\mathbb{R}$, which means that $f \in V$ maps $\mathbb R$ to some $[a,b] \subseteq \mathbb R$, and $\frac{\operatorname d^{\forall k \geq 1}}{\operatorname d x} f(x)$ exists. Determine all eigenpairs of the linear endomorphism: 
$$
\varphi_k : V  \to V,\quad f(x) \mapsto \frac{\operatorname d^k }{\operatorname dx ^k}f(x).
$$

* **(Optional)** How would you like to define $\frac{\operatorname d^{1/2}}{\operatorname dx^{1/2}} f(x)$?  

> 答: 对取定的 $k$ 与 $\lambda\in \mathbb R$, 以下观察方程 $\lambda f = \varphi _k (f)$ 在复函数空间中的解. 
>
> 若 $\lambda = 0$, 则 $f$ 必然是多项式. 由有界性, $f$ 只能是常函数. 从而特征向量是非零常函数. 
>
> 若 $\lambda \neq 0$, 则 $\varphi_k (f) - \lambda f = 0$ 的解构成了 $\mathbb C$-线性空间 $\mathrm{span}(\{e^{z_i x}\}_{ 1 \leq i \leq k})$. 其中 $\{z_i\}_{i=1}^k$ 是 $\lambda$ 的单位根. 由于 $\mathrm{span}(\{e^{z_i x}\}_{ 1 \leq i \leq k})$ 中的实值函数形如 $\sum A\cdot e^{ax} \cdot (\cos(bx) + \sin (cx))$, $V$ 中函数有界, 从而特征向量必然形如 $\sum c \cdot \cos (ax + b)$. 
>
> 此时通过 $\sum c \cdot \cos (ax + b)$ 反推 $(k,\lambda)$ 即可. 不失一般性地, 设和式形如 $\sum c_i \cos (a_i x) + d_i \sin (b_i x)$. 
>
> 1. $k$ 奇数. $\varphi_k$ 的特征空间是若干二维不变子空间 $\mathrm{span}(\cos ax, \sin ax)$ 的直和. 相应的矩阵形式是 $\binom{0 \  \ +}{- \ \ 0}$ 或 $\binom{0 \  \ -}{+ \ \ 0}$. 这说明 $\varphi_k$ 没有实特征根. 
> 2. $k$ 偶数. 仍考虑二维不变子空间 $\mathrm{span}(\cos ax, \sin ax)$, 此时的矩阵形式是 $a^k\cdot (-1)^{k/2}$-对角矩阵. 这说明 $\mathrm{span}(\cos ax, \sin ax)$ 是 $\lambda = a^k\cdot (-1)^{k/2}$ 对应的特征空间. 
>
> 综上. 
>
> 1. $k$ 奇数时 $\varphi_k$ 只有零特征值, 特征向量是非零常函数. 
> 2. $k$ 是 $2$ 倍数但非 $4$ 倍数时, 所有非正均是特征值, 特征向量是
>    1. $\lambda = 0$, 则特征向量是非零常函数; 
>    2. $\lambda = -a^k$, 则特征向量是 $\mathrm{span}(\cos ax, \sin ax)$ 中非零函数. 
> 3. $k$ 是 $4$ 倍数时, 所有非正均是特征值, 特征向量是
>    1. $\lambda = 0$, 则特征向量是非零常函数; 
>    2. $\lambda = a^k$, 则特征向量是 $\mathrm{span}(\cos ax, \sin ax)$ 中非零函数. 

**Exercise 4** Let $f : V \to V$ be an $\mathbb{F}$-linear endomorphism. Prove or disprove the following statement:

- $v$ is an eigenvector of $f$, if and only if $v \in \ker (\lambda \cdot \mathrm{id} - f)$.

> 答: 反例 **Exercise 1**. 

**Exercise 5 (Optional)** Let $V = C^0([0,1])$, i.e., the space of continuous real-valued functions over the closed interval $[0,1]$. Determine all eigenpairs of the operator:
$$
V \to V,\quad f(x) \mapsto \int_0^1 K(x,y) \operatorname{d}y,
$$
where the kernel function is defined as:
$$
K(x,y) := \min(x,y) - x \cdot y.
$$

* Hint: Under appropriate conditions,
  $$
  \frac{\operatorname{d}}{\operatorname{d}x} \int_{f(x)}^{g(x)} H(x,y)\operatorname{d}y = H(x,g(x)) - H(x,f(x)) + \int_{f(x)}^{g(x)} H_x(x,y) \operatorname{d}y.
  $$

> 答: 若 $\lambda$​ 是特征值, 则化简得
> $$
> \lambda f(x) = \int_0^x yf(y)\operatorname dy + \int_x^1 x f(y) \operatorname dy - \int_0^1 yx f(y) \operatorname dy.
> $$
> 求导得
> $$
> \lambda f'(x) = xf(x) + \int_x^1 f(y) \operatorname dy -xf(x)-\int_0^1 yf(y)\operatorname dy.
> $$
> 再求导, 得
> $$
> \lambda f''(x) = -f(x). 
> $$
> 此时得方程组 (显然 $\lambda =0$ 不是特征根) 
> $$
> \lambda ''(x) = -f(x),\quad \lambda f(0) = \lambda f(1) = 0.
> $$
> 若 $\lambda <0$, 则解得 $f(x) = a \cdot e^{x/\sqrt{-\lambda}} + b \cdot e^{-x/\sqrt{-\lambda}}$. 代入 $f(0)=f(1)=0$ 得 $a=b=0$.
>
> 若 $\lambda > 0$, 则解得 $f(x) = a \cdot \sin \frac{x}{ \sqrt \lambda} + b \cdot \cos \frac{x}{ \sqrt \lambda}$. 代入 $f(0)=f(1)=0$ 得 $b=0$, 以及 $\sin \frac{1}{\sqrt \lambda} =0$. 从而
> $$
> \lambda _n = (n\pi)^{-2}\quad (n \in \mathbb N_+).
> $$
>  对应的特征向量是 $c\cdot \sin n\pi x$ ($c \neq 0$). 

**Exercise 6 (optional)** Let $V$ be the space of absolutely integrable functions from $\mathbb{R}$ to $\mathbb{C}$. Define the Fourier transform:
$$
\mathcal{F} : V \to V,\quad f(x) \mapsto \widehat{f}(u) := \frac{1}{2\pi} \int_{-\infty}^{+\infty} f(t)\operatorname{e}^{-\operatorname{i}tu} \operatorname{d}t.
$$

1. Is $\mathcal{F}$ a well-defined $\mathbb{C}$-linear endomorphism? If unsure, consult Professor Tao for appropriate spaces $V$, or simply take
   $$
   W := \bigcap _{k \geq 0} V_k,\quad V_0 := V,\quad V_{k+1}:= \mathcal F(V_k) \cap V_{k}
   $$
   which ensures that $\mathcal{F}(W) \subset W$ (show that $W \neq 0$?). 

   > 答: 绝对可积函数在 Fourier 变换下的像未必是绝对可积的, 因此 $\mathcal F(V)$ 未必是 $V$ 的子空间. 记 $f_a$ 是在 $(-a,a)$ 上取 $1$, 其余处取 $0$ 的函数. 此时
   > $$
   > \widehat f_a(u) = \frac{1}{2\pi}\int_{-a}^a e^{-itu}\operatorname dt=\frac{\sin ta}{\pi t}.
   > $$
   > 由于 $\widehat f_a$ 的图像下方存在一列方块, 其面积 (依次) 是调和级数的数乘倍, 因此 $\widehat f_a$ 不是绝对可积的. 
   >
   > 空间 $W$ 可以选作 $\mathrm{span}_{\mathbb C}(\{\mathcal F^k(e^{-(x-1)^2 / 2})\}_{1 \leq k  \leq 4})$, 也就是第三问的构造. 此时 $\mathcal F : W \to W$ 是良定义的 (甚至是这个四维空间的自同构). 
   
2. Determine all eigenvalues of $\mathcal{F}$ as an $\mathbb{R}$-linear transformation.

   > 答: $\pm \frac{1}{\sqrt{2\pi}}$. 见一下问.

3. Determine all eigenvalues of $\mathcal{F}$ as a $\mathbb{C}$-linear transformation.

   > 答: 在可定义的情况下, Fourier 逆变换表明
   > $$
   > \mathcal F(\mathcal F(f))(x) = \frac{1}{2\pi}\cdot f(-x).
   > $$
   > 因此 $\mathcal F^4 = \mathrm{id}$. 相应的特征向量由 $\{\mathcal F^k(f)\}_{1 \leq k\leq 4}$ 的线性组合表出. 
   >
   > $f$ 可以选作 $e^{-(x-1)^2 / 2}$, 此时 $\{\mathcal F^k(f)\}_{1 \leq k\leq 4}$ 是 $\mathbb C$-线性无关的连续函数. 考虑
   > $$
   > \mathcal F : \left[\sum_{1 \leq k\leq 4} i^{kl}\mathcal F^k (f) \right] \mapsto \frac{i^l}{2\pi}\cdot \left[\sum_{1 \leq k\leq 4} i^{kl}\mathcal F^k (f) \right],
   > $$
   > 这构造了 $\mathcal F$ 的一组特征对. 由构造, $\mathcal F$ 的特征根是 $\{\frac{i^l}{\sqrt{2\pi}}\}_{1\leq l\leq 4}$. 
