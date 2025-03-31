**Problem Set for 24 March 2025**

**Exercise 0** Explain (without proving) the *implicit expressions*. 

1. $\ker g$ as a subspace of $\ker fg$. 

   > Solution. The linear map 
   > $$
   > \ker g \to \ker fg,\quad [x \mapsto x].
   > $$
   > It is well-defined and injective. 

2. $\mathrm{im} (fg)$ as a quotient space of $\mathrm{im}(g)$. 

3. $\mathrm{Hom}(V,W) \times \mathrm{Hom}(U,V) \to \mathrm{Hom}(U,W)$ the bi-linear map of composition

   > Solution. The bi-linear map
   > $$
   > \mathrm{Hom}(V,W) \times \mathrm{Hom}(U,V) \to \mathrm{Hom}(U,W),\quad (g,f) \mapsto g \circ f.
   > $$

4. $\mathrm{Hom}(U,V) \to \mathrm{Hom}(U,W)$ induced by $f : V \to W$. 

   > 向后复合 $f$ 的过程是线性映射: 
   > $$
   > \mathrm{Hom}(U,V) \to \mathrm{Hom}(U,W),\quad [U\xrightarrow \varphi V] \mapsto [U\xrightarrow \varphi V{\color{red}\xrightarrow f W}].
   > $$

5. $\mathrm{Hom}(W,U) \to \mathrm{Hom}(V,U)$ induced by $f:V \to W$. 

   > 向前复合 $f$ 的过程是线性映射 
   > $$
   > \mathrm{Hom}(W,U) \to \mathrm{Hom}(V,U),\quad [W\xrightarrow \varphi U] \mapsto [{\color{red} V\xrightarrow f }W\xrightarrow \varphi U].
   > $$

6. $\mathrm{Hom}_{\mathrm{Sets}}(S,V) = V^n$ for finite set $|S| = n$.

   > 考虑同构
   > $$
   > \mathrm{Hom}_{\mathrm{Sets}}(S,V) \to V^n,\quad \begin{bmatrix}S & \xrightarrow f & V\\s_i & \mapsto &f(s_i)\end{bmatrix}\mapsto (f(s_i))_{i=1}^n.
   > $$

7. $\mathbb F[x]$ as a subspace of $\mathrm{Hom}_\mathbb F(\mathbb F[\![x]\!], \mathbb F)$. 

   > 存在单射
   > $$
   > \mathbb F[x] \mapsto\mathrm{Hom}_\mathbb F(\mathbb F[\![x]\!], \mathbb F),\quad \sum_{i=0}^nc_i x^i \mapsto \begin{bmatrix}\mathbb F[\![x]\!] & \to & \mathbb F\\\sum_{i=0}\limits^\infty a_iy^i& \mapsto & \sum\limits_{i=0}^n a_ic_i\end{bmatrix}.
   > $$

8. The $\mathbb C$-linear space $\mathrm{Hom}_{\mathbb R}(\mathbb C, V)$, provided an $\mathbb R$-linear space $V$. 

   > 对 $c \in \mathbb C$ 与 $f,g\in \mathrm{Hom}_{\mathbb R}(\mathbb C, V)$ 构造
   > $$
   > (cf+g):\mathbb C \to V,\quad z \mapsto f(z\cdot c)+g(z).
   > $$

9. (**Optional**) The set of all subsets of $X$ forms a $\mathbb F_2$-linear space, where $\mathbb F_2$ is a field with $2$ elements. 

   > 构造双射
   > $$
   > \mathrm{Subset}(X) \to \mathrm{Hom}_{\mathrm{Sets}}(X, \mathbb F_2),\quad U \mapsto \begin{bmatrix}X& \to &\mathbb F_2 \\ U & \to & \{1\} \\ U^c & \to & \{0\}\end{bmatrix}.
   > $$
   >
   > 此时 $\mathbf 0 = \empty$. 特别地, $\mathbb F_2$ 存在乘法结构, 从而 $\mathrm{Hom}_{\mathrm{Sets}}(X, \mathbb F_2)$ 也有乘法结构. 此处乘法即 $\cap$, 乘法单位元是 $X$. 
   >
   > 这一双射也可以是
   > $$
   > \mathrm{Subset}(X) \to \mathrm{Hom}_{\mathrm{Sets}}(X, \mathbb F_2),\quad U \mapsto \begin{bmatrix}X& \to &\mathbb F_2 \\ U & \to & \{1\} \\ U^c & \to & \{0\}\end{bmatrix}.
   > $$
   > 此时 $\mathbf 0 = X$. 特别地, $\mathbb F_2$ 存在乘法结构, 从而 $\mathrm{Hom}_{\mathrm{Sets}}(X, \mathbb F_2)$ 也有乘法结构. 此处乘法即 $\cup$, 乘法单位元是 $\empty$. 
   >
   > 这一构造 (前者常见) 在实分析中称作**代数**. 

