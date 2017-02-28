class Admin::AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!

  def record_activity(note)
    @activity = ActivityLog.new
    @activity.user = current_user
    @activity.note = note
    @activity.browser = request.env['HTTP_USER_AGENT']
    @activity.ip_address = request.env['REMOTE_ADDR']
    @activity.controller = controller_name
    @activity.action = action_name
    @activity.params = params.inspect
    @activity.save
  end
end