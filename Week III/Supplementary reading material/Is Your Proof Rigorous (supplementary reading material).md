# Supplementary Reading Material: Is Your Proof Rigorous?

## Exercises  

* The exercises are **optional**. We highly recommend them to students who are interested in logic. 

**Definition** ([LADR4e](https://linear.axler.net/LADR4e.pdf#page=45), [in Chinese](https://linear.axler.net/LADR4eChinese.pdf#page=40)) A vector space is termed *infinite-dimensional* if it is not finite-dimensional.  

**Exercise 1** Prove the following statement independently (it means that, try it without seeing **Exercise 2**):  

- A vector space $V$ is infinite-dimensional if and only if there exists an infinite subset $S \sub V$, which is linearly independent.  

You are expected to present the proof in a meticulous manner, ensuring that each step is logically rigorous.  The *if* direction is straightforward, whereas the *only if* direction presents greater difficulty?

**Exercise 2** Now, consider the verification of the *only if* direction. Suppose you aim to establish the result by contraposition. Your assumption is as follows:  

- ($\star$) There exists no infinite subset of $V$ that is linearly independent.  

To avoid circular reasoning, one must reformulate this assumption in purely logical terms. Which of the following statements are logically equivalent to the assumption ($\star$)?  

**A.** There exists some $N \in \mathbb{N}$ such that any subset with more than $N$ elements is necessarily linearly dependent.  

**B.** There exists $N \in \mathbb{N}$ such that for any infinite sequence of vectors $(v_n)_{n \geq 1}$, the first $N$ vectors must be linearly dependent.  

**C.** For any infinite sequence of vectors $(v_n)_{n \geq 1}$, there exists some $N \in \mathbb{N}$ such that the first $N$ vectors are linearly dependent.  

**Exercise 3** Alternatively, one may prefer to prove the *only if* direction by construction. The procedure may proceed as follows:  

1. Select a nonzero vector $v_0 \in V$ so that $S_0 := \{v_0\}$ is linearly independent.  
2. For any $k \in \mathbb{N}$, given a linearly independent set $S_k = \{v_i\}_{i \leq k}$, one may always find $v_{k+1} \notin S_k$ such that $S_{k+1}:= S_k \sqcup \{v_{k+1}\}$ remains linearly independent.  

At this point, we introduce a **cautionary statement**: the set $\bigcup_{k \geq 0} S_k$ is well-defined. Prove that $\bigcup_{k \geq 0} S_k$ is linearly independent.  

## Discussion  

A subtle point, the *cautionary statement*, requires clarification: for a general $k$, one does not predetermine the remaining vectors $v_{\geq k+1}$ before selecting $v_k$. However, the crucial observation is that this algorithm does not terminate in finitely many steps. 

The construction of $\bigcup_{k \geq 0} S_k$ is an instance of what is sometimes referred to as *hard choice*. By contrast, *easy choice* applies when selecting an element from an infinite product space $\prod_{k \geq 1} V_k$. While a *hard choice* cannot be proved or disproved in general, it is often permissible to introduce it as an axiom, namely the *Axiom of Dependent Choice*.  

The Axiom of Dependent Choice is a countable version of the Axiom of Choice and lies strictly beyond the [Zermelo–Fraenkel (ZF) axioms](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory). 

## Selection of Mathematical Axioms  

- For finite structures (combinatorics, group theory, graph theory, etc.), the [ZF axioms](https://en.wikipedia.org/wiki/Zermelo%E2%80%93Fraenkel_set_theory) suffice.  
- For undergraduate-level analysis, one employs ZF together with the *Axiom of Dependent Choice*. A fundamental result in analysis—namely, that the countable union of countable sets remains countable—may initially appear counterintuitive, but it follows directly from the Axiom of Dependent Choice. Thanks to Professor Tao's course, all students have accepted this axiom.  
- In linear algebra, an additional axiom, the *Baby Hahn–Banach Axiom*, is introduced to establish the following results:  
  1. If $U \subset V$ is a subspace inclusion and $f: U \to W$ is a well-defined map, then there exists a linear extension $F: V \to W$ satisfying $F|_U = f|_U$.  
  2. If $U$ is an infinite-dimensional vector space over $\mathbb{F}$, then there exists a nonzero linear functional $f: U \to \mathbb{F}$. In other words, every finite-dimensional vector space has a complementary space. The existence of such a functional is crucial in defining the tensor product.  

If one restricts to ZF + the Axiom of Dependent Choice in linear algebra, then certain infinite-dimensional vector spaces $V$ exist for which all proper subspaces are finite-dimensional. Consequently, there exists no surjective linear map $V \to \mathbb{F}$, and the exercises of tensor products are not available (good news?).  

## A Final Caution  

**Never employ the Axiom of Choice in your assignments.**

## The Importance of Hierarchies in Mathematical Axioms  

Consider a related question: why are finite fields significant? One reason is that they provide a means to quickly identify incorrect proofs without the need for detailed scrutiny. For instance, if a proposition is valid only for number fields (but not for finite fields) and a student submits a proof that fails to distinguish between these cases, then their proof is necessarily flawed.
