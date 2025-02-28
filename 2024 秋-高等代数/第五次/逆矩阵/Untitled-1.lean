---------------------------------------------
---------------------------------------------
-- § The first course from lean. λ & logical propositions.
---------------------------------------------
---------------------------------------------













---------------------------------------------
-- Ch1-1 theorem, `and`, and λ-calculations.
---------------------------------------------

-- To create a theorem:
-- theorem thm_name (in_1 in_2 : Type) : statement := proof.

-- The following shows the basic properties of ∧-logic.

theorem and_left (p q : Prop) : p ∧ q → p :=
λx ↦ x.1
-- It shows that p ∧ q implies p
-- One can substitute λx by λ(x : p ∧ q), which means that x is of type p ∧ q (the default input).
-- Alternative approach: λx ↦ And.left x
-- Alternative approach (a single function): And.left

theorem and_right (p q : Prop) : p ∧ q → q :=
λx ↦ x.2
-- It shows that p ∧ q implies q
-- x.1 x.2 = x.left x.right.

theorem and_commutative (p q : Prop) : p ∧ q → q ∧ p :=
λx ↦ ⟨x.2,x.1⟩
-- It shows that p ∧ q implies q ∧ p.

theorem and_associative (p q r : Prop) : (p ∧ q) ∧ r → p ∧ q ∧ r :=
λx ↦ ⟨x.1.1,⟨x.1.2,x.2⟩⟩
-- It shows that (p ∧ q) ∧ r → p ∧ (q ∧ r).
-- Remember that p ∧ (q ∧ r) = p ∧ q ∧ r is right associative.











---------------------------------------------
-- Ch1-2 Create and solve the problems step-by-step.
---------------------------------------------

-- Self-training: Create a goal and solve it.
example (p q r : Prop) : p ∧ q ∧ r → r ∧ q ∧ p := by
-- Create the goal
exact λx ↦ ⟨x.2.2,⟨x.2.1,x.1⟩⟩
-- You exactly solve the goal.

-- Example: x is of type P
example (P : Prop) (x : P) : P := by
--- ↑ is the goal `show P`, ↓ is the solution.
exact x
-- One can also use instead
--   `assumption` the proof is in the assumption,
--   `trivial` the proof is trivial.

-- Example: And.
example (P Q : Prop) (x : P) (y : Q) : P ∧ Q := by
exact ⟨x,y⟩

-- Create lemma/theorems via `have`.
example (P Q R : Prop) (x : P) (y : Q) (z : R) : P ∧ Q ∧ R:= by
have lemma0 := And.intro y z
exact ⟨x, lemma0⟩

-- `assumption` divides the Goal into parts:
example (P Q R : Prop) (x : P) (y : Q) (z : R) : P ∧ Q ∧ R:= by
constructor
-- Goal_1: P; Goal_2: Q ∧ R.
trivial
-- Goal_1 is killed by `trivial`.
constructor
-- Goal_2 → Goal_3 ad Goal_4.
repeat trivial
-- Repeat the command `trivial` until it stops (detected by Lean itself).

-- `cases` divides the assumption into parts:
example (P Q : Prop) (h : P ∧ Q) : Q ∧ P := by
cases h
-- by `cases`, one has left† : P and right† : Q
constructor
repeat trivial
















---------------------------------------------
-- Ch1-3 Compositions of maps (morphisms)
---------------------------------------------

example (P C : Prop) (p: P) (f : P → C) : C := by
exact f p
-- f: p ↦ what we desired.

example (C : Prop) : C → C := by
exact λx ↦ x
-- *I am what I am*.

example (E T : Prop) : T → (E → T) ∧ (¬E → T) := by
exact λt ↦ ⟨λ_ ↦ t, λ_ ↦ t⟩

-- `_` is the place holder, where the first λ_ detects E and the second detects ¬E.
-- Truth (T) is the corollary of everything (E); conversely, False produces everything.

