require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe NotaryRelatedsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # NotaryRelated. As you add validations to NotaryRelated, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # NotaryRelatedsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all notary_relateds as @notary_relateds" do
      notary_related = NotaryRelated.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:notary_relateds)).to eq([notary_related])
    end
  end

  describe "GET #show" do
    it "assigns the requested notary_related as @notary_related" do
      notary_related = NotaryRelated.create! valid_attributes
      get :show, {:id => notary_related.to_param}, valid_session
      expect(assigns(:notary_related)).to eq(notary_related)
    end
  end

  describe "GET #new" do
    it "assigns a new notary_related as @notary_related" do
      get :new, {}, valid_session
      expect(assigns(:notary_related)).to be_a_new(NotaryRelated)
    end
  end

  describe "GET #edit" do
    it "assigns the requested notary_related as @notary_related" do
      notary_related = NotaryRelated.create! valid_attributes
      get :edit, {:id => notary_related.to_param}, valid_session
      expect(assigns(:notary_related)).to eq(notary_related)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new NotaryRelated" do
        expect {
          post :create, {:notary_related => valid_attributes}, valid_session
        }.to change(NotaryRelated, :count).by(1)
      end

      it "assigns a newly created notary_related as @notary_related" do
        post :create, {:notary_related => valid_attributes}, valid_session
        expect(assigns(:notary_related)).to be_a(NotaryRelated)
        expect(assigns(:notary_related)).to be_persisted
      end

      it "redirects to the created notary_related" do
        post :create, {:notary_related => valid_attributes}, valid_session
        expect(response).to redirect_to(NotaryRelated.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved notary_related as @notary_related" do
        post :create, {:notary_related => invalid_attributes}, valid_session
        expect(assigns(:notary_related)).to be_a_new(NotaryRelated)
      end

      it "re-renders the 'new' template" do
        post :create, {:notary_related => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested notary_related" do
        notary_related = NotaryRelated.create! valid_attributes
        put :update, {:id => notary_related.to_param, :notary_related => new_attributes}, valid_session
        notary_related.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested notary_related as @notary_related" do
        notary_related = NotaryRelated.create! valid_attributes
        put :update, {:id => notary_related.to_param, :notary_related => valid_attributes}, valid_session
        expect(assigns(:notary_related)).to eq(notary_related)
      end

      it "redirects to the notary_related" do
        notary_related = NotaryRelated.create! valid_attributes
        put :update, {:id => notary_related.to_param, :notary_related => valid_attributes}, valid_session
        expect(response).to redirect_to(notary_related)
      end
    end

    context "with invalid params" do
      it "assigns the notary_related as @notary_related" do
        notary_related = NotaryRelated.create! valid_attributes
        put :update, {:id => notary_related.to_param, :notary_related => invalid_attributes}, valid_session
        expect(assigns(:notary_related)).to eq(notary_related)
      end

      it "re-renders the 'edit' template" do
        notary_related = NotaryRelated.create! valid_attributes
        put :update, {:id => notary_related.to_param, :notary_related => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested notary_related" do
      notary_related = NotaryRelated.create! valid_attributes
      expect {
        delete :destroy, {:id => notary_related.to_param}, valid_session
      }.to change(NotaryRelated, :count).by(-1)
    end

    it "redirects to the notary_relateds list" do
      notary_related = NotaryRelated.create! valid_attributes
      delete :destroy, {:id => notary_related.to_param}, valid_session
      expect(response).to redirect_to(notary_relateds_url)
    end
  end

end