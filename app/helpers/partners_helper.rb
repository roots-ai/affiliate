module PartnersHelper
def show_errors(object, field_name)
  if object.errors.any?
      object.errors.messages[field_name].join(", ")
    
  end
end 	
end