<div style="page-break-after: always;"></div>

**Example** Construct a *satisfying* linear isomorphism 
$$
\mathrm{Hom}_{\mathbb F}(U \times V, W) \simeq \mathrm{Hom}_{\mathbb F}(U , W) \times \mathrm{Hom}_{\mathbb F}(V, W).
$$

*Proof*. 

**Step 1** Write down explicitly the linear map 
$$
\begin{matrix}
\Phi :\quad \mathrm{Hom}_{\mathbb F}(U , W) \times \mathrm{Hom}_{\mathbb F}(V, W) & \to &\mathrm{Hom}_{\mathbb F}(U \times V, W)  \\[6pt]
(f,g) & \mapsto & [(u,v) \mapsto f(u) + g(v)]. 
\end{matrix}
$$
For a very detailed expression, 
$$
\begin{matrix}
\Phi :\quad \mathrm{Hom}_{\mathbb F}(U , W) \times \mathrm{Hom}_{\mathbb F}(V, W) & \to &\mathrm{Hom}_{\mathbb F}(U \times V, W)  \\[6pt]
\left(\begin{bmatrix}
U & \xrightarrow f & W \\
u & \mapsto & f(u)
\end{bmatrix} , \begin{bmatrix}
V & \xrightarrow g & W \\
v & \mapsto & g(v)
\end{bmatrix}\right)
& \mapsto &
\begin{bmatrix}
U\times V & \xrightarrow{\Phi(f,g)} & W \\
(u,v) & \mapsto & f(u)+g(v)
\end{bmatrix}
\end{matrix}.
$$
**Step 2** Check that $\Phi$ is a well-defined linear map, i.e. 
$$
\Phi ((f,g) + \lambda (f', g')) = \Phi (f,g) + \lambda \Phi (f', g'),
$$
for both sides map $(u,v)$ to $f(u)+f'(u) + \lambda  g(v) + \lambda g'(v)$. 

**Step 3** Check that $\Phi$ is an injection. If $\Phi(f,g)=0$​, then so are the compositions 
$$
U \hookrightarrow U \times V\xrightarrow {\Phi (f,g)} W,\quad u \mapsto (u,0)\mapsto f(u),
$$
and 
$$
V \hookrightarrow U \times V\xrightarrow {\Phi (f,g)} W,\quad v \mapsto (0,v)\mapsto g(v).
$$
It yields that $f=0$ and $g=0$. 

**Step 4** Check that $\Phi$ is an surjection. For any $\alpha : U \times V \to W$, consider
$$
f_\alpha : U \to W,\quad u \mapsto \alpha (u,0),
$$
and 
$$
g_\alpha : V \to W,\quad v \mapsto \alpha (0,v). 
$$
Now $\Phi (f_\alpha, g_\alpha) = \alpha$, yielding that $(f_\alpha, g_\alpha)$ is a preimage. 

**Step 5** Since $\Phi$ is well-defined, injective, and surjective, $\Phi$ is an linear isomorphism. 

$\color{red}\text{Your proof must include Step1-5.}$ 

<div style="page-break-after: always;"></div>

**Exercise 1 (optional if you have done this before)** Show that $U \simeq \mathrm{Hom}_{\mathbb F}(\mathbb F, U)$ for any $\mathbb F$-linear space $U$. 