example (A B C : Prop) (f : A → B) (g : B → C) : A → C := by
exact g ∘ f
-- Alternatively, f ≫ g is also the composition of paths. There are errors when you use `f ≫ g` in `single file mode`.

-- ⊗-Hom Adjunction, →
example (C D S: Prop) (h : C ∧ D → S) : C → D → S := by
exact λc ↦ (λd ↦ h ⟨c,d⟩)
-- The type of the goal is C → (D → S), hence, it is of the form λc ↦ (λd ↦ (Functor(c,d))).
-- The categorical adjunction: (? ⊗ X) ⊣ Hom(X, ?).
-- Funct (C ∧ D → S) ↔ Funct (C → Funct (D → S)).
-- Alternative solutions:
-- exact λc ↦ (h ∘ And_intro c);
-- exact λc ↦ (λd ↦ h ⟨c,d⟩);
-- ...

-- ⊗-Hom Adjunction, ←
example (C D S: Prop) (h : C → D → S) : C ∧ D → S := by
exact λx ↦ (h x.1) x.2
-- The Goal is of the type C ∧ D → S.
-- ∀x : C ∧ D, we shall introduce the type ? → S.
-- Fortunately, (h x.1) has the type D → S, sending x.2 to S.

-- The ⊗-Hom Adjunction, proved by steps
example (C D S: Prop) : C ∧ D → S ↔ C → D → S := by
constructor
intro f g h
have CD : C ∧ D := ⟨g,h⟩
exact f CD
intro f g
apply f
cases g
repeat assumption
cases g
repeat assumption








---------------------------------------------
-- Ch1-4 The Or-logic, and the law of distribution (Boss)
---------------------------------------------

theorem or_left (P Q : Prop) : P → P ∨ Q :=
λx ↦ Or.inl x
-- Or.inl ∼ e₁ : X → X⨿Y
theorem or_right (P Q : Prop) : Q → P ∨ Q :=
λx ↦ Or.inr x
-- Or.inr ∼ e₂ : Y → X⨿Y

theorem or_coprod (P Q R : Prop) (f : P → R) (g : Q → R) : P ∨ Q → R :=
λx ↦ Or.elim x f g
-- Or.elim takes the triple
-- Obj : [ X⨿Y ];
-- Mor : [f : X → target], [g : Y → target]
-- to the unique morphism
-- [f⊔g : X⨿Y → target].

theorem or_switch (P Q : Prop) : P ∨ Q → Q ∨ P :=
λx ↦ Or.elim x Or.inr Or.inl
-- Obj : [P ∨ Q];
-- Mor1 : [Or.inr : P → Q ∨ P];
-- Mor2 : [Or.inl : Q → Q ∨ P].
-- The desired morphism is
-- [Matrix([0 1], [1 0]) = τ : P ∨ Q → Q ∨ P]

theorem conv (A B X Y : Prop) (f : A → X) (g : B → Y) : A ∨ B → X ∨ Y :=
λx ↦ Or.elim x (Or.inl ∘ f) (Or.inr ∘ g)
-- The convolution: (f ∗ g) : A ∨ B → X ∨ Y.

-- Distribution property G ∨ H ∧ U ↔ (G ∨ H) ∧ (G ∨ U).
theorem Distribution_2or_1and (G H U : Prop) : G ∨ H ∧ U ↔ (G ∨ H) ∧ (G ∨ U) := by
exact ⟨λh ↦ Or.elim h (λy ↦ ⟨Or.inl y, Or.inl y⟩) (λx ↦ ⟨Or.inr x.1, Or.inr x.2⟩), λh ↦ Or.elim h.1 Or.inl (λxh ↦ Or.elim h.2 Or.inl (Or.inr ∘ And.intro xh))⟩

