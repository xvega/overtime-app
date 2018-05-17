class AuditLog < ActiveRecord::Base
  belongs_to :user

  after_initialize :set_defaults

  validates_presence_of :user_id, :status, :start_date

  private

  def set_defaults
    self.start_date ||= Date.today - 6.days
  end
end