> **Step 1** Write down explicitly the linear map $u \mapsto [1_{\mathbb F} \mapsto u]$, to be explicit, 
> $$
> \Phi: U \to \mathrm{Hom}_{\mathbb F}(\mathbb F, U),\quad u \mapsto \begin{bmatrix}\mathbb F & \to & U \\ \lambda & \mapsto &\lambda U\end{bmatrix}.
> $$
> **Step 2** Check that $\Phi$ is a well-defined linear map, i.e., 对任意 $a \in \mathbb F$ 与 $u,v \in U$, 
> $$
> \Phi (u+av) (\lambda) = \lambda (u+av) = \lambda u + a(\lambda v) = (\Phi (u)+a\Phi(v))(\lambda).
> $$
> **Step 3** Show that $\Phi$ is injective, your solution...
>
> 若 $\Phi (u)=0$, 也就是 $\{\lambda u\}_{\lambda \in \mathbb F} = \{0\}$, 当且仅当 $u=0$.  
>
> **Step 4** Show that $\Phi$ is surjective, your solution...
>
> 任意 $f \in \mathrm{Hom}_{\mathbb F}(\mathbb F, U)$ 都有原像 $f(1)$, 因为
> $$
> \Phi(f(1)) : \mathbb F \to U,\quad \lambda \mapsto f(1)\lambda = f(\lambda). 
> $$
> **Step 5** Conclude that $\Phi$ is an linear isomorphism. 

<div style="page-break-after: always;"></div>

**Exercise 2 (optional if you have done this before)** Show that $U \simeq \mathrm{Hom}_{\mathbb F}( \mathrm{Hom}_{\mathbb F}(U, \mathbb F),\mathbb F))$ if $\dim U < \infty$. 

> **Step 1** Write down explicitly the linear map $u \mapsto [f \mapsto f(u)]$, to be explicit, 
> $$
> \Phi : U \to \mathrm{Hom}_{\mathbb F}( \mathrm{Hom}_{\mathbb F}(U, \mathbb F),\mathbb F)), \quad u \mapsto \begin{bmatrix}\mathrm{Hom}_{\mathbb F}(U, \mathbb F) & \to & \mathbb F \\ f& \mapsto & f(u)\end{bmatrix}. 
> $$
> **Step 2** Check that $\Phi$ is a well-defined linear map, i.e., 即证明 $u$ 处的赋值是线性函数: 
> $$
> \Phi (u) (\lambda f + g) = (\lambda f + g) (u) = \lambda(f(u)) + g(v) = \lambda (\Phi(u)(f)) + (\Phi(u))(g).
> $$
> **Step 3** Show that $\Phi$ is injective, your solution...
>
> 若 $\Phi (u)=0$, 则所有 $\mathrm{Hom}_{\mathbb F}(U, \mathbb F)$ 中的函数在 $u$ 处取值为 $0$. 由于 $U$ 是有限维空间, 任取选定直和补 $U = \mathrm{span}(u)\oplus U'$ 并构造线性映射
> $$
> l :\mathrm{span}(u)\oplus U' \to \mathbb F,\quad (\lambda u, v) \mapsto \lambda l(u).
> $$
> 依照 $\Phi(u)=0$, 得 $l(u)=0$. 此时 $u=0$. 
>
> **Step 4** Show that $\dim U = \dim \mathrm{Hom}_{\mathbb F}(U, \mathrm{Hom}_{\mathbb F}(U, \mathbb F))$ by induction. 
>
> 若 $\dim U = n$, 则 $\mathrm{Hom}_{\mathbb F}(U, \mathbb F)$ 对应矩阵空间 $\mathbb F^{1 \times n}$, 维数亦为 $n$​. 归纳地有
> $$
> \dim U = \dim \mathrm{Hom}_{\mathbb F}(U, \mathrm{Hom}_{\mathbb F}(U, \mathbb F)) = n.
> $$
> **Step 5** Conclude that $\Phi$ is an linear isomorphism by dimensional analysis. 

<div style="page-break-after: always;"></div>

**Exercise 3** Let $V$ be a linear space and $S \subset V$ is linearly independent ($S$ is not necessary finite). Show that 
$$
\mathrm{Hom}_{\mathbb F}(\mathrm{Span}(S), \mathbb F) \simeq \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb F).
$$