-- example (G H U : Prop) (h : G ∨ H ∧ U) : (G ∨ H) ∧ (G ∨ U) := by
-- exact Or.elim h (λy ↦ ⟨Or.inl y, Or.inl y⟩) (λx ↦ ⟨Or.inr x.1, Or.inr x.2⟩)
-- Input: (G⨿(H∏U), f:G→Goal, g:(H∏U)→Goal), where
--   f: y ↦ [y   ∈ (G⨿H).1] and [y   ∈ (G⨿U).1];
--   g: x ↦ [x.1 ∈ (G⨿H).2] and [x.2 ∈ (G⨿U).2].
-- Operation: G⨿(H∏U) → Goal.
-- Output: Goal.
-- example (G H U : Prop) (h: (G ∨ H) ∧ (G ∨ U)) : G ∨ H ∧ U := by
-- exact Or.elim h.1 Or.inl (λxh ↦ Or.elim h.2 Or.inl (Or.inr ∘ And.intro xh))
-- Input_2 : (h.2 = G⨿H, Or.inl : G→Goal, Or.inr ∘ ⟨⅋ in H,-⟩ : H→H∧U→Goal),
-- Output_2 : A `functor` ⅋: U → Goal
-- where ⅋ is applyed to
-- Input_1 : (h.1 = G⨿U, Or.inl : G→Goal, ⅋ : U→Goal)

-- In common sense, A×(B+C)=A×B+A×C,
--                A⊗(B⊕C)=A⊗B⊕A⊗C,
--                 A∏(B⨿C)=(A∏B)⨿(A∏C), etc.
-- Yoneda: Funct(A∏(B⨿C) → ?)
--       ↔ Funct(B⨿C → Funct(A → ?))
--       ↔ Funct(B → Funct(A → ?)) ⨿ Funct(C → Funct(A → ?))
--       ↔ Funct(A∏B → ?) ⨿ Funct(A∏C → ?)
--       ↔ Funct(A∏B⨿A→∏C → ?).
-- By universal property, both sides solve the same problems, hence unique.

-- Distribution property G ∧ (H ∨ U) ↔ G ∧ H ∨ G ∧ U.

theorem Distribution_1or_2and (G H U : Prop) : G ∧ H ∨ G ∧ U ↔ G ∧ (H ∨ U) := by
exact ⟨ λh ↦ ⟨Or.elim h And.left And.left, Or.elim h (Or.inl ∘ And.right) (Or.inr ∘ And.right)⟩, λh ↦ Or.elim h.2 (Or.inl ∘ (And.intro h.1)) (Or.inr ∘ (And.intro h.1))⟩

-- example (G H U : Prop) (h : G ∧ (H ∨ U)) : G ∧ H ∨ G ∧ U := by
-- exact Or.elim h.2 (Or.inl ∘ (And.intro h.1)) (Or.inr ∘ (And.intro h.1))

-- example (G H U : Prop) (h : G ∧ H ∨ G ∧ U) : G ∧ (H ∨ U) := by
-- exact ⟨Or.elim h And.left And.left, Or.elim h (Or.inl ∘ And.right) (Or.inr ∘ And.right)⟩
-- Input: h.2 = H⨿U;
--        Or.inl ∘ ⟨g,-⟩ : H → G∏H → Goal;
--        Or.inr ∘ ⟨g,-⟩ : H → G∏U → Goal.

-- example (G H U : Prop) (h : G ∧ H ∨ G ∧ U) : G ∧ (H ∨ U) := by
-- exact ⟨⟩
-- One has ⟨s,t⟩, where

-- s : G ∧ H ∨ G ∧ U → G
-- Input_s h = (G∏H)⨿(G∏U);
--         p : G∏H → G;
--         q : G∏U → G.
-- example (G H U : Prop) (h : G ∧ H ∨ G ∧ U) : G := by
-- exact Or.elim h And.left And.left

-- t : G ∧ H ∨ G ∧ U → H ∨ U
-- Input_t h = (G∏H)⨿(G∏U);
--         p : G∏H → H⨿U;
--         q : G∏U → H⨿U.
-- example (G H U : Prop) (h : G ∧ H ∨ G ∧ U) : H ∨ U := by
-- exact Or.elim h (Or.inl ∘ And.right) (Or.inr ∘ And.right)

