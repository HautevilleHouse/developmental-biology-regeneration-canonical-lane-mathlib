import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure RegenerationAdmissibleObject where
  tissue : Type
  regenerationStage : Prop
  blastemaFormation : Prop
  positionalIdentity : Prop
  morphogeneticSignals : Prop

structure AdmissibleClass where
  object : RegenerationAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RegenerationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse
