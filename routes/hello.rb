# frozen_string_literal: true

module Routes
  class Hello < Cuba
    define do

      on root do
        # index
        on get do
          render 'hello/index'
        end

        # create
        on post do
          res.write "POST #create"
        end
      end

      # new
      on "new" do
        res.write "GET #new"
      end

      on "(\\d+)" do |id|
        on root do
          # show
          on get do
            # res.write "GET #show #{id}"
            render 'hello/show'
          end

          # update
          on put do
            res.write "PUT #update #{id}"
          end

          # destroy
          on delete do
            res.write "DELETE #destroy #{id}"
          end
        end

        # edit
        on "edit" do
          # res.write "GET #edit #{id}"
        end
      end

      on default do
        res.write "GET #default"
      end

    end
  end
end
