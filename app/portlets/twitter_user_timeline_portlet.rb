class TwitterUserTimelinePortlet < Portlet

  # Mark this as 'true' to allow the portlet's template to be editable via the CMS admin UI.
  enable_template_editor true
     
  def render
    raise ArgumentError, "No Twitter Username was given" if self.username.blank?

    @items = Timline.find_or_create_by_username(self.username).get_timeline(@portlet.limit)

    instance_eval(self.code) unless self.code.blank?
  end
    
end