> **Step 1** Write down explicitly the linear map $f \mapsto (f(s))_{s \in S}$, to be explicit, 
> $$
> \Phi : \mathrm{Hom}_{\mathrm{Sets}}(S, \mathbb F) \to \mathrm{Hom}_{\mathbb F}(\mathrm{Span}(S), \mathbb F) ,\quad \begin{bmatrix}S & \xrightarrow f & \mathbb F\\ s_i & \mapsto & f(s_i)\end{bmatrix}\mapsto \begin{bmatrix}\mathrm{span}(S) & \to & \mathbb F\\ \sum\limits_{i}^{\text{有限}}\lambda _is_i & \mapsto & \sum\limits_{i}^{\text{有限}}\lambda_i f(s_i)\end{bmatrix}
> $$
> **Step 2** Check that $\Phi$ is a well-defined linear map, i.e., 以上给出了 $\Phi(f)$ 在 $\mathrm{Span}(S)$ 的一组基 $S$ 上的定义, 因此决定了唯一的线性映射. 
>
> **Step 3** Show that $\Phi$ is injective, your solution...
>
> 若 $\Phi(f)=0$, 则必有 $f(s_i) \equiv 0$. 此时 $f=0$. 
>
> **Step 4** Show that $\Phi$ is surjective, your solution...
>
> 对任意 $g : \mathrm{Span}(S) \to \mathbb F$, $g$ 由全体 $\{g(s_i)\}_{s_i \in S}$ 决定, 从而 $\Phi(g|_S) = g$.  
>
> **Step 5** Conclude that $\Phi$ is an linear isomorphism.
>
> In particular, $\mathbb F[\![x]\!] \simeq \mathrm{Hom}_{\mathbb F}(\mathbb F[x], \mathbb F)$. 

<div style="page-break-after: always;"></div>

**Exercise 4** Recall that $\mathbb C$-linear spaces are automatically $\mathbb R$-linear, and so are $\mathbb C$-linear maps. Show that 
$$
\mathrm{Hom}_{\mathbb R}(U, V) \simeq (\mathrm{Hom}_{\mathbb C}(U,V))^2\quad (\text{as $\mathbb R$-linear spaces}).
$$
Here $W^2 := W\times W$. 

* **We assume that both $U$ and $V$ are of finite dimension, so that $\overline U$ is defined (i.e., $U = X \oplus i \cdot X$ for some $X$).** 

