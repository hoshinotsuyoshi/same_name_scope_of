require "same_name_scope_of/version"

module SameNameScopeOf
  def include_same_name_scope_of(modulo)
    include const_get(modulo.name + '::' + self.name.split('::').last)
  rescue NameError
  end

  def extend_same_name_scope_of(modulo)
    extend const_get(modulo.name + '::' + self.name.split('::').last)
  rescue NameError
  end
end
