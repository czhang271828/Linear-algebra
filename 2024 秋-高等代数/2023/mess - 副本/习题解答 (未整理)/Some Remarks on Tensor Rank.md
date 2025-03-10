### Some Remarks on Tensor Rank

#### $2$-tensors 

**Definition 1** (Simple tensor) Say $x\in V_1\otimes \cdots \otimes V_n$ is simple, whenever $x=v_1\otimes \cdots \otimes v_n$ for some $v_i\in V_i$.  

**Definition 2**  (Rank of a tensor) The rank of $x\in V_1\otimes \cdots \otimes V_n$ is the least number $r$ such that $x$ is the sum of $r$ simple tensors. 

* By definition, $\mathrm{rank}(0)=0$​​. 

**Proposition 1** One has the following propositions.

1. If $\sum_{i=1}^ru_i\otimes v_i=0$ and $\{u_i\}_{i=1}^r$ is a linearly independent set, then $v_i=0$ for each $i$​. 
2. Let $W$ be a subspace of $V$. We identify $U\otimes W$ as a subset of $U\otimes V$ via $\mathrm{id}\otimes (W\hookrightarrow V)$. For any $x\in U\otimes W\subset U\otimes V$ such that $x=\sum_{i=1}^s u_i\otimes v_i$, if $\{u_i\}_{i=1}^s$ are linearly independent, then $\mathrm{span}(v_i)\subset W$. 

**Proposition 2** Features of $U\otimes V$ for arbitrary vector spaces $U$ and $V$. 

* (Invariance under field extensions) $\mathrm{rank}(-)$ is invariant under field extensions, 
* (Sub-additivity) $\mathrm{rank}(x+y)\leq \mathrm{rank}(x)+\mathrm{rank}(y)$, 
* (Homogeneity) $\mathrm{rank}(\lambda x)=\mathrm{rank}(x)$ for $\lambda \neq 0$, 
* Set $r=\mathrm{rank}(x)$. Whenever $x=\sum_{i=1}^ru_i\otimes v_i$ is a minimal decomposition, $\mathrm{span}(\{u_i\}_{i=1}^r)$ is an $r$-dimensional subspace of $U$, which is unique with respect to the choice of $x=\sum_{i=1}^ru_i\otimes v_i$​. 

**Proposition 3** If $U$ and $V$ are finite dimensional, then $U\otimes V\cong \mathcal L(U^\ast ,V)\cong k^{\dim U\times \dim V}$. 

*Proof* The linear isomorphism is given by 
$$
U\otimes V\to \mathcal L(U^\ast ,V),\quad u\otimes v\mapsto [f\mapsto f(u)\cdot v].
$$
By dual basis, $u\otimes v\in U\otimes V$ identifies $u\cdot v^T$ (a rank-$1$​​​ matrix). 

**Proposition 4** Let $k$ be a number field. One can take $k=\mathbb R$ or $\mathbb C$ for an easy exploration to the following properties. By identification of $U\otimes V$ and $k^{m\times n}$, one has  the followings. 

* (The probability for finding a tensor with given rank) Suppose that $m\leq n$. Then $\{x\mid \mathrm{rank}(x)<m\}$ is a closed set with empty interior, where as $\{x\mid \mathrm{rank}(x)=m\}$​ is a dense open set. 
* (Zariski topology, definability) For any $r$, the set $\{x\mid \mathrm{rank}(x)=r\}$​ is determined by a finite set of polynomials. 

#### Multi-tensors over real or complex fields

**Definition 1** For $x\in V_1\otimes \cdots \otimes V_n$, and $y\in U_1\otimes \cdots \otimes U_m$​, one defines 
$$
x\otimes y\in V_1\otimes \cdots \otimes V_n\otimes U_1\otimes \cdots \otimes U_m.
$$
**Notion 1** Write $x^{\otimes 2}=x\otimes x$, and $x^{\otimes (n+1)}=x^{\otimes n}\otimes x$. 

**Proposition 5** The following properties holds. 

* (Homogeneity) $\mathrm{rank}(\lambda x)=\mathrm{rank}(x)$ for $\lambda \neq 0$; 

* (Invariance under the extension of subspaces) Let $i_k:V_k\hookrightarrow W_k$ be injection, then $\mathrm{rank}(x)=\mathrm{rank}((i_1\otimes \cdots \otimes i_n)(x))$; 

* (Sub-additivity) $\mathrm{rank}(x+y)\leq \mathrm{rank}(x)+\mathrm{rank}(y)$​​. 

