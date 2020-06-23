module PartnersHelper
    Success="Signup Successful!Please confirm your email address to continue"
    Register_confirmation="Welcome to the Sample App! Your email has been confirmed.Please sign in to continue."
    Error_message="Sorry. User does not exist"
    Warning_message="Opps! Something went wrong"
    Subject_register_confirm="Registration Confirmation"
    Subject_welcome_message="Registration Complete"


    def show_errors(object, field_name)
        if object.errors.any?
            object.errors.messages[field_name].join(", ")
        end
    end 
    
end
