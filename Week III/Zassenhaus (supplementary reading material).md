**A kindergarten puzzle on Zassenhaus lemma**

> Throughout, it is INVALID to take basis. 

**Example** Let $U$ and $V$ be linear subspaces. Determine (guess) what the following diagram represents.

![image-20250225185732038](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225185732038.png)

**Exercise** Prove the following identities of subspaces 

1. $(U \cap V) \cap W = U \cap (V \cap W)$; 
2. $U + V = V + U$. 

**Exercise** How would you denote the $0$-subspace and the entire vector space in the diagram? 

**Definition** Let $U^\flat \subset U \subset U^\sharp$ be inclusions of subspaces: 

![image-20250225190441689](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225190441689.png)

From now onwards, the symbol $U^\sharp$ (respectively $U^\flat$) denotes a subspace that contains (respectively is contained by) $U$ in the rest of the adventure. 

**Theorem** (**Modular identity**, recall the homework months ago) $(U^\sharp \cap V) + U^\flat = U^\sharp \cap (V + U^\flat)$. 

![image-20250225191621628](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225191621628.png)

**Exercise** Prove (in diagrams) that the subspace
$$
U^\flat + V^\sharp \cap U^\sharp + V^\flat
$$
is well-defined. In other words, there is no need to add any round brackets (parentheses in Ameliclish). 

**Hint** 

![image-20250225193731342](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225193731342.png)

**Exercise** Hunt for a prove **Isomorphism theorem A**  in *done right*, which states that 

* Let $f :U \to V$ be linear map. Then there exists an isomorphism 
  $$
  \frac U{\ker (f)} \to \mathrm{im}(f), \quad [u]\mapsto f(u), 
  $$
  where: 

  1. $U/\ker (f)$ is quotient set of $U$, the equivalence classes of $U$ characterised by the relation $[u_1 \sim u_2] \iff [u_1-u_2 \in \ker (f)]$, and 
     $$
     [u] := \{u^\prime \in U \mid u\sim u^\prime \}. 
     $$

  2. $\mathrm{im}(f)$ is the subset of $V$, where 
     $$
     [v \in \mathrm{im}(f) ]\iff [\exists \ u\in U \ (v = f(u))].
     $$

* Notice that both the quotient set $U / \ker (f)$ and the subset $\mathrm{im}(f)$ are automatically linear spaces. 

**Definition** (Quotient spaces in diagram) The rectangles are assumed to be unbounded in the left $\leftarrow$ and upward $\uparrow$ directions: 

![image-20250225195245226](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225195245226.png)

**Exercise** (**Isomorphism theorem B**) For any subspaces $U$ and $V$, there exists an isomorphism: 
$$
\frac{U + V}{U} \simeq \frac{V}{U \cap V}. 
$$
Restate the theorem in diagrams. 

> If you are very familiar with quotient sets, then it is valid to use $=$ instead of $\simeq$. However, one must write $\simeq$ in **isomorphism theorem A**, since there is an external bijection induced by $f$. 

**Exercise** (**Isomorphism theorem C**) There exists an isomorphism 
$$
\frac{U^\sharp / U^\flat}{U/ U^\flat} \simeq \frac{U^\sharp}{U}. 
$$
Restate the theorem in diagrams. 

> (Repeat) If you are familiar with quotient sets, then it is valid to use $=$ instead of $\simeq$. 

**Exercise** (**Isomorphism theorem D**) Let $U \subset V$. There is a bijective correspondence between: 

1. the subspaces of $V$ containing $U$, i.e. those $W$ such that $U \subset W \subset V$, 
2. the subspaces of $V / U$. 

**Exercise** State and prove Zassenhaus lemma 

![image-20250225205940894](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225205940894.png)

You are expected to explain how we obtain the diagram(s), quotient spaces, and all equalities (or isomorphisms, you decide).

> Once you find Zessenhaus theorem trivial, proceed with the following exercises.



**Non-kindergarten part** 

> The concept of linear maps is beyond the scope of students (precisely, babies) from kindergarten, as it concerns homomorphisms of diagrams.

**Definition** (Linear maps) A linear map is an affine transformation of diagrams, which preserves $0$. Let $f$ be a linear map. We restate the definition of image and pre-image (as mentioned in mathematical analysis, I believe) in formal and symmetric terms: 

1. (the image) $f_\ast U = \{f(u) \mid u \in U\}$, where $U$ is the subspace of the domain (domain: where $f$ starts/maps from/originates); 
2. (the inverse image) $f^\ast V = \{u \mid f(u) \in V\}$, where $V$ is the subspace of the codomain (codomain: where $f$ ends/maps to/terminates). 

**Exercise** The most elementary part of linear algebra is to study the operations $\{f_\ast, f^\ast, +, \cap\}$. It is an enjoyable time to observe how these simple operations generate identities.

Prove the following (when we write $f_\ast X$,it is assumed that the linear space $X$ is a subspace of the domain, and similarly for $f^\ast Y$): 

1. $U \subset f^\ast f_\ast U$, when does equality hold for all $U$? 
2. $f_\ast f^\ast V \subset V$, when does equality hold for all $V$? 
3. $f_\ast f^\ast f_\ast = f_\ast$,
4. $f^\ast f_\ast f^\ast = f^\ast$, 
5. $f_\ast (U + V) = f_\ast U + f_\ast V$; 
6. $f^\ast (U \cap V) = f^\ast U \cap F^\ast V$;  
7. if $f_\ast (U \cap V) = f_\ast U \cap f_\ast V$ always holds, then $f$ is surjective, does the converse hold?
8. if $f^\ast (U + V) = f^\ast U + f^\ast V$ always holds, then $f$ is injective, does the converse hold?
9. $f_\ast ((f^\ast U) \cap V) = U \cap (f_\ast V)$; 
10. $f^\ast ((f_\ast U) + V) = U + (f^\ast V)$. 

> The final two identities come from basic logical facts (guess what they are). There is an analogue known as the **projection formula** if you are familiar with sheaf theory.

**Theorem** (Zassenhaus lemma with a linear map) The following are identities and isomorphisms

![image-20250225210639380](https://cdn.jsdelivr.net/gh/czhang271828/imgs/test/image-20250225210639380.png)