* The maximal possible rank is also sub-additive, that is, for vector spaces with finite dimensional: 
  $$
  \max(\mathrm{rank}(U_1\otimes U_2))\leq \max(\mathrm{rank}(U_1))\cdot \max(\mathrm{rank}(U_2)).
  $$

**Proposition 6** The following equalities no longer hold in general. 

* (Sub-multiplicity) $\mathrm{rank}(x\otimes y)\leq \mathrm{rank}(x)\cdot \mathrm{rank}(y)$; 
* (Monotony under field extensions) Let $F\hookrightarrow E$ be any field extension. Then $\mathrm{rank}_F(x)\geq \mathrm{rank}_E(x)$.
* Let $V:=V_1\otimes \cdots \otimes V_n$ be a multi-tensor space. For $r$, the set $\{x\in V\mid \mathrm{rank}(x)=r\}$​ can be neither open nor closed, even undetermined by finite many polynomials. 
* There exists $r_1\neq r_2$ such that each $\{x\in V\mid \mathrm{rank}(x)=r_i\}$ contains some open balls, for $i=1,2$​. 

**Proposition 7** Let $\{e_i\}_{i=1}^n\subset V$ be linearly independent, then $x=\sum_{i=1}^re_i^{\otimes n}\in V^{\otimes n}$ has rank $r$​. 

*Proof* (Rank $\leq r$) Clear. 

(Rank $\geq r$) Without the loss of generality, let $V$ be finite dimensional, as the tensor rank is invariant under the expansion of subspaces. Take $f\in V^\ast$ which sends every $e_i$ to $1$. Since $(f^{\otimes n-1}\otimes \mathrm{id})(x)$ has rank $r$, the tensor $x$ has rank $\geq r$. 

**Example 1** Let $x=\binom 10$ and $y=\binom 01$ be the standard basis of $k^2$. Now consider
$$
\tau:=x\otimes x\otimes y+x\otimes y\otimes x+y\otimes x\otimes x-y\otimes y\otimes y\in k^2\otimes k^2\otimes k^2.
$$
Suppose that $k=\mathbb R$, then $\mathrm{rank}(\tau)=3$. The proof is as follows. 

* (Rank $\leq 3$) Consider $\theta_1=(x+y)^{\otimes 3}$, $\theta_2=(x-y)^{\otimes 3}$, and $\theta_3=y^{\otimes 3}$. Hence, $\tau=\frac{1}{2}(\theta_1-\theta_2)-2\theta_3$. 

* (Rank $\neq 2$) Suppose that $\tau \in \mathbb R^2\otimes \mathrm{span}(u_1\otimes v_1,u_2\otimes v_2)$. Since 
  $$
  \tau =x\otimes (x\otimes y+y\otimes x)+y\otimes (x\otimes x-y\otimes y),
  $$
  and $\{x,y\}$ is linearly independent, we learn from **Proposition 2** that 
  $$
  (x\otimes x-y\otimes y),(x\otimes y+y\otimes x)\in\mathrm{span}(u_1\otimes v_1,u_2\otimes v_2).
  $$
  Suppose that $a(x\otimes x-y\otimes y)+b(x\otimes y+y\otimes x)$ is simple, one has 
  $$
  0=\det\begin{pmatrix}a&b\\b&-a\end{pmatrix}=a^2+b^2. 
  $$
  Hence $a,b=0$, a contradiction. 

Suppose that $k=\mathbb C$, then $\mathrm{rank}(\tau)=2$. The proof is as follows: 

* (Rank $\leq 2$) Consider $a=1$ and $b=i$ in the previous proof. One has 
  $$
  (y+ix)^{\otimes 3}+(y-ix)^{\otimes 3}=-2\tau. 
  $$

* (Rank $\geq 2$) Consider $f:\mathbb C^2\to \mathbb C$ determined by $x\mapsto 0$ and $y\mapsto 1$. Then
  $$
  (f\otimes \mathrm{id}\otimes \mathrm{id})(\tau)=x\otimes x-y\otimes y.
  $$
  Since $x\otimes x-y\otimes y$ has rank $2$, $\tau$ has rank $\geq 2$. 

**Example 2** In previous example, one defines the symmetric tensor $\tau_0=x\otimes x\otimes x$, $\tau_1=\sum_{\text{cyc}}x\otimes x\otimes y$, $\tau_2=\sum_{\text{cyc}}x\otimes y\otimes y$, and $\tau_3=y\otimes y\otimes y$. One learns from binomial extension that
$$
\tau_0+\lambda\tau_1+\lambda^2\tau_2+\lambda^3\tau_3=(x+\lambda y)^{\otimes3}.
$$
Consider the tensor $\theta(t):=\tau_1+t\tau_2+t^2\tau_3$. 

