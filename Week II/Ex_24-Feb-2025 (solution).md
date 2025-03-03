**Problem Set for 24-Feb-2025**

**Study Suggestions**

- **Irreducibility (不可约)**: An element $x \in R$ is called irreducible in a ring if and only if it cannot be factored as the product of two non-invertible elements.  
- **Primality (素)**: An irreducible element in a unique factorisation domain is termed prime element.

In particular, the polynomial ring $\mathbb{F}[x]$ over a field $\mathbb{F}$, and the polynomial ring $R[x]$ over a unique factorisation domain $R$ (for example, a multivariate polynomial ring), are both unique factorisation domains, thus allowing the discussion of prime elements.

**Problem 1** Let $\mathbb{F}$ be any field, and let $\{u_i\}_{i=1}^n$ and $\{v_j\}_{j=1}^m$ be bases of $U$ and $V$, respectively. Define $\mathrm{Hom}_{\mathbb{F}}(U, V)$ as the set of $\mathbb{F}$-linear maps from $U$ to $V$. 

1. Endow $\mathrm{Hom}_{\mathbb{F}}(U, V)$ with appropriate additional structures to make it an $\mathbb{F}$-vector space. In simpler terms, how should we regard $\mathrm{Hom}_{\mathbb{F}}(U, V)$ as a vector space in practice?  

   > 答: 定义 $\mathrm{Hom}_{\mathbb F}(U,V)$ 中的零元是零映射 $U \to 0 \to V$, 加法和数乘定义作
   > $$
   > (f+ \lambda g) : U \to V,\quad u \mapsto f(u) + \lambda g(v). 
   > $$
   > 这一结果是 $\mathbb{F}$-线性函数, 从而 $\mathrm{Hom}_{\mathbb F}(U,V)$ 是良定义的线性空间. 
   >
   > 本质上看, 配对函数 $\bullet (\bullet)$ 是双线性的
   > $$
   > \bullet (\bullet) : \mathrm{Hom}_{\mathbb F}(U, V) \& U\to V,\quad (f,u)\mapsto f(u).
   > $$
2. Determine the dimension of $\mathrm{Hom}_{\mathbb{F}}(U, V)$ and provide a minimal description of one of its bases.

   > 答: 依照矩阵表达, 这一线性空间的维度是 $m \cdot n$. 定义线性映射
   > $$
   > b_{j,i}:= \{u_i \mapsto v_j ,\quad u_{\neq i} \mapsto 0\}.
   > $$
   > 此时, $b_{i,j}$ 是 $\mathrm{Hom}_{\mathbb F}(U,V)$ 的一组基. 

**Problem 2** (Blank-Filling Questions) Throughout, $\mathbb{F}$ is an arbitrary field, and $\{u_i\}_{i=1}^{l}$, $\{b_j\}_{j=1}^{m}$, and $\{c_k\}_{k=1}^{n}$ are bases of $U$, $V$, and $W$, respectively. Carefully endow the following spaces with $\mathbb{F}$-linear structures, and write done their dimensions along with the corresponding *distinguished* bases.

1. $U \oplus V$ as subspaces.  

   > 答: 维度 $l+m$. 基 $\{u_i\}_{i=1}^l \cup \{v_j\}_{j=1}^m$. 这一并集是无交的. 
2. $U \times V$ as the usual Cartesian product.  

   > 答: 维度 $l+m$. 基 $\{(u_i, 0)\}_{i=1}^l \cup \{(0, v_j)\}_{j=1}^m$. 依照惯例, $U \times V$ 中的元素是数组 $(u,v)$. 
3. $\mathrm{Hom}_{\mathbb{F}}(U, V)$ as the set of linear maps.  

   > 答: 同上. 
4. $\mathrm{Hom}_{\mathrm{Sets}}(U, V)$ as the set of maps.  

   > 答: 此题是一个陷阱, 这一线性空间未必是有限维的. 请试想, 假定 $S=\{a,b\}$ 是一个二元集合, 那么 
   > $$
   > \mathrm{Hom}_{\mathrm{Sets}}(S,V) \to  V \times V,\quad f \mapsto (f(a),f(b))
   > $$
   > 是一个线性双射. 这说明 $\mathrm{Hom}_{\mathrm{Sets}}(U, V)$ 本质上是 $U$-份 $V$ 的积! 这一线性空间的线性结果全盘依赖 $V$, 与 $U$ 的线性结构无关. 
5. $\mathrm{Hom}_{\mathbb{F}}(U \times V, W)$, where $U \times V$ is defined a priori.  

   > 答: 这就是 $l +m$ 维空间到 $n$ 维空间的全体线性映射. 同 3..
6. $\mathrm{Bil}_{\mathbb{F}}(U, V; W)$, the set of bilinear maps from $U$ and $V$ to $W$.  

   > 答: 维数 $l \cdot m \cdot n$, 基底是 
   > $$
   > f_{k,j,i}:\{(u_i;v_j)\mapsto w_k,\quad (u;v)_{\neq (i,j)}\mapsto 0\}.
   > $$
