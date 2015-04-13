module ApplicationHelper
  def cache_key_for(model)
    prefix = model.to_s.downcase.pluralize
    count = model.count
    max_updated_at = model.maximum(:updated_at).utc.to_s(:number)

    "#{prefix}/all-#{count}-#{max_updated_at}"
  end
  # don't need to specify it's a helper method if in a helper class
end