-- Now we Prove the distribution rule in stupid ways.
-- The following shows the us of cases.
-- Distribution property G ∨ H ∧ U ↔ (G ∨ H) ∧ (G ∨ U).

example (G H U : Prop) : G ∨ H ∧ U ↔ (G ∨ H) ∧ (G ∨ U) := by
constructor
intro h
constructor
cases h with
  | inl a => left; assumption
  | inr b => right; cases b; assumption
-- For (h : P ∨ Q), one uses
-- cases h with
--   | inl name_left  => operation_1; operation_2; ...
--   | inr name_right => operation_1; operation_2; ...
cases h with
  | inl a => left; assumption
  | inr b => right; cases b; assumption
intro h
cases h with
  | intro a b =>
-- For (h : P ∧ Q), one uses
-- cases h with
-- | intro a b =>
cases a
left
assumption
cases b
left
assumption
right
constructor
repeat assumption

-- Distribution property G ∧ (H ∨ U) ↔ G ∧ H ∨ G ∧ U.

example (G H U : Prop) : G ∧ H ∨ G ∧ U ↔ G ∧ (H ∨ U) := by
constructor
intro h
constructor
cases h with
| inl a => cases a; assumption
| inr b => cases b; assumption
cases h with
| inl a => cases a; left; assumption
| inr b => cases b; right; assumption
intro h
cases h with
| intro a b =>
cases b with
| inl p => left; constructor; repeat assumption
| inr q => right; constructor; repeat assumption

















---------------------------------------------
-- Ch1-5 False statement, and constant presheaf ¬ : X → False
---------------------------------------------

-- ¬X = [X → False]

theorem neg_False_eq_true : ¬False := by
exact λx ↦ x

-- Taking C = False in the following example
example (C : Prop) : C → C := by
exact λx ↦ x
-- , it shows the theorem neg_False_eq_true.

-- False implies everything, by `False.elim`.
example (B S : Prop)(h : ¬S) : S → B := by
exact False.elim ∘ h
-- False implies any thing (cor. the element x∈∅ has all properties).
-- (S → B) = (False → B) ∘ (S → False).
--   Goal  =  False.elim ∘     ¬S.

-- P → ¬¬ P

-- example (P : Prop) : P ↔ ¬¬P := by
-- constructor
-- exact λh ↦ λhn ↦ hn h
-- have thm : P ∨ ¬P := Classical.em P
-- intro h
-- cases thm with
-- | inl a => exact a
-- | inr b => exact h (False.elim p)




-- -- Double Negation Elimination depends on classical logic.
-- open Classical
-- by_contradiction




-- Commutativity:

-- p ∧ q ↔ q ∧ p
-- p ∨ q ↔ q ∨ p
-- Associativity:

-- (p ∧ q) ∧ r ↔ p ∧ (q ∧ r)
-- (p ∨ q) ∨ r ↔ p ∨ (q ∨ r)
-- Distributivity:

-- p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r)
-- p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r)
-- Other properties:

-- (p → (q → r)) ↔ (p ∧ q → r)
-- ((p ∨ q) → r) ↔ (p → r) ∧ (q → r)
-- ¬(p ∨ q) ↔ ¬p ∧ ¬q
-- ¬p ∨ ¬q → ¬(p ∧ q)
-- ¬(p ∧ ¬p)
-- p ∧ ¬q → ¬(p → q)
-- ¬p → (p → q)
-- (¬p ∨ q) → (p → q)
-- p ∨ False ↔ p
-- p ∧ False ↔ False
-- ¬(p ↔ ¬p)
-- (p → q) → (¬q → ¬p)
-- These require classical reasoning:

-- (p → r ∨ s) → ((p → r) ∨ (p → s))
-- ¬(p ∧ q) → ¬p ∨ ¬q
-- ¬(p → q) → p ∧ ¬q
-- (p → q) → (¬p ∨ q)
-- (¬q → ¬p) → (p → q)
-- p ∨ ¬p
-- (((p → q) → p) → p)
