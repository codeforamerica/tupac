require 'spec_helper'

describe LibrariesController do

  login_user

  before(:each) do
    @library = Factory(:library)

  end


  describe "GET index" do
    it "assigns all libraries as @libraries" do
      get :index
      assigns(:libraries).should eq([@library])
    end
  end

  describe "GET show" do
    before do
      stub_request(:get, "https://api.github.com/repos/codeforamerica/cfahelloworld").
        to_return(:status => 200, :body => "", :headers => {})
    end

    it "assigns the requested library as @library" do
      get :show, {:id => @library.to_param}
      assigns(:library).should eq(@library)
    end
  end

  describe "GET new" do
    it "assigns a new library as @library" do
      get :new
      assigns(:library).should be_a_new(Library)
    end
  end

  describe "GET edit" do
    it "assigns the requested library as @library" do
      get :edit, {:id => @library.to_param}
      assigns(:library).should eq(@library)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Library" do
        expect {
          post :create, {:library => FactoryGirl.attributes_for(:library)}
        }.to change(Library, :count).by(1)
      end

      it "assigns a newly created library as @library" do
        post :create, {:library => FactoryGirl.attributes_for(:library)}
        assigns(:library).should be_a(Library)
        assigns(:library).should be_persisted
      end

      it "redirects to the created library" do
        post :create, {:library => FactoryGirl.attributes_for(:library)}
        response.should redirect_to(Library.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved library as @library" do
        # Trigger the behavior that occurs when invalid params are submitted
        Library.any_instance.stub(:save).and_return(false)
        post :create, {:library => {}}
        assigns(:library).should be_a_new(Library)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Library.any_instance.stub(:save).and_return(false)
        post :create, {:library => {}}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested library" do
        # Assuming there are no other libraries in the database, this
        # specifies that the Library created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Library.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => @library.to_param, :library => {'these' => 'params'}}
      end

      it "assigns the requested library as @library" do
        put :update, {:id => @library.to_param, :library => FactoryGirl.attributes_for(:library)}
        assigns(:library).should eq(@library)
      end

      it "redirects to the library" do
        put :update, {:id => @library.to_param, :library => FactoryGirl.attributes_for(:library)}
        response.should redirect_to(@library)
      end
    end

    describe "with invalid params" do
      it "assigns the library as @library" do
        # Trigger the behavior that occurs when invalid params are submitted
        Library.any_instance.stub(:save).and_return(false)
        put :update, {:id => @library.to_param, :library => {}}
        assigns(:library).should eq(@library)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Library.any_instance.stub(:save).and_return(false)
        put :update, {:id => @library.to_param, :library => {}}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested library" do
      expect {
        delete :destroy, {:id => @library.to_param}
      }.to change(Library, :count).by(-1)
    end

    it "redirects to the libraries list" do
      delete :destroy, {:id => @library.to_param}
      response.should redirect_to(libraries_url)
    end
  end

end
