##### 判断题

* 不选用的原因: 第一次测验的所有题目均考察过程. 没有判断填空之类的问题. 

(1) Let $ v_1, v_2, $ and $ v_3 $ be vectors in a certain linear space $ V $. Suppose that the pairs $ (v_1, v_2) $, $ (v_2, v_3) $, and $ (v_1, v_3) $ are all linearly independent. Claim: $ (v_1, v_2, v_3) $ is also linearly independent.

(2) Let $ U, V, $ and $ W $ be linear subspaces of a certain linear space. Claim: $ (U + V) \cap W $ is a subspace of $ (U \cap W) + (V \cap W) $.

(3) Let $ U $ be a proper linear subspace of $ V $. Claim: $ \mathrm{span}(V \setminus U) $ may be a proper subspace of $ V $.

(4) Let $ A $ and $ B $ be matrices of the same size. Claim: 
$$
r(A^2) + r(B^2) \geq r(AB).
$$

(5) Let $ M = \begin{pmatrix} A & B \\ C & D \end{pmatrix} $ be a block matrix such that
$$
r\begin{pmatrix} A \\ C \end{pmatrix} = r\begin{pmatrix} A & B \end{pmatrix} = r\begin{pmatrix} B \\ D \end{pmatrix} = r\begin{pmatrix} C & D \end{pmatrix}.
$$
Claim: $ r(M) = r\begin{pmatrix} A & B \end{pmatrix} $.

(6) Let $ A $ be a real square matrix. Suppose that $ x^T A x = 0 $ for any vector $ x $. Claim: $ A = O $.

(7) Let $ \mathbb{F} $ be a number field containing $ \pi $. Claim: $ \mathbb{F} = \mathbb{R} $.

(8) Claim: $ \dim N(AB) \leq \dim (N(A)) + \dim (N(B)) $​.

<div style="page-break-after: always;"></div>

##### 证明题 1

* 不选用此题的原因: 第一周的作业解答出现过类似的证明. 属于 Strang 自称不会做的题目. 

Let $ (v_1, v_2, \ldots, v_m) $ be distinct vectors in $ \mathbb{R}^d $ such that 
$$
\cos \theta_{i,j} = \frac{v_i^T \cdot v_j}{\|v_i\| \cdot \|v_j\|} \equiv C
$$
is a constant. Prove that $ m_{\max} = d + 1 $.

Since the construction of $ m = d + 1 $ is well-known, it suffices to prove that $ m \leq d + 1 $.

**Hint:** You can assume that $ \|v_i\| \equiv 1 $ for convenience. Set
$$
Q := (v_1 \quad v_2 \quad \cdots \quad v_m) \in \mathbb{R}^{d \times m}.
$$
Now consider the rank of $ Q^T \cdot Q $​.

<div style="page-break-after: always;"></div>

###### 证明题 2

* 不选用此题的原因: 这更适合作为学完 Jordan 标准型后的巩固题. 

Problem: (The decreasing sequence of rank) Let $ A \in \mathbb{F}^{n \times n} $.

(0) $ r(A^p) < r(A^q) $ whenever $ N(A^p) \subsetneq N(A^q) $. $ r(A^p) = r(A^q) $ whenever $ N(A^p) = N(A^q) $.

(1) Prove that if $ r(A) = r(A^2) $, then $ r(A) = r(A^3) $.

(2) Prove that if $ r(A^k) = r(A^{k+1}) $, then $ r(A^k) = r(A^{k+t}) $ for all $ t \in \mathbb{N} $.

(3) Give an example such that $ r(A) > r(A^2) > \cdots > r(A^{2024}) = r(A^{2025}) $.

(4) Prove that $ \{r(A^k) - r(A^{k+1})\}_{k \in \mathbb{N}} $ is also decreasing, with a limit of $ 0 $​.

<div style="page-break-after: always;"></div>

###### 证明题 3

* 不选用此题的原因: 为了让试卷少一题. (其实这题挺适合考试的). 

**Problem: (Birkhoff algorithm for bi-stochastic matrices)**

Let $ \mathbb{F} $ be a number field. All matrices are in $ \mathbb{F}^{3 \times 3} $. Let $ j $ be the column vector $ (1, 1, 1) \in \mathbb{F}^3 $.

