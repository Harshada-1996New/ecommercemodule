module ApplicationHelper
    def link_to_add_row(name,form,association,**args)
        new_obj=form.object.send(association).klass.new
        id=new_obj.object_id
        fields=form.fields_for(association,new_obj,child_index:id) do |product_fields|
         render(association.to_s.singularize,form:product_fields)
        end
        link_to(name,'#',class:"add_fields"+args[:class],data:{id:id,fields:fields.gsub("\n","")})
    end
end
