# frozen_string_literal: true

module Controllers
  class Template < Cuba

    define do
      on (root) do
        on(get) { index }
        on(post) { create }
      end
      on(get, 'new') { new }
      on (/(\d+)/) do |id|
        on (root) do
          on (get) { show(id) }
          on (put) { update(id) }
          on (delete) { destroy(id) }
        end
        on ('edit') { edit(id) }
      end
      on(default) { catchall }
    end

    def index
      res.write 'GET /templates #index'
    end

    def new
      res.write 'GET /templates #new'
    end

    def show(id)
      res.write "GET /templates/#{id} #show"
    end

    def edit(id)
      res.write "GET /templates/#{id}/edit #edit"
    end

    def create
      res.write 'POST /templates #create'
    end

    def update(id)
      res.write "PUT /templates/#{id} #update"
    end

    def destroy(id)
      res.write "DELETE /templates/#{id} #destroy"
    end

  end
end