(1) A matrix $ A $ is a permutation matrix if $ a_{i,j} $ is either $ 0 $ or $ 1 $, and $ Aj = j = A^T j $. How many permutation matrices are there in $ \mathbb{F}^{3 \times 3} $?

(2) Is $ V = \{X \mid Xj = X^T j = j\} $ a linear space? If not, find $ X_0 $ such that $ \{X - X_0 \mid X \in V\} $ is a linear space.

(3) Find the dimension of the linear space in (2).

(4) Prove that $ X \in V $ is always a linear combination of permutation matrices. Is such a combination unique?

(5) Prove that the sum of the coefficients in the linear combination from (4) equals $ 1 $​​.

<div style="page-break-after: always;"></div>

###### 奖励题 1

* 不选用此题的原因: 取消奖励题. 并且这题或许挺难的 (?), 有个数学系硕士不会做. 

(供所有题的同学消遣用) 给定五个相同大小的勾三股四弦五三角形. 不重叠地拼出一个对称图形. 

<div style="page-break-after: always;"></div>

###### 奖励题 2 

* 不选用此题的原因: 取消奖励题. 并且这题或许挺难的 (?), 有个数学系博士不会做. 

Let $ A $ and $ B $ be real matrices such that $ AB = BA $. Determine whether it is true that 
$$
r(A^2) + r(B^2) \geq 2r(AB).
$$
Counterexamples do exist!

<div style="page-break-after: always;"></div>

###### 奖励题 3

* 不选用此题的原因: 取消奖励题. 这题适合作为学完三角矩阵的特征值后的巩固题. 

Let $ \mathbb{F} $ be a number field. $ \mathrm{M}_n(\mathbb{F}) $ is the linear space of all $ n \times n $ matrices over $ \mathbb{F} $. 

(1) The trace is a linear map defined as
$$
\mathrm{tr}: \mathrm{M}_n(\mathbb{F}) \to \mathbb{F}, \quad X \mapsto \sum_{i=1}^n x_{i,i}.
$$
Show that $ V = \{Y \in \mathrm{M}_n(\mathbb{F}) \mid \mathrm{tr}(Y) = 0\} $ is a linear subspace of $ \mathrm{M}_n(\mathbb{F}) $. 

(2) Find $ \dim V $ and provide a basis for $ V $.

(3) Prove that for any $ X \in \mathrm{M}_n(\mathbb{F}) $, there exist finitely many
$$
A_1, A_2, \ldots, A_m, B_1, B_2, \ldots, B_m \in \mathrm{M}_n(\mathbb{F})
$$
such that $ X = \sum_{i=1}^m (A_i B_i - B_i A_i) $.

(4) (Bonus) Prove that $ \mathrm{tr}(A) = 0 $ if and only if there exist $ B, C \in \mathrm{M}_n(\mathbb{F}) $ such that $ A = BC - CB $. You can prove this with the following steps:

(4.1) Let $ \Lambda $ be the diagonal part of $ A $. Prove that there exists a permutation matrix $ P $ and a diagonal matrix $ D $ such that 

* $ \Lambda = P^{-1}DP - D $,
* $ D $ has distinct entries on its diagonal. 

(4.2) Consider $ A = L - U $, where $ U $ is upper triangular and $ L - D $ is strictly lower triangular. Show that $ L, D, $ and $ U $ have the same eigenvalues (counting multiplicities). Hence, there exist invertible $ R $ and $ S $ such that 
$$
R^{-1} L R = S^{-1} U S = D. 
$$

(4.3) $ A = L - U = (RS^{-1}) \cdot (SR^{-1} L) - (SR^{-1} L) \cdot (RS^{-1}) $. 

(4.4) This shows that for any sufficiently large field $ \mathbb{F} $, 
$$
\{X \in \mathrm{M}_n(\mathbb{F}) \mid \mathrm{tr}(X) = 0\} = \{AB - BA \mid A, B \in \mathrm{M}_n(\mathbb{F})\}. 
$$
Can you prove the existence of counterexamples over finite fields? 

<div style="page-break-after: always;"></div>