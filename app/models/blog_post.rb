class BlogPost < ApplicationRecord
  extend FriendlyId

  belongs_to :user

  friendly_id :slug_candidates, :use => [:slugged, :finders, :history]
  validates_presence_of :title, :subtitle, :slug, :body, :user

  after_validation :move_friendly_id_error_to_name

  default_scope do
    order(created_at: :desc)
  end

  def move_friendly_id_error_to_name
    errors.add :name, *errors.delete(:friendly_id) if errors[:friendly_id].present?
  end

  def blog_post_title_and_user
    "#{title} by @#{user.username}"
  end

  def should_generate_new_friendly_id?
    title_changed? || super
    # FriendlyId version 5 (Rails 4 compatible) doesn't regenerate slugs on save anymore.
    # To restore this functionality you can either set slug column to nil before saving
    # or use the solution provided above.
  end

  def slug_candidates
    [
      :title,
      [:title, :subtitle],
      [:title, :subtitle, :title]
    ]
  end
end
