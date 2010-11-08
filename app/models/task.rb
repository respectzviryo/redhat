class Task < ActiveRecord::Base
  belongs_to :user
  belongs_to :category

  named_scope :by_category, lambda {|category_id| {:conditions => {:category_id => category_id}}}
  named_scope :finished, :conditions => {:status => "finished"}
  named_scope :started, :conditions => "status != 'finished'"

  validate :valid?

  def valid?
    errors.add(:title, "title is empty") if title.blank?
    return errors.blank?
  end

end