1. If $t\neq 0$, then $\theta (t)=\frac{1}{t}((x+ty)^{\otimes 3}-x^{\otimes 3})$ has rank $2$ (rank $\neq 1$ is clear). 
2. If $t=0$, then $\theta(t)=\tau_1$ has rank $3$. To see that rank $\neq 2$​, use the test in **example 1**. 

Hence, the space of rank $2$ tensors is never defined via the zero sets of finite many polynomials. 

**Example 3** We shall prove that (over $\mathbb C$) $\mathrm{rank}(\tau_1\otimes \tau_1)<9=\mathrm{rank}(\tau_1)^3$. Consider 
$$
\tau_1\otimes \tau_1=(\tau_1+\tau_3)\otimes (\tau_1+\tau_3)-(\tau_1+\tau_3/2)\otimes\tau_3-\tau_3\otimes(\tau_1+\tau_3/2).
$$
Hence, $\mathrm{rank}(\tau_1\otimes \tau_1)\leq 2\times 2+2+2=8$. 

**Example 4** Classification of tensors over $k^2\otimes k^2\otimes k^2$. 

* (Construction by Y. Zhao) First, there is no tensor of rank $4$. It suffices to prove that every tensor of the form
  $$
  \tau =u_1\otimes x \otimes x+u_2\otimes x \otimes y+u_3\otimes y \otimes x+u_4\otimes y \otimes y
  $$
  reduces to the some of $3$ simple tensors. Without the loss of generality,consider 

  * (Case I) $u_2=\lambda_1u_1+\lambda_2 u_3$​. Then 
    $$
    \tau =u_1\otimes x\otimes (x+\lambda_1)+u_3\otimes y\otimes x+u_4\otimes (\lambda_2x+y)\otimes y.
    $$

  * (Case II) $u_1=k_1u_4$, and $u_2=k_2 u_3$. Then 
    $$
    u_4\otimes (k_1x\otimes x+y\otimes y)+u_3 \otimes (k_2 x\otimes y+y\otimes x).
    $$
    As one divide $k_1x\otimes x=(k_1-k_2)x\otimes x+k_2x\otimes x$, the rest is clear. 

* Say $x$ and $y$ are equivalent, whenever there is $\varphi_i\in \mathrm{Gl}_2(k)$ such that $(\varphi_1\otimes \varphi_2\otimes \varphi_3)(x)=y$​. For algebraically closed fields, one can prove the equivalence classes are exactly
  $$
  [0],\,[\tau_0],\,[x\otimes (x^{\otimes 2}+y^{\otimes 2})],\,[x^{\otimes 3}+y\otimes x\otimes x],\,[(x^{\otimes 2}+y^{\otimes 2})\otimes x],\,[\tau_0+\tau_3],\,[\tau_1].
  $$
  Hence, rank $1$ tensors are equivalent to $\tau_0$, while rank $3$ tensors are equivalent to $\tau_1$. 

**Example 5** This example focus on an interesting problem: 

* when we randomly select a tensor $x\in k^2\otimes k^2\otimes k^2$ ($k=\mathbb R$ or $\mathbb C$), what is the expectation of $\mathrm{rank}(x)$? 

The probability should be compatible with the topology of Euclidean spaces. At least, for any $F\subset k^n$ with empty interior, the probability of the event $\{x\in F\mid x\in \mathbb R^n\}$ must be $0$. By assumption, a randomly selected $X\in k^{n\times n}$ has probability $1$​​ to be invertible.

However, if one identify $(k^2)^{\otimes 3}$ as $k^{2\times 2\times 2}$, the space of cubes (matrices in $3$-dimension), and consider the independent normal distribution $N(0,1)$ for each $(a_{i,j,k})_{1\leq i,j,k\leq 2}$, the distribution are as follows. 

| $(k^2)^{\otimes 3}$ | $P(\mathrm{rank}(x)=0)$ | $P(\mathrm{rank}(x)=1)$ | $P(\mathrm{rank}(x)=2)$ | $P(\mathrm{rank}(x)=3)$ |
| ------------------- | ----------------------- | ----------------------- | ----------------------- | ----------------------- |
| $k=\mathbb R$       | $0$                     | $0$                     | $\pi/4$                 | $1-\pi/4$               |
| $k=\mathbb C$       | $0$                     | $0$                     | $1$                     | $0$                     |

