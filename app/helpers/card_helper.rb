# Helper methods defined here can be accessed in any controller or view in the application

module RelcyCards
  class App
    module CardHelper
      def hash_to_id(hash)
        hash
      end

      def id_to_hash(id)
        id[/.*?(\\d+)/,1]
      end

      def get_card(id)
        relcy = Relcy::Client.new("3BC6F2208B90542717470DE5278F48AE0E983C97")
        card = relcy.load_card("look:#{id}")
        card.body
      end
    end

    helpers CardHelper
  end
end
