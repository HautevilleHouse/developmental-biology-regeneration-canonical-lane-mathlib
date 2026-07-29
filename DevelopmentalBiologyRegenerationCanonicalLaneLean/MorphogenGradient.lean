import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure MorphogenGradientPackage where
  sourceSecretion : Prop
  diffusionDegradation : Prop
  targetResponseThreshold : Prop
  positionalValueAssign : Prop

structure MorphogenGradientEvidence (M : MorphogenGradientPackage) where
  sourceSecretionClosed : M.sourceSecretion
  diffusionDegradationClosed : M.diffusionDegradation
  targetResponseThresholdClosed : M.targetResponseThreshold
  positionalValueAssignClosed : M.positionalValueAssign

def MorphogenGradientClosed (M : MorphogenGradientPackage) : Prop :=
  M.sourceSecretion ∧ M.diffusionDegradation ∧ M.targetResponseThreshold ∧ M.positionalValueAssign

theorem morphogen_gradient_closed_from_evidence (M : MorphogenGradientPackage) (E : MorphogenGradientEvidence M) :
    MorphogenGradientClosed M := by
  exact And.intro E.sourceSecretionClosed
    (And.intro E.diffusionDegradationClosed
      (And.intro E.targetResponseThresholdClosed E.positionalValueAssignClosed))

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse