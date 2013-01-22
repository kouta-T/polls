Redmine::Plugin.register :polls do
  name 'Polls plugin'
  author 'Kouta Taketomi'
  description 'This is a test plugin for Redmine'
  version '0.0.1'
project_module :polls do
  permission :view_polls, :polls => :index
  permission :vote_polls, :polls => :vote
end
  menu :project_menu, :polls, { :controller => 'polls', :action => 'index' }, :caption => 'Polls', :after => :activity, :param => :project_id
end
