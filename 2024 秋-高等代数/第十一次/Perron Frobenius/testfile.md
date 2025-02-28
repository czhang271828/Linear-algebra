<center><font font size = 20>模拟卷</font><center>
**Problem 1**

1. **(5pt)** State the Perron-Frobenius theorem, ensuring that your answer incorporates the following key concepts: matrices with all positive entries, eigenvalues with multiplicity, spectral radius, and eigenvectors. 
2. **(5pt)** Let $ v = (v_1, v_2, \ldots, v_{n}) \in \mathbb{R}^{n} $ be a real column vector satisfying $ \sum_{i=1}^{n} v_i = 0 $. Determine all eigenspaces of the matrix $ (v v^T + \mathbf{1} \mathbf{1}^T) \in \mathbb R^{n \times n}$, where $ \mathbf{1} $ denotes the vector of all ones.  
3. **(10pt)** If, in addition, $ \sum_{i=1}^{n} v_i^2 = n $, prove that there exist indices $ i $ and $ j $ such that $ v_i v_j \leq -1 $.  

---

**Problem 2**

**(10pt)** Let $ A $ be a square matrix of size $ n $ with entries in $ \{0, 1\} $, satisfying the following conditions:  

- $ A $ has all diagonal entries equal to zero.  
- $ a_{ij} = 0 $ whenever $ a_{ji} = 1 $.  

Prove that $ \dim N(A) \leq 1 $, where $ N(A) $ is the null space of $ A $.  

---

**Problem 3** 

**(20pt)** Find invertible matrix $ P $ and Jordan canonical form $ J $ such that  
$$
\begin{bmatrix}
-3 & -3 & -1 \\
 4 &  5 &  2 \\
-4 & -4 & -1
\end{bmatrix} = P^{-1} J P.
$$

---

**Problem 4**

**(20pt)** Find the singular value decomposition (SVD) of the matrix  
$$
\begin{pmatrix} 
3 & 2 & 2 \\
2 & 3 & -2 
\end{pmatrix},
$$
i.e., determine $ U \in \mathrm O(2)$, $\Sigma = \begin{pmatrix}{\ast _{\geq 0}}& 0 & 0\\0&\ast_{\geq 0}&  0\end{pmatrix}, $ and $ V \in \mathrm O(3)$ such that $ U \Sigma V^T = \begin{pmatrix} 3 & 2 & 2 \\ 2 & 3 & -2 \end{pmatrix} $.  

---

**Problem 5**

**(10pt)** Let $ \mathbb{F} $ be an arbitrary field, and let $ \{A_i\}_{i=1}^k \subseteq \mathbb{F}^{m \times n} $ be a collection of matrices. Prove the following equality:  
$$
\dim \left( \sum_{i=1}^k N(A_i) \right) - \dim \left( \bigcap_{i=1}^k N(A_i) \right) = \dim \left( \sum_{i=1}^k R(A_i) \right) - \dim \left( \bigcap_{i=1}^k R(A_i) \right),
$$
where $ N(A_i) $ and $ R(A_i) $ denote the null space and row space of $ A_i $, respectively.  

---

**Problem 6** Let $ A \in \mathbb{C}^{n \times n} $ be a complex matrix. Define its numerical range as:  
$$
W(A) := \{x^H A x \mid x^H x = 1\} \subseteq \mathbb{C}.
$$
From calculus, it is known that if $ \lambda, \mu \in W(A) $, then for any $ t \in [0, 1] $, $ t \lambda + (1 - t) \mu \in W(A) $.  

Now, assume further that $ \mathrm{tr}(A) = 0 $.  
1. **(5pt)** Prove that there exists a vector $ x $ such that $ x^H A x = 0 $.  
2. **(10pt)** Prove that there exists a unitary matrix $ U $ such that $ U^H A U $ has all diagonal entries equal to zero.  
3. **(5pt)** Prove that there exist complex matrices $ B $ and $ C $ such that $ BC - CB = A $.  