* The analysis of $k=\mathbb C$ is easy. One can prove that the orbit of $\tau_0$ under the action of $\mathrm{Gl}_2(\mathbb C)^{\otimes 3}$ contains in the orbit under $\mathbb C^{2\times 2}\otimes\mathrm{GL}_2(\mathbb C)^{\otimes 2}$, while the orbit of $x\otimes x\in \mathbb C^2\otimes \mathbb C^2$ under $\mathrm{GL}_2(\mathbb C)^{\otimes 2}$ coincides the closed subset of rank $1$-matrices, which has empty interior. The analysis for rank $3$​ tensors is similar. 

* The analysis of $k=\mathbb R$ requires the following lemma: let $\theta_k=(a_{i,j,k})\in \mathbb R^{2\times 2}$ ($k=1,2$) be the slices of the tensor $\theta\in \mathbb R^{2\times 2\times 2}$, the following proposition holds with probability $1$: 

  *  $\mathrm{rank}(\theta)=2$ whenever $\det(\lambda \theta _1+\theta_2)=0$ has $2$​ real solutions. 

    1. ($\Rightarrow$) Let $\theta=\sum_{l=1,2}u_l\otimes v_l\otimes w_l$. Then 
       $$
       \theta_l=(u_1 \,u_2)\cdot \begin{pmatrix}(w_1)_l&\\&(w_2)_l\end{pmatrix}\cdot (v_1\,v_2)^T\quad (l=1,2).
       $$
       One notices that both $(u_1\,u_2)$ and $(v_1\,v_2)$ has probability $1$ to be invertible. Hence, $\det(\lambda \theta_1-\theta_2)$ has probability $1$ to have real $2$ roots. 

    2. ($\Leftarrow$) One only needs to find $u$, $v$ and $w$'s. Consider 
       $$
       (\lambda \theta_1-\theta_2)\simeq \theta_1^{-1}(\lambda I-\theta_1^{-1}\theta)\simeq\theta_1^{-1}(\lambda I-P\Lambda P^{-1})\simeq (\theta_1^{-1}P\cdot \lambda I\cdot P^{-1}-\theta_1^{-1}P\cdot\Lambda \cdot P^{-1}).
       $$
       where $\simeq$ means to have probability $1$ to be equal. 

    The probability of $\det (\lambda \theta_1+\lambda _2)$ to have $2$ real eigenvalue is $\pi/4$ ([Link](https://shub.ccny.cuny.edu/articles/1994-how_many_eigenvalues_of_a_random_matrix_are_real.pdf)). 

**Example 6** (Computational complexity) How many operations of multiplications are required in order to multiply $2\times 2$ matrices? The answer is $7$​, which is proved to the best answer ([History of Strassen Algorithm](https://mathoverflow.net/a/57740)). 

Now we consider the tensor form of matrix multiplication, which is the bilinear form
$$
(-\times -) :k^{2\times 2},k^{2\times 2}\to k^{2\times 2}.
$$
Such multiplication is a tensor in $(k^{2\times 2}\otimes k^{2\times 2})^\ast\otimes k^{2\times 2}\cong (k^{2\times 2})^{\otimes 3}$, which writes
$$
\sum_{1\leq i,j,k\leq 2}E_{i,j}\otimes E_{j,k}\otimes E_{i,k}.
$$
By first paragraph in the introduction part of this [article](https://gdz.sub.uni-goettingen.de/id/PPN243919689_0384?tify=%7B%22pages%22%3A%5B106%5D%2C%22pan%22%3A%7B%22x%22%3A0.407%2C%22y%22%3A1.056%7D%2C%22view%22%3A%22info%22%2C%22zoom%22%3A0.53%7D), one has
$$
\begin{matrix}
(-\times -) & \text{Linear Operators} & \longleftrightarrow  & \text{Fewest multiplications} & \text{Strassen's lemma}\\[4pt]
\downarrow  & \downarrow  &  & \downarrow  & \downarrow \\[4pt]
V^{\ast } \otimes V^{\ast } \otimes V & \text{Tensor Forms} & \longleftrightarrow  & \text{Rank of the tensor} & 7
\end{matrix}.
$$
Hence, $\mathrm{rank}(\sum_{1\leq i,j,k\leq 2}E_{i,j}\otimes E_{j,k}\otimes E_{i,k})=7$, which is independent of the choice of fields. When considering the block matrices, one has 
$$
\mathrm{rank}\left(\sum_{1\leq i,j,k\leq n}E_{i,j}\otimes E_{j,k}\otimes E_{i,k}\right)\leq C_0\cdot n^{\log_2 7}.
$$

#### Graph

For those unfamiliar with simple $3$-tensors, the following figure may help.

<img src="https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/diagram-20240602 (1).png" alt="diagram-20240602 (1)" style="zoom:50%;" />

