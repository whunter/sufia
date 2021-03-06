require 'spec_helper'

RSpec.describe 'curation_concerns/base/_find_work_widget.html.erb', type: :view do
  let(:work) { stub_model(GenericWork) }
  let(:form) do
    view.simple_form_for(work, url: '/update') do |work_form|
      return work_form
    end
  end
  before do
    allow(view).to receive(:current_user).and_return(stub_model(User))
    render 'curation_concerns/base/find_work_widget',
           f: form,
           id_name: 'work_child_members_ids',
           id_type: 'ordered_member_ids',
           user_email: 'foo@bar.com',
           id: '999'
  end
  it "has a widget" do
    expect(rendered).to have_selector('input[data-autocomplete-url="/authorities/search/find_works"]')
  end
end
