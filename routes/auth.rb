module Routes
  class Auth < Cuba
    define do

      on root do
        # index
        on get do
          res.write "GET Auth #index"
        end

        # create
        on post do
          res.write "POST Auth #create"
        end
      end

      # new
      on "new" do
        res.write "GET Auth #new"
      end

      on "(\\d+)" do |id|
        on root do
          # show
          on get do
            res.write "GET Auth #show #{id}"
          end

          # update
          on put do
            res.write "PUT Auth #update #{id}"
          end

          # destroy
          on delete do
            res.write "DELETE Auth #destroy #{id}"
          end
        end

        # edit
        on "edit" do
          res.write "GET Auth #edit #{id}"
        end
      end

      on default do
        res.write "GET Auth #default"
      end

    end
  end
end
