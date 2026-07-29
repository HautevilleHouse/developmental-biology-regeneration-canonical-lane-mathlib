import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure MorphogenGradientDiffusionPackage where
  morphogen : Type u
  source : Type v
  diffusionEquation : Prop
  gradientFormation : Prop
  concentrationProfile : morphogen → Type w
  initialConditionSatisfied : Prop
  boundaryConditionSatisfied : Prop

def MorphogenGradientDiffusionClosed (M : MorphogenGradientDiffusionPackage) : Prop :=
  M.diffusionEquation ∧ M.gradientFormation ∧ M.initialConditionSatisfied ∧ M.boundaryConditionSatisfied

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse