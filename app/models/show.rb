class Show < ActiveRecord::Base
end

def Show::highest_rating
    self.maximum(:rating)
end

def Show::most_popular_show
    # highest_rating = Show::highest_rating
    # Show.where("rating = ?", highest_rating).find {|record| record.rating == highest_rating }

    Show.order("rating DESC").first # much cleaner way to find most_popular_show
end

def Show::lowest_rating
    Show.minimum(:rating)
end

def Show::least_popular_show
    Show.order("rating").first
end

def Show::ratings_sum
    Show.sum(:rating)
end

def Show::popular_shows
    Show.where("rating > 5")
end

def Show::shows_by_alphabetical_order
    Show.order(:name)
end