#include "fabm_driver.h"

module fabm_library
   use fabm_types, only: type_base_model_factory, type_base_model

   use fabm_builtin_models

   ! Auto-generated references to institute-specific modules with model libraries:
   use niva_model_library

   implicit none

   private

   type, extends(type_base_model_factory) :: type_factory
      contains
      procedure :: create
      procedure :: initialize
   end type

   type (type_factory), save, target, public :: fabm_model_factory

contains

   subroutine initialize(self)
      class (type_factory), intent(inout) :: self

      ! Auto-generated registration of institute-specific model libraries:
      call self%add(niva_model_factory,'niva')

      call self%add(builtin_factory)

      ! Go through default initializaton steps.
      ! This also allows new added child model factories to initialize.
      call self%type_base_model_factory%initialize()
   end subroutine initialize

   subroutine create(self, name, model)
      class (type_factory), intent(in) :: self
      character(*),         intent(in) :: name
      class (type_base_model), pointer :: model

      model => null()

      call self%type_base_model_factory%create(name,model)

      ! Store name that was used to create this model, so we can re-create it in the future.
      if (associated(model)) model%type_name = name
   end subroutine create

end module fabm_library

!-----------------------------------------------------------------------
! Copyright by the FABM team under the GNU Public License - www.gnu.org
!-----------------------------------------------------------------------
