import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyRegenerationCanonicalLaneLean

structure RegenerativeOrganoidModelPackage where
  organoidType : Type u
  scaffold : Type v
  growthFactors : Type w
  selfOrganization : Prop
  functionalMaturation : Prop
  regenerativeCapacity : Prop

structure RegenerativeOrganoidModelEvidence (R : RegenerativeOrganoidModelPackage) where
  selfOrganizationClosed : R.selfOrganization
  functionalMaturationClosed : R.functionalMaturation
  regenerativeCapacityClosed : R.regenerativeCapacity

def RegenerativeOrganoidModelClosed (R : RegenerativeOrganoidModelPackage) : Prop :=
  R.selfOrganization ∧ R.functionalMaturation ∧ R.regenerativeCapacity

theorem regenerative_organoid_model_closed_from_evidence
    (R : RegenerativeOrganoidModelPackage) (E : RegenerativeOrganoidModelEvidence R) :
    RegenerativeOrganoidModelClosed R := by
  exact And.intro E.selfOrganizationClosed
    (And.intro E.functionalMaturationClosed E.regenerativeCapacityClosed)

end DevelopmentalBiologyRegenerationCanonicalLaneLean
end HautevilleHouse