7. $\mathrm{Hom}_{\mathbb{F}}(U, \mathrm{Hom}_{\mathbb{F}}(V, W))$, also known as the Currying of bilinear maps.  

   > 答: 维数 $l \cdot m \cdot n$, 基底是 
   > $$
   > F_{k,j,i} \mapsto \{u_i \mapsto \{v_j \mapsto w_k,\quad v_{\neq j} \mapsto 0\},\quad u_{\neq i} \mapsto 0\}.
   > $$
   > $F_{k,j,i}$ 和 $f_{k,j,i}$ 在逻辑意义上是相同的. 正如二元函数 $f(x,y)$ 在 $(x_0, y_0)$ 处的取值, 恰好是 ( $f$ 在 $x_0$ 处取值所得的) 一元函数 $f(x_0, y)$ 在 $y_0$ 处的取值. 

> *Currying*, named after Haskell Curry, is the technique of transforming a function that takes multiple arguments into a sequence of functions, each accepting a single argument.

**Problem 3 (Optional for the time being)** This problem is inspired by *普通高中教科书·数学（A版）必修第一册*. It is likely that you never read math textbooks in high school. We restate the notation of *maps between two sets* as used in this textbook:

$$
Y^X := \{ f \mid f: X \to Y \ \text{is a set map} \} = \mathrm{Hom}_{\mathrm{Sets}}(X, Y).
$$

Consider a finite dimensional vector space $U$ with the following procedure:

$$
U \xrightarrow{\text{take its basis}} S \xrightarrow{\text{count its basis}} n.
$$

1. State the connection between the $0$-vector space, the empty set, and the natural number $0$.  
2. State the connection between the direct sum operation $\oplus$ on vector subspaces, the disjoint union of sets, and the summation of natural numbers.  
3. State the connection between complementary subspaces, the exclusion of sets, and the subtraction of natural numbers.  
4. Define the *noumenal operation* of vector spaces, which refers to the Cartesian product of sets and the multiplication of natural numbers. This is the tensor product, and the basis of the tensor product space is clearly defined in this sense.  
5. There is no connection between $\mathrm{Hom}_{\mathbb{F}}(U, V)$ and $T^S$. The noumenal operation of $\mathrm{Hom}_{\mathrm{Sets}}$ is a peculiar tensor product of several $V$'s labelled by $U$.

Now we move on to isomorphisms. Throughout, the external direct sum (denoted by $\oplus$ in our class) is identified with the Cartesian product $\times$ in our textbook (*Done Right*). 

1. From $(m \cdot n)^a = m^a \cdot n^b$, one obtains the set isomorphism $(S \times T)^X \simeq (S^X) \times (T^X)$. Construct an isomorphism between vector spaces (not necessarily of finite dimension):
    $$
    \mathrm{Hom}_{\mathbb{F}}(U, V \times W) \xrightarrow{\sim} \mathrm{Hom}_{\mathbb{F}}(U, V) \times \mathrm{Hom}_{\mathbb{F}}(U, W).
    $$

2. From $n^{a+b} = n^a \cdot n^b$, one obtains the set isomorphism $S^{X \sqcup Y} \simeq (S^X) \times (S^Y)$. Construct an isomorphism between vector spaces (not necessarily of finite dimension):
    $$
    \mathrm{Hom}_{\mathbb{F}}(U \times V, W) \xrightarrow{\sim} \mathrm{Hom}_{\mathbb{F}}(U, W) \times \mathrm{Hom}_{\mathbb{F}}(V, W).
    $$

3. From $(n^a)^b = n^{a \cdot b}$, one obtains the set isomorphism $(S^X)^Y \simeq S^{X \times Y}$, known as currying. Construct an isomorphism between vector spaces (not necessarily of finite dimension):
    $$
    \mathrm{Hom}_{\mathbb{F}}(U \otimes_{\mathbb{F}} V, W) \xrightarrow{\sim} \mathrm{Hom}_{\mathbb{F}}(U, \mathrm{Hom}_{\mathbb{F}}(V, W)).
    $$

    > **Hint**: By the universal property, $\mathrm{Hom}_{\mathbb{F}}(U \otimes_{\mathbb{F}} V, W)$ identifies with $\mathrm{Bil}(U, V; W)$. Recall that a bi-function $f: X \times Y \to S$ identifies a set of usual functions $f_y: X \to S$, indexed by $y \in Y$. Hence, a bilinear function $B: (U \& V) \to W$ identifies a linear space of usual linear maps $B_u: V \to W$, indexed by $u \in U$.

    The adjunction of the product-object $\otimes$ and the Hom-object $\mathrm{Hom}_{\mathbb{F}}$ comes from Currying.