> **Step 0** Show that $\mathrm{Hom}_{\mathbb C}(U, V)$ is indeed an $\mathbb R$-linear space.  
> $\mathrm{Hom}_{\mathbb C}(U, V)$ 是 $\mathbb C$-线性空间, 从而是 $\mathbb R$-线性空间. 
>
> **Step 1** Write down explicitly the linear map $f \mapsto (f_1,f_2)$, to be explicit, 
> $$
> \Phi : \mathrm{Hom}_{\mathbb R}(U, V) \to (\mathrm{Hom}_{\mathbb C}(U,V))^2,\quad f \mapsto \left(\begin{bmatrix} U & \xrightarrow {f_1}& V \\ u& \mapsto & f_1(u) \end{bmatrix}, \begin{bmatrix}
> U & \xrightarrow {f_2} & V \\ 
> u & \mapsto & {f_2( u)}\end{bmatrix}\right).
> $$
> 先明确 $f_1$ 的构造. 对 $\mathbb C$-线性空间之间的 $\mathbb R$-线性函数 $f : U \to V$, 考虑
> $$
> f_1 : U \to V,\quad u \mapsto f(u)-if(iu).
> $$
> 这一新函数是 $\mathbb C$-线性的, 因为
> $$
> f_1(iu) = f(iu)-if(i(iu)) = i(f(u)-if(iu)) = i(f_1(u)).
> $$
> 同理, $f_2(u) := \overline{f(u)} - i\cdot (\overline {f(iu)})$ 也是 $\mathbb C$-线性的. 此处仅是将 $f$ 换作了 $\overline f$. 
>
> **Step 2** Check that $\Phi$ is a well-defined linear map, i.e., 
>
> 依照积 $\Phi$ 线性当且仅当 $\Phi$ 在各分量线性. 换言之, $f \mapsto f_1$ 与 $f \mapsto f_2$ 均是 $\mathbb R$-线性的. 直接验证得
> $$
> (f+\lambda g)_1 (u) = (f+\lambda g)(u)-i(f+\lambda g)f(iu) = f_1(u)+\lambda g_1(u),
> $$
> 以及 (注意 $\overline \lambda = \lambda$)
> $$
> (f+\lambda g)_2 (u) = \overline {(f+\lambda g)(u)}-i\overline {(f+\lambda g)f(iu)} = f_2(u)+\lambda g_2(u).
> $$
> 从而 $\Phi$ 是 $\mathbb R$-线性的. 
>
> **Step 3** Show that $\Phi$ is injective, your solution...
>
> 若 $(f_1,f_2)=0$, 则 $f = \frac{f_1 + \overline {f_2}}{2} = 0$. 
>
> **Step 4** Show that $\Phi$ is surjective, your solution...
>
> 对任意 $f,g \in \mathrm{Hom}_{\mathbb C}(U,V)$, 构造 $\varphi = \frac{f + \overline g}{2}$. 
> $$
> \varphi_1 (u) = \frac{f(u) + \overline {g(u)}}{2} - i \cdot  {\frac{f(iu) + \overline {g(iu)}}{2}} = \frac{f(u) + \overline {g(u)}}{2} - i \cdot {\frac{if(u) - i\cdot \overline {g(u)}}{2}} = f(u).
> $$
> 类似地, 
> $$
> \varphi_2 (u) = \overline { \frac{f(u) + \overline {g(u)}}{2}} - i \cdot  {\overline {\frac{f(iu) + \overline {g(iu)}}{2}} }= \frac{\overline {f(u)} + \ {g(u)}}{2} - i \cdot {\frac{-i\overline {f(u)} - i\cdot {g(u)}}{2}} = g(u).
> $$
> 从而 $\Phi$ 满. 
>
> **Step 5** Conclude that $\Phi$ is an linear isomorphism.
>
> **Optional Exercise** Show that
> $$
> \mathrm{Hom}_{\mathbb R}(U, V) \simeq (\mathrm{Hom}_{\mathbb C}(U,V))^2\quad (\text{as $\color{red}\mathbb C$-linear spaces}).
> $$
> 此处存在一个问题: $\mathrm{Hom}_{\mathbb R}(U, V)$ 上的 $\mathbb C$ 线性结构有两种: 
>
> 1. $(z f + g)(u) := f(zu)+g(u)$; 
> 2. $(zf+g)(u) := zf(u)+ g(u)$. 
>
> 对一般 $\mathbb C$-线性空间间的 $\mathbb R$-线性函数 $f$, 不必有 $f(zu) = zf(u)$. 例如 
> $$
> \overline{(-)}:\mathbb C \to \mathbb C, \quad z \mapsto \overline z
> $$
> 是 $\mathbb R$-线性的, 但不见得 $\overline{zu} \neq z\overline {u}$. 
>
> 一个快捷的方式是将 $\mathbb C$-线性空间写作两个 $\mathbb R$-线性空间的直和:
> $$
> U = X \oplus iX, \quad V =Y \oplus iY.
> $$
>  从而
> $$
> \mathrm{Hom}_{\mathbb R}(X \oplus iX, Y \oplus iY) = \left\{\begin{pmatrix}a & b \\ c & d\end{pmatrix} \mid a,b,c,d \in \mathrm{Hom}_{\mathbb R}(X,Y)\right\}.
> $$
> 特别地, $\begin{pmatrix}a & b \\ c & d\end{pmatrix}$ 是 $\mathbb C$-线性映射当且仅当其形如 $\begin{pmatrix}a & -c \\ c & a\end{pmatrix}$. 以下分别给出 $\mathrm{Hom}_{\mathbb R}(U, V)$ 上两种 $\mathbb C$ 线性结构对应至 $(\mathrm{Hom}_{\mathbb C}(U,V))^2$ 的方式
>
> 1. $\mathrm{Hom}_{\mathbb R}(X \oplus iX, Y \oplus iY) \simeq \mathrm{Hom}_{\mathbb R}(X , Y \oplus iY)^2 \simeq \mathrm{Hom}_{\mathbb C}(X \oplus iX, Y \oplus iY)^2$; 
>    * 前一同构: 显然. 
>    * 后一同构: $X$ 至 $V$ 的 $\mathbb R$-线性映射可以唯一地提升做 $U$ 至 $V$ 的 $\mathbb C$-线性映射. 
> 2. $\mathrm{Hom}_{\mathbb R}(X \oplus iX, Y \oplus iY) \simeq \mathrm{Hom}_{\mathbb R}(X \oplus iX, Y )^2 \simeq \mathrm{Hom}_{\mathbb C}(X \oplus iX, Y \oplus iY)^2$. 
>    * 前一同构: 显然. 
>    * 后一同构: 参考 $f \mapsto f_1$. 