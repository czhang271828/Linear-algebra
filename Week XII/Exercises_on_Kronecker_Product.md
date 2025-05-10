**On Kronecker Product of Matrices**

**Example** Take

- $A=\begin{pmatrix}a_{11}&a_{12}\\a_{21}&a_{22}\end{pmatrix}$, - $B=\begin{pmatrix}b_{11}&b_{12}\\b_{21}&b_{22}\end{pmatrix}$, - $X=\begin{pmatrix}x_{11}&x_{12}\\x_{21}&x_{22}\end{pmatrix}$, - $Y=\begin{pmatrix}y_{11}&y_{12}\\y_{21}&y_{22}\end{pmatrix}$. 从而：

1. The matrix equation $AX=Y$ is essentially the linear system
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

2. The matrix equation $XB=Y$ is essentially the linear system
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

3. The matrix equation $AXB=Y$ is essentially the linear system
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

    wherein
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

**Exercise 1** Show that

1. $\otimes$ is an binary operation which is associative;
2. $\otimes $ is bilinear on both sides;
3. $(A\otimes B)\cdot(C\otimes D)=(A\cdot C)\otimes (B\cdot D)$.
4. $(A\otimes B)^T=A^T\otimes B^T$;
5. $\mathrm {rank}(A\otimes B)=\mathrm {rank}(A)\cdot\mathrm {rank}(B)$;
6. $\det(A\otimes B) = (\det A)^{\dim A}(\det B)^{\dim B}$.
7. $\mathrm{tr}(A\otimes B)=\mathrm{tr}(A)\mathrm{tr}(B)$.
8. Let $(\lambda, v)$ and $(\mu , u)$ be eigenpairs of $A$ and $B$, respectively. Then $A\otimes B$ has eigenpair $(\lambda \mu, v \otimes u)$.

**Exercise 2** Let $J_A$ and $J_B$ denote the Jordan form of $A$ and $B$ respectively (all matrices are in $\mathbb F^{n \times n}$).

1. Find the Jordan form of the linear transformation $X \mapsto AXA^T$;
2. Find the Jordan form of the linear transformation $X \mapsto AXA$;
3. Find the Jordan form of the linear transformation $X \mapsto AX - XA$; 
4. Find the Jordan form of the linear transformation $X \mapsto AX - XA^T$;
5. Find the Jordan form of the linear transformation $X \mapsto AXB$.

> [!TIP]
>
> We assume that $A \sim A^T$ over arbitrary field, see **Exercise 7** for a proof.

**Exercise 3** Show that $\dim \ker [X \mapsto AX - XA^T] \geq n$, and explain when the equality holds.

**Exercise 4** Show that there exists $\{0,1\}$-matrices $A$ and $B$ such that $A\otimes B$ and $B\otimes A$ are not similar.

**Exercise 5** For $A, B \in \mathbb C^{ n \times n}$, set $A \boxplus B := A \otimes I + I \otimes B$.

1. Show that $e^{A \boxplus B} = e^A \otimes e^B$.
2. Show that $\sin (A \boxplus B) = \sin A \otimes \cos B + \cos A \otimes \sin B$.
3. Review the adjacency matrices for simple graphs (the symmetric $\{0,1\}$-matrices labelled by edges). Explain the graph operations $A \otimes B$ and $A \boxplus B$.

**Exercise 6** Let $\varphi_i : U_i \to V_i$ ($i = 1,2$) be linear maps for finite dimensional vector spaces. Assume the basis of $U_i$'s and $V_i$'s are given, and so are the matrix forms of $\varphi_i$'s

1. Write down the most convenient basis of $U_1 \otimes U_2$.
2. Write down the matrix form of $\varphi _1 \otimes \varphi_2$.
3. Suppose that $U_1 = V_1$ and $U_2 = V_2$. Let $\tau : U_1 \otimes U_2 \to U_2 \otimes U_1$ be the convenient isomorphism. Write down the matrix form of $\tau \circ (\varphi _1 \otimes \varphi_2) \circ \tau$.

**Exercise 7** Show for arbitrary field $K$, one has $A \sim A^T$. Moreover, there exists a symmetric matrix $S$ such that $S^{-1}AS = A$. Show in steps that

1. By cyclic decomposition, every matrix is similar to a block diagonal matrix wherein each block is a companion matrix of some polynomial.
2. Show that any companion matrix is similar to its transpose via a symmetric matrix (see homework for the past semesters).
3. Now conclude your proof.

